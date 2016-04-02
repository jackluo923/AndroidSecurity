.class public Lcom/alipay/mobile/appstoreapp/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 26
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 27
    const-string/jumbo v1, "10000111"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    const-string/jumbo v2, "AppStoreApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.mobile.appstoreapp.app.AppStoreApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 28
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/MetaInfo;->addApplication(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 30
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 31
    const-class v1, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 32
    const-class v1, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 33
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 34
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 36
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 37
    const-class v1, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 38
    const-string/jumbo v1, "ExternalDownloadStatusReceiver"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 39
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.android.EXT_DOWNLOAD_EVENT_FILTER"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 41
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 43
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 44
    const-class v1, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 45
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 46
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 47
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 49
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 50
    const-class v1, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 51
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallStatusService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 52
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 53
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 56
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 57
    const-class v1, Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 58
    new-array v1, v4, [Ljava/lang/String;

    .line 59
    const-string/jumbo v2, "com.alipay.security.login"

    aput-object v2, v1, v3

    .line 58
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 60
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 62
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 63
    const-class v1, Lcom/alipay/mobile/appstoreapp/receiver/ClientStartRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 64
    const-class v1, Lcom/alipay/mobile/appstoreapp/receiver/ClientStartRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 65
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 66
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setWeight(I)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 67
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 69
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 70
    const-class v1, Lcom/alipay/mobile/appstoreapp/receiver/FrameworkInitRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 71
    const-class v1, Lcom/alipay/mobile/appstoreapp/receiver/FrameworkInitRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 72
    const-string/jumbo v1, "com.alipay.mobile.framework.INITED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 73
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setWeight(I)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 74
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 76
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 77
    const-class v1, Lcom/alipay/mobile/appstoreapp/receiver/HomeActivatedRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 78
    const-class v1, Lcom/alipay/mobile/appstoreapp/receiver/HomeActivatedRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 79
    const-string/jumbo v1, "com.alipay.mobile.PORTAL_IDLE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 80
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setWeight(I)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 81
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 82
    return-void
.end method
