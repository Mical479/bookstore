package com.bookstore.service.impl;

import com.bookstore.enums.CommonEnums;
import com.bookstore.vo.CommonVO;
import com.bookstore.vo.Email;
import com.sun.mail.util.MailSSLSocketFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/**
 * 类 名 称：EmailService
 * 类 描 述：邮件发送相关
 * 创建时间：2019/9/15 19:04
 * 创建人：Mical
 */
@Service
public class EmailService {

    //邮件服务器主机名
    // QQ邮箱的 SMTP 服务器地址为: smtp.qq.com
    @Value("${myEmailSMTPHost}")
    private String myEmailSMTPHost;

    //发件人邮箱
    @Value("${myEmailAccount}")
    private String myEmailAccount;

    //发件人邮箱密码（授权码）
    //在开启SMTP服务时会获取到一个授权码，把授权码填在这里
    @Value("${myEmailPassword}")
    private String myEmailPassword;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 发送邮件
     * @param toEmailAddress
     * @param emailTitle
     * @return
     */
    public CommonVO sendEmail(String toEmailAddress, String emailTitle) {

        if (!toEmailAddress.matches("^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$")){
            return new CommonVO(CommonEnums.EMAIL_NOT_RIGHT);
        }

        if (isSendOfen(toEmailAddress)){
            return new CommonVO(CommonEnums.SEND_MSG_QUILKLY);
        }

        try {
            Properties props = new Properties();
            // 开启debug调试
            props.setProperty("mail.debug", "true");
            // 发送服务器需要身份验证
            props.setProperty("mail.smtp.auth", "true");
            // 端口号
            props.put("mail.smtp.port", 465);
            // 设置邮件服务器主机名
            props.setProperty("mail.smtp.host", myEmailSMTPHost);
            // 发送邮件协议名称
            props.setProperty("mail.transport.protocol", "smtp");
            /**SSL认证，注意腾讯邮箱是基于SSL加密的，所以需要开启才可以使用**/
            MailSSLSocketFactory sf = new MailSSLSocketFactory();
            sf.setTrustAllHosts(true);
            //设置是否使用ssl安全连接（一般都使用）
            props.put("mail.smtp.ssl.enable", "true");
            props.put("mail.smtp.ssl.socketFactory", sf);

            //创建会话
            Session session = Session.getInstance(props);

            //获取邮件对象
            //发送的消息，基于观察者模式进行设计的
            Message msg = new MimeMessage(session);

            //设置邮件标题
            msg.setSubject(emailTitle);

            //设置邮件内容
            //使用StringBuilder，因为StringBuilder加载速度会比String快，而且线程安全性也不错
            StringBuilder builder = new StringBuilder();

            Email email = makeCode(toEmailAddress);
            //写入内容
            builder.append("\n" + "您正在【淘金书店】进行邮箱验证，您的验证码为：").
                    append(email.getCode()).
                    append("，请于10分钟内完成验证！");

            //写入我的官网
            builder.append("淘金小组制作");

            //定义要输出日期字符串的格式
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            //在内容后加入邮件发送的时间
            builder.append("\n时间：" + sdf.format(new Date()));

            //设置显示的发件时间
            msg.setSentDate(new Date());
            //设置邮件内容
            msg.setText(builder.toString());
            //设置发件人邮箱
            // InternetAddress 的三个参数分别为: 发件人邮箱, 显示的昵称(只用于显示, 没有特别的要求), 昵称的字符集编码
            msg.setFrom(new InternetAddress(myEmailAccount, "淘金书店", "UTF-8"));

            //得到邮差对象
            Transport transport = session.getTransport();

            //连接自己的邮箱账户
            // 密码不是自己QQ邮箱的密码，而是在开启SMTP服务时所获取到的授权码
            // connect(host, user, password)
            transport.connect(myEmailSMTPHost, myEmailAccount, myEmailPassword);
            //发送邮件
            transport.sendMessage(msg, new Address[]{new InternetAddress(toEmailAddress)});
            //将该邮件保存到本地
            OutputStream out = new FileOutputStream("MyEmail.eml");
            msg.writeTo(out);
            out.flush();
            out.close();
            //将验证码存入redis中
            redisCode(email);

            transport.close();
            return new CommonVO(CommonEnums.EMAIL_SEND_SUCCESS);
        } catch (Exception e) {
            return new CommonVO(CommonEnums.EMAIL_SEND_FAILED);
        }
    }


    /**
     * 判断email发送是否频繁
     * @param email
     * @return
     */
    private boolean isSendOfen(String email) {
        if (redisTemplate.opsForValue().get(email) == null) {
            return false;
        } else {
            Email email1 = (Email) redisTemplate.opsForValue().get(email);
            return email1.getTime() + 120 * 1000 > System.currentTimeMillis();
        }
    }

    /**
     * 随机生成6为随机数
     * @return
     */
    private Email makeCode(String email) {
        Random random = new Random();
        StringBuilder code = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            int next = random.nextInt(10);
            code.append(next);
        }
        return new Email(email, code.toString(), System.currentTimeMillis());
    }

    /**
     * 将验证码缓存到redis中，5分钟过后自动清除缓存
     * @param sms
     */
    private void redisCode(Email sms) {
        redisTemplate.opsForValue().set(sms.getEmail(), sms, 5, TimeUnit.MINUTES);
    }

    /**
     * 验证短信
     * @param code
     * @return
     */
    public boolean validSmsCode(String email, String code) {
        if (redisTemplate.opsForValue().get(email) == null) {
            return false;
        }
        Email sms = (Email) redisTemplate.opsForValue().get(email);
        if (sms.getCode().equals(code)) {
            System.out.println("短信验证成功");
            redisTemplate.delete(email);
            return true;
        }
        return false;
    }
}
