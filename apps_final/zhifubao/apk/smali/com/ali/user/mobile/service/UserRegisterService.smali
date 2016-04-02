.class public interface abstract Lcom/ali/user/mobile/service/UserRegisterService;
.super Ljava/lang/Object;
.source "UserRegisterService.java"


# virtual methods
.method public abstract countryCodeRes()Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;
.end method

.method public abstract emailActivateV2(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;
.end method

.method public abstract mobileRegPreVerifyV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegisterRes;
.end method

.method public abstract sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;
.end method

.method public abstract setMobileNo(Ljava/lang/String;)V
.end method

.method public abstract supplementV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;
.end method

.method public abstract verifyEmailAndVerification(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;
.end method

.method public abstract verifyIDCardAndRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;
.end method

.method public abstract verifyMobileAndRegister(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;
.end method
