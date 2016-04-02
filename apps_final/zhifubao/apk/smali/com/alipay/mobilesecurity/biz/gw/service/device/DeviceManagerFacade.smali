.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/device/DeviceManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract delAuthedDevicesByIds(Lcom/alipay/mobilesecurity/core/model/account/device/DelAuthedDeviceReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.device.delAuthedDevicesByIds"
    .end annotation
.end method

.method public abstract queryAuthedDeviceList(Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceReq;)Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.device.queryAuthedDeviceList"
    .end annotation
.end method
