package com.bookstore.service.impl;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.bookstore.enums.CommonEnums;
import com.bookstore.vo.CommonVO;
import com.bookstore.vo.Sms;
import com.google.gson.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Random;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Service
public class SmsService {

    @Value("${accessId}")
    private String accessId;

    @Value("${accessKey}")
    private String accessKey;

    @Value("${signName}")
    private String signName;

    @Value("${codeTemplate}")
    private String codeTemplate;

    @Value("${product}")
    private String product;

    @Value("${domain}")
    private String domain;

    @Autowired
    private RedisTemplate redisTemplate;

    /**
     * 根据用户输入的phone发送验证码
     *
     * @param phone 电话号码
     */
    public CommonVO sendSmsCode(String phone) {

        if (!phone.matches("^1[3|4|5|6|7|8|9][0-9]{9}$")) {
            return new CommonVO(CommonEnums.TEL_NOT_RIGHT);
        }

        //判断用户输入的电话号码是否频繁发送
        if (isSendOfen(phone)) {
            return new CommonVO(CommonEnums.SEND_MSG_QUILKLY);
        }

        Sms sms = makeCode(phone);  //制作验证码，6位随机数

        JsonObject smsJson = new JsonObject();
        smsJson.addProperty("code", sms.getCode());
        smsJson.addProperty("product", "Dysmsapi");
        SendSmsResponse sendSmsResponse = null;
        try {
            sendSmsResponse = send(phone, signName, codeTemplate, smsJson);
        } catch (ClientException e) {
            e.printStackTrace();
            return new CommonVO(CommonEnums.SEND_MSG_FAILED);
        }

        if (sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK")) {
            redisCode(sms);
            return new CommonVO(CommonEnums.SEND_MSG_SUCCESS);
        }
        return new CommonVO(CommonEnums.SEND_MSG_FAILED);
    }

    /**
     * 将验证码缓存到redis中，5分钟过后自动清除缓存
     *
     * @param sms
     */
    private void redisCode(Sms sms) {
        redisTemplate.opsForValue().set(sms.getPhone(), sms, 5, TimeUnit.MINUTES);
    }

    /**
     * 随机生成6为随机数
     *
     * @param phone
     * @return
     */
    private Sms makeCode(String phone) {
        Random random = new Random();
        StringBuilder code = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            int next = random.nextInt(10);
            code.append(next);
        }
        return new Sms(phone, code.toString(), System.currentTimeMillis());
    }

    private boolean isSendOfen(String phone) {
        if (redisTemplate.opsForValue().get(phone) == null) {
            return false;
        } else {
            Sms sms = (Sms) redisTemplate.opsForValue().get(phone);
            if (sms.getTime() + 120 * 1000 > System.currentTimeMillis()) {
                return true;
            }
            return false;
        }
    }

    /**
     * 验证短信
     *
     * @param phone
     * @param code
     * @return
     */
    public boolean validSmsCode(String phone, String code) {
        if (redisTemplate.opsForValue().get(phone) == null) {
            return false;
        }
        Sms sms = (Sms) redisTemplate.opsForValue().get(phone);
        if (sms.getCode().equals(code)) {
            System.out.println("短信验证成功");
            redisTemplate.delete(phone);
            return true;
        }
        return false;
    }

    /**
     * 发送短信
     *
     * @param phone
     * @param signName
     * @param codeTemplate
     * @param jsonObject
     * @return
     * @throws ClientException
     */
    SendSmsResponse send(String phone, String signName, String codeTemplate, JsonObject jsonObject) throws ClientException {
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessId, accessKey);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        //组装请求对象
        SendSmsRequest request = new SendSmsRequest();

        //使用post提交
        request.setMethod(MethodType.POST);
        request.setPhoneNumbers(phone);
        request.setSignName(signName);
        request.setTemplateCode("SMS_162635816");
        request.setTemplateParam(jsonObject.toString());
        request.setOutId(UUID.randomUUID().toString());
        return acsClient.getAcsResponse(request);
    }
}
