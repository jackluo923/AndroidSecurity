.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryBindMobile(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobilebind.query"
    .end annotation
.end method

.method public abstract queryUpSms(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryUpSmsReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobilebind.queryUpSms"
    .end annotation
.end method

.method public abstract sendSms(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindSmsReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobilebind.sms"
    .end annotation
.end method

.method public abstract verifyPwdAndAuthCode(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobilebind.verify.password.authcode"
    .end annotation
.end method

.method public abstract verifyPwdAndResSms(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindVerifyRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobilebind.verify.password"
    .end annotation
.end method
