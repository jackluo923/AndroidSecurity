.class public interface abstract Lcom/alipay/mobilegw/biz/shared/processer/register/UserRegisterService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getSmsInMobileNo(Lcom/alipay/mobilegw/biz/shared/processer/register/getSmsInMobileNo/GetSmsInMobileNoReq;)Lcom/alipay/mobileapp/common/service/facade/register/model/GetSmsInMobileNoRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.user.register.getSmsInMobileNo"
    .end annotation
.end method

.method public abstract getSmsInNo(Lcom/alipay/mobilegw/biz/shared/processer/register/getSmsInNo/GetSmsInNoReq;)Lcom/alipay/mobileapp/common/service/facade/register/model/GetSmsInNoRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.user.register.getSmsIn"
    .end annotation
.end method

.method public abstract register(Lcom/alipay/mobilegw/biz/shared/processer/register/UserRegisterReq;)Lcom/alipay/mobileapp/common/service/facade/register/model/CommonRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.user.register"
    .end annotation
.end method

.method public abstract sendSmsCheckCode(Lcom/alipay/mobilegw/biz/shared/processer/register/smsOut/SendSmsCheckCodeReq;)Lcom/alipay/mobileapp/common/service/facade/register/model/CommonRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.user.register.sendSmsCheckCode"
    .end annotation
.end method

.method public abstract verifyCheckCode(Lcom/alipay/mobilegw/biz/shared/processer/register/smsOut/VerifySmsCheckCodeReq;)Lcom/alipay/mobileapp/common/service/facade/register/model/CommonRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.user.register.verifySmsCheckCode"
    .end annotation
.end method
