.class public interface abstract Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract sendCheckCode(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.mobileapp.sendCheckCode"
    .end annotation
.end method

.method public abstract verifyCheckCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.mobileapp.verifyCheckCode"
    .end annotation
.end method

.method public abstract verifySmsAndDevice(Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceReq;)Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.mobileapp.verifySmsAndDevice"
    .end annotation
.end method
