.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/devicelock/DeviceLockFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract closeDeviceLock(Lcom/alipay/mobilesecurity/core/model/devicelock/DeviceLockWithPassReq;)Lcom/alipay/mobilesecurity/core/model/devicelock/DeviceLockOperateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.deviceLock.closeDeviceLock"
    .end annotation
.end method

.method public abstract getDeviceLockCofig(Lcom/alipay/mobilesecurity/core/model/devicelock/DeviceLockReq;)Lcom/alipay/mobilesecurity/core/model/devicelock/DeviceLockOperateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.deviceLock.getDeviceLockConfig"
    .end annotation
.end method

.method public abstract openDeviceLock(Lcom/alipay/mobilesecurity/core/model/devicelock/DeviceLockReq;)Lcom/alipay/mobilesecurity/core/model/devicelock/DeviceLockOperateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.deviceLock.openDeviceLock"
    .end annotation
.end method

.method public abstract preCloseDeviceLock(Lcom/alipay/mobilesecurity/core/model/devicelock/DeviceLockReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.deviceLock.preCloseDeviceLock"
    .end annotation
.end method
