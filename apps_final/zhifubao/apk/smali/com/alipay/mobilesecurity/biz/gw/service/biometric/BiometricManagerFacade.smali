.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/biometric/BiometricManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract closeBiometric(Lcom/alipay/mobilesecurity/core/model/biometric/BiometricOperateReq;)Lcom/alipay/mobilesecurity/core/model/biometric/BiometricCloseResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.biometric.closeBiometric"
    .end annotation
.end method

.method public abstract getBiometricRegRequest(Lcom/alipay/mobilesecurity/core/model/biometric/BiometricOperateReq;)Lcom/alipay/mobilesecurity/core/model/biometric/BiometricOperateResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.biometric.getBiometricRegRequest"
    .end annotation
.end method

.method public abstract getBiometricStatus(Lcom/alipay/mobilesecurity/core/model/biometric/BiometricOperateReq;)Lcom/alipay/mobilesecurity/core/model/biometric/BiometricStatusResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.biometric.getBiometricStatus"
    .end annotation
.end method

.method public abstract registerBiometric(Lcom/alipay/mobilesecurity/core/model/biometric/BiometricRegisterReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.biometric.registerBiometric"
    .end annotation
.end method
