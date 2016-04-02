.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/sms/SmsManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract sendSms(Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.sms.sendSms"
    .end annotation
.end method

.method public abstract verifyAuthCode(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.sms.verifyAuthCode"
    .end annotation
.end method
