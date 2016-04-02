.class public Lcom/alipay/mobile/chatsdk/meta/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "chatsdk_MetaInfo"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 35
    const-string/jumbo v0, "chatsdk_MetaInfo"

    const-string/jumbo v1, "MetaInfo: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->registerChatService()V

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->registerPublicPlatFormServiceImpl()V

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->registerLogInOutBroadcast()V

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->registerPipeline()V

    .line 47
    return-void
.end method

.method private registerChatService()V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "chatsdk_MetaInfo"

    const-string/jumbo v1, "registerChatService: [ MetaInfo ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 55
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 56
    const-class v1, Lcom/alipay/mobile/chatsdk/api/ChatSdkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 57
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 58
    return-void
.end method

.method private registerLogInOutBroadcast()V
    .locals 4

    .prologue
    .line 70
    const-string/jumbo v0, "chatsdk_MetaInfo"

    const-string/jumbo v1, "registerLogInOutBroadcast: [ MetaInfo ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 73
    const-string/jumbo v1, "LogoutInBroadcastReceiver"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 74
    const-class v1, Lcom/alipay/mobile/chatsdk/broadcastrecv/LogoutInBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 77
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.alipay.security.startlogin"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 78
    const-string/jumbo v3, "com.alipay.security.logout"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "com.alipay.security.login"

    aput-object v3, v1, v2

    .line 77
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 81
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 82
    return-void
.end method

.method private registerPipeline()V
    .locals 3

    .prologue
    .line 85
    const-string/jumbo v0, "chatsdk_MetaInfo"

    const-string/jumbo v1, "on reighser tab_launcher_activated pipeline  "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "com.alipay.mobile.PORTAL_TABLAUNCHER_ACTIVATED"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/alipay/mobile/chatsdk/meta/MetaInfo$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo$1;-><init>(Lcom/alipay/mobile/chatsdk/meta/MetaInfo;)V

    .line 98
    const-string/jumbo v2, "chatsdk_sync_register"

    .line 88
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private registerPublicPlatFormServiceImpl()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "chatsdk_MetaInfo"

    const-string/jumbo v1, "PublicPlatformService: [ MetaInfo ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 63
    const-class v1, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 64
    const-class v1, Lcom/alipay/android/phone/publicplatform/common/api/PublicPlatformService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 65
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/chatsdk/meta/MetaInfo;->addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    .line 66
    return-void
.end method
