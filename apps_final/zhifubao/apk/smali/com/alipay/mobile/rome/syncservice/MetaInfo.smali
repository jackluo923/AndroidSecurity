.class public Lcom/alipay/mobile/rome/syncservice/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 21
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 22
    const-string/jumbo v1, "LongLinkEventReceiver"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 23
    const-class v1, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 26
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    .line 27
    const-string/jumbo v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    .line 28
    const-string/jumbo v3, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 29
    const-string/jumbo v3, "com.alipay.security.login"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 30
    const-string/jumbo v3, "com.alipay.security.logout"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 31
    const-string/jumbo v3, "com.alipay.security.cleanAccount"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 32
    const-string/jumbo v3, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 33
    const-string/jumbo v3, "com.alipay.longlink.UPLINK"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 34
    const-string/jumbo v3, "com.alipay.android.broadcast.FORCE_LOGOUT_ACTION"

    aput-object v3, v1, v2

    .line 26
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 38
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncservice/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 40
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 41
    const-class v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 42
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 43
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 44
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncservice/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 46
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 47
    const-class v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 48
    const-class v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 49
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 50
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncservice/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 61
    return-void
.end method
