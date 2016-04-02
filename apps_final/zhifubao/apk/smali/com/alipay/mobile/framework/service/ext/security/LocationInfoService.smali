.class public abstract Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;
.end method

.method public abstract getLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract putCacheLocationInfo()V
.end method
