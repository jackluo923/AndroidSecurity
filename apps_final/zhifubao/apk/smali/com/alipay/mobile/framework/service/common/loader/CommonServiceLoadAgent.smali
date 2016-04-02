.class public Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;
.super Ljava/lang/Object;
.source "CommonServiceLoadAgent.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ServicesLoader;


# instance fields
.field protected mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 36
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public final load()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->preLoad()V

    .line 55
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/TaskScheduleServiceImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 58
    const-class v0, Lcom/alipay/mobile/framework/service/common/DiskCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/DiskCacheServiceImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 61
    const-class v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/GenericMemCacheServiceImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 64
    const-class v0, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/impl/ImageMemCacheServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->registerLazyService(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-class v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->registerLazyService(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-class v0, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/impl/HttpTransportSeviceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->registerLazyService(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 76
    const-class v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/impl/DownloadServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->registerLazyService(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-class v0, Lcom/alipay/mobile/framework/service/common/TimerTaskService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 82
    const-class v0, Lcom/alipay/mobile/framework/service/common/FilePatcherService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/FilePatcherServiceImpl;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/common/impl/FilePatcherServiceImpl;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V

    .line 84
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->postLoad()V

    .line 85
    return-void
.end method

.method public postLoad()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public preLoad()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public final registerLazyService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public final registerService(Ljava/lang/String;Lcom/alipay/mobile/framework/service/MicroService;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/MicroService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 90
    return-void
.end method
