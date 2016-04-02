.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyPwdModification(Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.applyPwdModification"
    .end annotation
.end method

.method public abstract checkIdentification(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.checkIdentification"
    .end annotation
.end method

.method public abstract checkSmsCodeForResetPwd(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.checkSmsCodeForResetPwd"
    .end annotation
.end method

.method public abstract checkUserAccountAndSendSms(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserAccountRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.checkUserAccountAndSendSms"
    .end annotation
.end method

.method public abstract checkUserCert(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.checkUserCert"
    .end annotation
.end method

.method public abstract checkUserCertAndSendSMS(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.checkUserCertAndSendSMS"
    .end annotation
.end method

.method public abstract checkUserInfo(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.checkUserInfo"
    .end annotation
.end method

.method public abstract closeSimplePwd(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CloseSimplePwdReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.closeSimplePwd"
    .end annotation
.end method

.method public abstract getShowTiaoGuoBtn(Lcom/alipay/mobilesecurity/core/model/login/ShowTiaoGuoBtnReq;)Lcom/alipay/mobilesecurity/core/model/login/ShowTiaoGuoBtnRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.showTiaoGuoBtn"
    .end annotation
.end method

.method public abstract openSimplePwd(Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.openSimplePwd"
    .end annotation
.end method

.method public abstract preOpenSimplePwd(Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.preOpenSimplePwd"
    .end annotation
.end method

.method public abstract querySimplePwdStatus(Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.querySimplePwdStatus"
    .end annotation
.end method

.method public abstract resetPassword(Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.resetPassword"
    .end annotation
.end method

.method public abstract resetPasswordForFoundLogin(Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.resetPasswordForFoundLogin"
    .end annotation
.end method

.method public abstract validatePassword(Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;)Lcom/alipay/mobilesecurity/common/service/model/resp/ValidatePasswordResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.validatePassword"
    .end annotation
.end method

.method public abstract verifySmsCode(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.verifySmsCode"
    .end annotation
.end method

.method public abstract verifySmsCodeForFoundLogin(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.password.verifySmsCodeForFoundLogin"
    .end annotation
.end method
