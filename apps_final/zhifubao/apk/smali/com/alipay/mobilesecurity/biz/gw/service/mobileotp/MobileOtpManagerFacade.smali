.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/mobileotp/MobileOtpManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract batchSync(Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenBatchSyncReq;)Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileotp.batchsync"
    .end annotation
.end method

.method public abstract closeMobileToken(Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileotp.close"
    .end annotation
.end method

.method public abstract initDeviceOtp(Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;)Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileotp.initDeviceOtp"
    .end annotation
.end method

.method public abstract isMobileOtpUser()Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileOtpRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileotp.isMobileOtpUser"
    .end annotation
.end method

.method public abstract openMobileToken(Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;)Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileotp.open"
    .end annotation
.end method

.method public abstract preConditionCheck(Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenPreCheckReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileotp.precondition.check"
    .end annotation
.end method

.method public abstract queryToken(Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;)Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileotp.query"
    .end annotation
.end method

.method public abstract timeCalibration()Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenTimeRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileotp.calibration.time"
    .end annotation
.end method
