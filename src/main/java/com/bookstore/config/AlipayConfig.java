package com.bookstore.config;

/* *
 *类名：AlipayConfig
 *作者：Rachel
 */

public class AlipayConfig {

    //应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101000652145";

    //商户私钥，您的PKCS8格式RSA2私钥   私钥
    public static String private_key ="MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCNnaE6AOOFH93Hoh9wv5AqOyjmY6GTaK/vBqiSTZbuXy9tV1XUzYFlLas0srIFZf/e9+emgqr1OWj3ZGXKw3eUtqvjhKfgAJx+k2KDOqiwV4LDGUOHOHKNhQP2zLeNqMNp94O9Zwn1FxP1lEaJACsl7q13qsd3O+bsZDjZRjWLs6PqUoV4p09HVvFbr1Jy83Mpm+6sw3oOkmzxCfi3fT0kTU5mczcoq7GjSxq0wTMVIzAUx0Gfdl3nycu0+DG43Yp5Y2L9ZX0zOElDeh8XzP+7td44Ry5MCG+simmjyVtf2KjPOmYsnE89Mr1XnCNEBzhXIb/1fHGrFQR6PaYjnN47AgMBAAECggEAZhmprfoKD2bELTQz2sQiGnCAsmpOicrGXVy9mI2cLcwuk3SOC1kG232rm9jiBIZfjc/KEgDPZPG5PfQCd8eppWx2TRjNN/D440E7m0VlbY4KVsMWLp2B6YpnKz65b8am7PVo49swEKZM25fFquyWL0j/g/F60fo8KV6wpeW6oTcU9h8fCfMXyXA96gnDuEmNzPrr7wkpkYhuSVQ/Le73ECXJVOaOACGHw41fGSVcz1tj5w3I/yXUnfr+0Ok2eQMaRWL14sk3xubf07gVx0+m3LA9750+qE9Z61Vyr/D1OvMpEjE6L1CyJtqsTevrYVG5ACAVOqUXtva63PVVyMCcgQKBgQDToPplFYawF+VVtgKW1MOKUfR9YdaqlihhXVhycd0o9pWx+WicAtt/Qjf8FKlhW261BWNop/R0SNHl15jFePtGjzAX2toYt1r0zZCc37cRJCvD3blpFqVxUB/IJ38Ms/PPQQsGGAVoSKCy2kenR7BsfwZRX3vD76QNPUupZaeXWwKBgQCrTsA+PtC6xVZ03+BjqXipbWdEVZ09EpEe6NyCEQ8nLcnZztvB2aDHdGknXgB9V3ySMUliw05bNGjQuWhxFMfXGOhYUBfNVQZfZtb7W5ZheSCyr8tGHaJZrtPb34Gj6ynBda7sb5iYcLa8dNrlyA9wioE9T5Ep4/nsMqktIpFqoQKBgQCeWd/Cb17+uIKjpbM+RSmjgDte7iyALCc+42fhCo4frpLIPwUlZ4XyLQxTFOrArHej/8oobzQdJrfYMYBgkmwCmfW0g8+Zmuj2MDK7DzKeIuCUiH3JwmY86WU+kT8htC0EsXicMLErHN0Rtv7SjnPWWx3RGY80R0YLmgfZUvUZ7QKBgBU660RLkJ60+iP94tc3F4cX0eZ8HcKF3IpSHZHY/2HBoPRnWIDLsctGOAny8miWQQ/1H70nqzxOYHcNo03wX1ve8FyRgIGn+eQ04IvCK/7kfhLnCnAkGAy5R/RF3NEtwb0CEq2mnui1f1AXw1Ea3B78a0vn4nuojz6ggKrhT9hBAoGAA75Zwrtrv+0G/QkikIrmwJj/W2u26mpCkhohLl4rsrnoqxnzlrWCgDmDK/Qj9S5ldtrdlZY6srRvEgN+ZU4HAxZ0hV5vkI2B4smW11xwKklN3zVxAbQOvLgFH2fX9bKMufiv0HDWy/KwVIqYoE4PFWxV4iYYQJDAWKuYWbQZY5U=";

    //Controller Mapping:得放到服务器上，且使用域名解析 IP
    public static String notify_url = "/127.0.0.1";

    //Controller Mapping:得放到服务器上，且使用域名解析 IP
    public static String return_url = "/returnUrl";

    // 支付宝网关（注意沙箱alipaydev，正式则为 alipay）
    public static String url = "https://openapi.alipaydev.com/gateway.do";

    public static String charset = "UTF-8";

    public static String format = "json";

    //RSA2 支付宝公钥
    public static String public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiMXpdppoLu54PegpOCfiTyQkVuCHogewsdkw1UdULGe9A8gWSr31A5AK5LevSLKG8N4PcAQJWcf7aaFmn/HCMozvPSq7lBUR9dYz/x8ONaHoOce4ZBSiBKrl3dyhOehn4IdaAdA4KaU3QVaa9gU6aVTH1as1GBb9rcpm9KBpz0yzVxoLWOLiYfkaSCbZzf6zNJTnjL0/O0ETnHz9SADyHCfgC31NsD71J2FzF4FfVlVlGBttkF1uOgow57Q5TNAmwql02hgnGSVVxa3jduIYcD+oJC13WJ2dvsmjj2420eZTVFucBKsEG09qeHfzDki5uVpOD5MwHPL0b/w3FpM9WwIDAQAB";

    public static String signtype = "RSA2";


}