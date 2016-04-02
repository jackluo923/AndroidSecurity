.class public interface abstract Lcom/alipay/aliusergw/biz/shared/facade/MobileRegFacade;
.super Ljava/lang/Object;
.source "MobileRegFacade.java"


# virtual methods
.method public abstract emailActivateV2Processer(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.register.emailActivateAndRegister"
    .end annotation
.end method

.method public abstract getCountyCode(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.register.countryCodeProcesser"
    .end annotation
.end method

.method public abstract mobileRegPreVerifyV3(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.register.mobileRegPreVerifyV3"
    .end annotation
.end method

.method public abstract register(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.register.registerProcesser"
    .end annotation
.end method

.method public abstract sendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SendSmsGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.sms.sendSms"
    .end annotation
.end method

.method public abstract supplementV2(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/SupplementReq;)Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.register.completeProcesserV2"
    .end annotation
.end method

.method public abstract verifyEmailAndVerification(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.register.verifyEmailAndVerification"
    .end annotation
.end method

.method public abstract verifyIDCardAndRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.register.verifyIDCardAndRegister"
    .end annotation
.end method

.method public abstract verifyMobileAndRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusReq;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "ali.user.gw.register.verifyMobileAndRegister"
    .end annotation
.end method
