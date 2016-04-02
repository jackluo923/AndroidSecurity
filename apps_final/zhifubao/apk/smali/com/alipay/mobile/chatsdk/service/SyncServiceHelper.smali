.class public Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;
.super Ljava/lang/Object;
.source "SyncServiceHelper.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static volatile isRegistered:Z

.field private static volatile longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    const-class v1, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->LOGTAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->isRegistered:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized checkLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 29
    const-class v2, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 25
    sput-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 31
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static register()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->checkLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->LOGTAG:Ljava/lang/String;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "register chat : [ longLinkSyncService=null ][ isRegistered="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    sget-boolean v2, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->isRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->isRegistered:Z

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "chat"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->isRegistered:Z

    goto :goto_0
.end method

.method public static registerChatSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->checkLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->LOGTAG:Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "registerChatSyncCallback: [ longLinkSyncService=null ]"

    .line 58
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 63
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "chat"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 66
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static registerNewsSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->checkLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->LOGTAG:Ljava/lang/String;

    .line 75
    const-string/jumbo v1, "registerChatSyncCallback: [ longLinkSyncService=null ]"

    .line 74
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    .line 78
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "public-gplugin"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 80
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static registerRecommendSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->checkLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->LOGTAG:Ljava/lang/String;

    .line 89
    const-string/jumbo v1, "registerChatSyncCallback: [ longLinkSyncService=null ]"

    .line 88
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 93
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "public-intelrcmd"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static registerRelationSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->checkLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->LOGTAG:Ljava/lang/String;

    .line 108
    const-string/jumbo v1, "registerChatSyncCallback: [ longLinkSyncService=null ]"

    .line 107
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 111
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "public-follow"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static reportMsgReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->checkLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->LOGTAG:Ljava/lang/String;

    .line 139
    const-string/jumbo v1, "reportMsgReceived chat : [ longLinkSyncService=null ]"

    .line 138
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 144
    const-string/jumbo v1, "chat"

    .line 143
    invoke-virtual {v0, p0, v1, p1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendMsg(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->checkLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMsg chat : [ longLinkSyncService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "chat"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->sendSyncMsg(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
