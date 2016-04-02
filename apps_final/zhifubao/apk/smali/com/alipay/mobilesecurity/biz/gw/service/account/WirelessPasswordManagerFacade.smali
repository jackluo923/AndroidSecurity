.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract isWirelessUser(Lcom/alipay/mobilesecurity/core/model/mainpage/password/IsWirelessUserReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.wirelesspassword.isWirelessUser"
    .end annotation
.end method

.method public abstract openSimplePwd(Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.wirelesspassword.openSimplePwd"
    .end annotation
.end method

.method public abstract openSimplePwdNotLogin(Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.wirelesspassword.openSimplePwdNotLogin"
    .end annotation
.end method

.method public abstract preCheckAndSendSms(Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.wirelesspassword.preCheckAndSendSms"
    .end annotation
.end method

.method public abstract preCheckAndSendSmsNotLogin(Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.wirelesspassword.preCheckAndSendSmsNotLogin"
    .end annotation
.end method

.method public abstract validateSimplePassword(Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.wirelesspassword.validateSimplePassword"
    .end annotation
.end method

.method public abstract verifySmsAndUserStatus(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.wirelesspassword.verifySmsAndUserStatus"
    .end annotation
.end method

.method public abstract verifySmsAndUserStatusNotLogin(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.wirelesspassword.verifySmsAndUserStatusNotLogin"
    .end annotation
.end method
