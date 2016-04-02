.class public Lcom/alipay/mobile/chatsdk/msg/MsgSend;
.super Ljava/lang/Object;
.source "MsgSend.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final MSG_RETRY_INTVL:I = 0x4

.field private static final MSG_RETRY_TIMES:I = 0x5

.field private static volatile mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile mInstance:Lcom/alipay/mobile/chatsdk/msg/MsgSend;

.field private static final mLocalMsgIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    const-class v1, Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->LOGTAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mLocalMsgIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mInstance:Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mInstance:Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mInstance:Lcom/alipay/mobile/chatsdk/msg/MsgSend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isTaskEmpty()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mLocalMsgIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private submitMsg(Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;)V
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->submitMsg(Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;II)V

    .line 176
    return-void
.end method

.method private declared-synchronized submitMsg(Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;II)V
    .locals 7

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "submitMsg:[ timeIntvl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ tryTimes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ TunnelMessageUp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v1, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;

    invoke-direct {v1, p0, p1, p3}, Lcom/alipay/mobile/chatsdk/msg/MsgSend$MsgSendTask;-><init>(Lcom/alipay/mobile/chatsdk/msg/MsgSend;Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;I)V

    .line 186
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "submitMsg:[ newSingleThreadScheduledExecutor restart]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend$ChatSendThreadFactory;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgSend$ChatSendThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 190
    sput-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 196
    const-wide/16 v2, 0x0

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 195
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mLocalMsgIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submitMsg: [ scheduleAtFixedRate ] [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancelAllSendingMsg()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "cancelAllSendingMsg:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 71
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mLocalMsgIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 72
    return-void
.end method

.method public cancelSendMsg(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancelSendMsg: [ tunnelmId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mLocalMsgIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 126
    sget-object v0, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mLocalMsgIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    return-void
.end method

.method public declared-synchronized sendMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 4

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;-><init>()V

    .line 83
    new-instance v1, Lcom/alipay/mobile/chatsdk/api/MessagePayload;

    invoke-direct {v1}, Lcom/alipay/mobile/chatsdk/api/MessagePayload;-><init>()V

    .line 85
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mSum:Ljava/lang/String;

    .line 86
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mType:Ljava/lang/String;

    .line 87
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mExt:Ljava/lang/String;

    .line 88
    iget-wide v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    iput-wide v2, v1, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->bTime:J

    .line 89
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isP:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->isP:Ljava/lang/String;

    .line 90
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mData:Ljava/lang/String;

    .line 91
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->mFrom:Ljava/lang/String;

    .line 93
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->appId:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/msg/MsgHelper;->makeTunnelmId(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->mId:Ljava/lang/String;

    .line 95
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->shopId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->shopId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->toId:Ljava/lang/String;

    .line 100
    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->pl:Ljava/lang/String;

    .line 102
    sget-object v1, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendMsg: [ tunnelMsg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->mLocalMsgIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendMsg: already in sending[ tunnelMsg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_1
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_1
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;->toId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->submitMsg(Lcom/alipay/mobile/chatsdk/model/TunnelMessageUp;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
