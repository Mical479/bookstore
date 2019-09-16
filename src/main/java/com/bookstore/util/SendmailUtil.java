package com.bookstore.util;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.util.MailSSLSocketFactory;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

public class SendmailUtil {

    //邮件服务器主机名
    // QQ邮箱的 SMTP 服务器地址为: smtp.qq.com
    private static String myEmailSMTPHost = "smtp.qq.com";

    //发件人邮箱
    private static String myEmailAccount = "micalyang@qq.com";

    //发件人邮箱密码（授权码）
    //在开启SMTP服务时会获取到一个授权码，把授权码填在这里
    private static String myEmailPassword = "zajozwaddmorcjfi";

    /**
     *     * 邮件单发（自由编辑短信，并发送，适用于私信）
     *     *
     *     * @param toEmailAddress 收件箱地址
     *     * @param emailTitle 邮件主题
     *     * @param emailContent 邮件内容
     *     * @throws Exception
     *    
     */
    public static void sendEmail(String toEmailAddress, String emailTitle, String emailContent) throws Exception {

    }
}
