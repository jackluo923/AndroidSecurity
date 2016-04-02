.class public abstract Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addDeviceInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;)Z
.end method

.method public abstract generateDid(Lcom/alipay/mobile/framework/service/ext/security/DeviceCallBack;)V
.end method

.method public abstract queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
.end method

.method public abstract queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;
.end method
