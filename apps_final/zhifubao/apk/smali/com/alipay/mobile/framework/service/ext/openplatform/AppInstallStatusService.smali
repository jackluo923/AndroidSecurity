.class public abstract Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallStatusService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "AppInstallStatusService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isAppAvailableById(Ljava/lang/String;)Z
.end method

.method public abstract isAppInstalledById(Ljava/lang/String;)Z
.end method
