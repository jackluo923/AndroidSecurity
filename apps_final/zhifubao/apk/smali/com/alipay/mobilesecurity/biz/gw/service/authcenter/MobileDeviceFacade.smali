.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/authcenter/MobileDeviceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyTid(Lcom/alipay/mobilesecurity/core/model/authcenter/TidApplyReq;)Lcom/alipay/mobilesecurity/core/model/authcenter/TidApplyRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.tid.applyTid"
    .end annotation
.end method

.method public abstract getIndex(Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexReq;)Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.index.getIndex"
    .end annotation
.end method

.method public abstract getIndexAndServerTime(Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexAndServerTimeReq;)Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexAndServerTimeRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.logic.getIndexAndServerTime"
    .end annotation
.end method

.method public abstract initApplicationOtp(Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;)Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitApplicationOtpRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileotp.initApplicationOtp"
    .end annotation
.end method

.method public abstract initDevice(Lcom/alipay/mobilesecurity/core/model/mobiletoken/MobileTokenReq;)Lcom/alipay/mobilesecurity/core/model/mobiletoken/InitDeviceRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.apply.initDevice"
    .end annotation
.end method
