.class public Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallStatusService;
.source "AppInstallStatusServiceImpl.java"


# static fields
.field private static a:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallStatusService;-><init>()V

    return-void
.end method

.method private static a()Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 43
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 39
    sput-object v0, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 44
    :cond_0
    sget-object v0, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    return-object v0
.end method


# virtual methods
.method public isAppAvailableById(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->isAppAvailableById(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isAppInstalledById(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->isAppInstalledById(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 30
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 35
    return-void
.end method
