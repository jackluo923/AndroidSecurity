.class public interface abstract Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getMemerProdSyncStatus(Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileReq;)Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.register.getMemerProdSyncStatus"
    .end annotation
.end method

.method public abstract sendSmsRegistCode(Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeReq;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.register.sendSmsCheckCode"
    .end annotation
.end method

.method public abstract setMobilePayPwd(Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.register.setMobilePayPwd"
    .end annotation
.end method

.method public abstract verifyRegistCode(Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckReq;)Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.register.verifyCheckCode"
    .end annotation
.end method
