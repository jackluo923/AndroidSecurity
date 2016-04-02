.class public Lcom/alipay/mobile/commandcenter/bundlemng/BundleUpdateService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandConfig;->initial(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->updateChannel(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->updateProductVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->updateProductId(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/commandcenter/bundlemng/NotifySuccssLoadAppListener;

    invoke-direct {v0}, Lcom/alipay/mobile/commandcenter/bundlemng/NotifySuccssLoadAppListener;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/command/manager/ListenerManager;->registerListener(Lcom/alipay/mobile/command/listener/NotifyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
