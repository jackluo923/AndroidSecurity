.class public Lcom/alipay/mobile/framework/service/ClientServicesLoader;
.super Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;
.source "ClientServicesLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;-><init>()V

    return-void
.end method


# virtual methods
.method public postLoad()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 91
    const-class v2, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 92
    new-instance v3, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;

    invoke-direct {v3, v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/CacheManagerServiceImpl;-><init>(Lcom/alipay/mobile/framework/service/common/DiskCacheService;Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;)V

    .line 91
    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 95
    const-class v0, Lcom/alipay/mobile/framework/service/common/SecurityDiskCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/impl/SecurityDiskCacheServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->registerLazyService(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-class v0, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/impl/CachedHttpTransportServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->registerLazyService(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.framework.service.common.impl.RpcServiceImpl"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->registerLazyService(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-class v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 103
    const-class v0, Lcom/alipay/mobile/framework/service/common/ShortLinkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/impl/ShortLinkServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->registerLazyService(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-class v0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigServiceImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 112
    const-class v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/base/config/impl/ChannelConfigImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/base/config/impl/ChannelConfigImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 115
    const-class v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 119
    const-class v1, Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;

    new-instance v2, Lcom/alipay/mobile/base/rpc/impl/LoginInterceptor;

    invoke-direct {v2}, Lcom/alipay/mobile/base/rpc/impl/LoginInterceptor;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    .line 120
    const-class v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    new-instance v2, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;

    invoke-direct {v2}, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    .line 121
    const-class v1, Lcom/alipay/mobile/framework/service/annotation/UpdateDeviceInfo;

    new-instance v2, Lcom/alipay/mobile/base/rpc/impl/CtuInterceptor;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ClientServicesLoader;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/base/rpc/impl/CtuInterceptor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    .line 122
    return-void
.end method

.method public preLoad()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 60
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    .line 61
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    aput-object v2, v1, v4

    .line 62
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    aput-object v2, v1, v3

    .line 63
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)"

    aput-object v2, v1, v5

    .line 64
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onWindowFocusChanged(boolean)"

    aput-object v2, v1, v6

    .line 65
    new-instance v2, Lcom/alipay/mobile/aspect/advice/ActivityPerformanceAdvice;

    invoke-direct {v2}, Lcom/alipay/mobile/aspect/advice/ActivityPerformanceAdvice;-><init>()V

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    .line 69
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    aput-object v2, v1, v4

    .line 70
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    aput-object v2, v1, v3

    .line 71
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    aput-object v2, v1, v5

    .line 72
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    aput-object v2, v1, v6

    .line 73
    new-instance v2, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;

    invoke-direct {v2}, Lcom/alipay/mobile/aspect/advice/TitleBarAdvice;-><init>()V

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 76
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    .line 77
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    aput-object v2, v1, v4

    .line 78
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    aput-object v2, v1, v3

    .line 79
    new-instance v2, Lcom/alipay/mobile/aspect/advice/UploadLocationAdvice;

    invoke-direct {v2}, Lcom/alipay/mobile/aspect/advice/UploadLocationAdvice;-><init>()V

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 82
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->autoTrackPage(Z)V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->autoTrackClick(Z)V

    .line 84
    return-void
.end method
