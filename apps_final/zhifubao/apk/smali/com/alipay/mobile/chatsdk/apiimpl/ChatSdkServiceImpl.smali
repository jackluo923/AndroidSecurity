.class public Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;
.super Lcom/alipay/mobile/chatsdk/api/ChatSdkService;
.source "ChatSdkServiceImpl.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static volatile isBroadcastReceiverRegistered:Z

.field private static volatile isChatSyncCbRegistered:Z

.field private static volatile isNewsSyncCbRegistered:Z

.field private static volatile isRecommendSyncCbRegistered:Z

.field private static volatile isRelationSyncCbRegistered:Z

.field private static final newsSycnCallback:Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;

.field private static final recommendSyncCallback:Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;

.field private static final relationSyncCallback:Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;

.field private static final syncCallback:Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;


# instance fields
.field private broadcastReceiver:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

.field private initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->LOGTAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->syncCallback:Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;

    .line 42
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->relationSyncCallback:Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;

    .line 43
    new-instance v0, Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->recommendSyncCallback:Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;

    .line 44
    new-instance v0, Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->newsSycnCallback:Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;

    .line 46
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isChatSyncCbRegistered:Z

    .line 47
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRelationSyncCbRegistered:Z

    .line 48
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRecommendSyncCbRegistered:Z

    .line 49
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isNewsSyncCbRegistered:Z

    .line 50
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isBroadcastReceiverRegistered:Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/api/ChatSdkService;-><init>()V

    .line 52
    new-instance v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->broadcastReceiver:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    .line 34
    return-void
.end method

.method private registerLocalBroadCastReceiver()Z
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    const-string/jumbo v1, "com.alipay.socialsdk.recentmarkread"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "com.alipay.socialsdk.recentdelete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "com.alipay.socialsdk.recentmarkunread"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "com.alipay.socialsdk.recentmarktop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "com.alipay.socialsdk.recentmarkuntop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->broadcastReceiver:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method private registerSyncCallback()V
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRelationSyncCbRegistered:Z

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->relationSyncCallback:Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->registerRelationSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRelationSyncCbRegistered:Z

    .line 76
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isChatSyncCbRegistered:Z

    if-nez v0, :cond_1

    .line 77
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->syncCallback:Lcom/alipay/mobile/chatsdk/broadcastrecv/ChatSyncCallbackImpl;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->registerChatSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isChatSyncCbRegistered:Z

    .line 81
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRecommendSyncCbRegistered:Z

    if-nez v0, :cond_2

    .line 82
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->recommendSyncCallback:Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->registerRecommendSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isRecommendSyncCbRegistered:Z

    .line 85
    :cond_2
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isNewsSyncCbRegistered:Z

    if-nez v0, :cond_3

    .line 86
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->newsSycnCallback:Lcom/alipay/mobile/publicplatform/news/NewsSycnCallbackImpl;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/service/SyncServiceHelper;->registerNewsSyncCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isNewsSyncCbRegistered:Z

    .line 88
    :cond_3
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isBroadcastReceiverRegistered:Z

    if-nez v0, :cond_4

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->registerLocalBroadCastReceiver()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isBroadcastReceiverRegistered:Z

    .line 91
    :cond_4
    return-void
.end method


# virtual methods
.method public getChatApi(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->registerSyncCallback()V

    .line 135
    invoke-static {p1, p2}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->getChatApi(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate: [ ChatSdkServiceImpl ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->registerSyncCallback()V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->initStatusCheck:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->copyOldData()V

    .line 67
    :cond_0
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy: [ ChatSdkServiceImpl ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->broadcastReceiver:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->isBroadcastReceiverRegistered:Z

    .line 115
    return-void
.end method

.method public registerChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatSdkServiceImpl;->registerSyncCallback()V

    .line 126
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->registerChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;

    move-result-object v0

    return-object v0
.end method

.method public unRegisterChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;)Z
    .locals 1

    .prologue
    .line 143
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->unRegisterChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;)Z

    move-result v0

    return v0
.end method
