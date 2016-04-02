.class public Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;
.super Ljava/lang/Object;
.source "BadgeBizCallbackProcessor.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# static fields
.field private static final BIZ_TYPE_PERSISTENT:Ljava/lang/String; = "RP-BPM"

.field private static final BIZ_TYPE_TEMPORARY:Ljava/lang/String; = "RP-BTM"

.field private static INSTANCE:Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->context:Landroid/content/Context;

    .line 42
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iput-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 43
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->INSTANCE:Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;

    invoke-direct {v0}, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;-><init>()V

    sput-object v0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->INSTANCE:Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->INSTANCE:Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processBadgeMsg(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 100
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 135
    return-void

    .line 102
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    new-instance v3, Lorg/json/JSONObject;

    const-string/jumbo v4, "pl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string/jumbo v4, "op"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    const-class v4, Lcom/alipay/android/launcher/badge/BadgePojo;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    .line 111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    const-string/jumbo v0, "modify"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->upateRemoteBadgeInfo(Ljava/util/List;)V

    .line 101
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 112
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/badge/BadgePojo;

    .line 113
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/launcher/badge/BadgePojo;->getCount()I

    move-result v6

    if-ltz v6, :cond_1

    .line 114
    new-instance v6, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;

    .line 117
    invoke-virtual {v0}, Lcom/alipay/android/launcher/badge/BadgePojo;->getBadgePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alipay/android/launcher/badge/BadgePojo;->getCount()I

    move-result v8

    .line 118
    invoke-virtual {v0}, Lcom/alipay/android/launcher/badge/BadgePojo;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->fromString(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    move-result-object v0

    .line 116
    invoke-direct {v6, v7, v8, v0}, Lcom/alipay/mobile/mpass/badge/model/BadgeInfo;-><init>(Ljava/lang/String;ILcom/alipay/mobile/mpass/badge/model/BadgeStyle;)V

    .line 120
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_4
    const-string/jumbo v0, "add"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->insertRemoteBadgeInfo(Ljava/util/List;)V

    goto :goto_2

    .line 128
    :cond_5
    const-string/jumbo v0, "delete"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->deleteRemoteBadgeInfo(Ljava/util/List;)V

    goto :goto_2
.end method


# virtual methods
.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceiveCommand:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->commandData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public declared-synchronized onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 4

    .prologue
    .line 79
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "onReceiveCommand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :try_start_2
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->processBadgeMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public register()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "register"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "RP-BTM"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "RP-BPM"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 66
    :cond_0
    return-void
.end method

.method public declared-synchronized updateUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iput-object p1, p0, Lcom/alipay/android/launcher/badge/BadgeBizCallbackProcessor;->userId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
