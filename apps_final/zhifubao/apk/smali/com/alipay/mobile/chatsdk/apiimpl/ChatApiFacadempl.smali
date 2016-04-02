.class public Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;
.super Ljava/lang/Object;
.source "ChatApiFacadempl.java"

# interfaces
.implements Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;


# static fields
.field public static final CHATD_START_MID:I = 0xc350

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;

.field protected chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

.field private chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    .line 62
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    .line 63
    return-void
.end method

.method private updateSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 4

    .prologue
    .line 484
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 486
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 487
    if-nez v0, :cond_0

    .line 488
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    iget-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 492
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 494
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_1

    .line 496
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 497
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessage:  update follow account show summary exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addExtMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)I
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mFrom:Ljava/lang/String;

    .line 510
    const-string/jumbo v0, "y"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isExt:Ljava/lang/String;

    .line 512
    const-string/jumbo v0, "ppchat"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    .line 513
    const-string/jumbo v0, "y"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 514
    const-string/jumbo v0, "sending"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    .line 515
    const-string/jumbo v0, "s"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatGetMaxMid()I

    move-result v0

    if-nez v0, :cond_0

    .line 518
    const v0, 0xc350

    iput v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 521
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addExtMessage:[ msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatInsertMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 525
    if-gez v0, :cond_1

    .line 526
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "addExtMessage:  chatInsertMsg failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const/4 v0, -0x1

    .line 531
    :goto_0
    return v0

    .line 530
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->updateSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    goto :goto_0
.end method

.method public declared-synchronized addLegacyMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 559
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatGetMinMid()I

    move-result v1

    .line 560
    if-nez v1, :cond_0

    .line 561
    const v1, 0xc34f

    iput v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 570
    :goto_0
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addLegacyMessage:[ msg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatInsertMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 574
    if-gez v1, :cond_2

    .line 575
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "addLegacyMessage:  chatInsertMsg failed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :goto_1
    monitor-exit p0

    return v0

    .line 562
    :cond_0
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 563
    add-int/lit8 v1, v1, -0x1

    :try_start_1
    iput v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 565
    :cond_1
    :try_start_2
    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addLegacyMessage:  chatInsertMsg failed[ minMid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-static {v2, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 579
    goto :goto_1
.end method

.method public changeExtMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 537
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "changeExtMessage:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ mData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatUpadateExtMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkFollowInfoExistAndLoad(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 657
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "check follow info exist! userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  publicId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 659
    if-nez v0, :cond_0

    .line 660
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "follow info not exist, start to load ! userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  publicId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->getInstance()Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->recordNoFollowInfoPublicId(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->getInstance()Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->loadNoFollowInfoList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clearMsgByTargetId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->deleteMsgByTargetId(Ljava/lang/String;)V

    .line 326
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    .line 329
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 330
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 331
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 347
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchClearMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_1

    .line 352
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 359
    :cond_1
    :goto_2
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "update summary "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 343
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 355
    :catch_1
    move-exception v0

    .line 356
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "clearMsgByTargetId  exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public deleteFollowAcccountShowInfo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 295
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_0

    const-string/jumbo v1, "PUBLIC"

    iget-object v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->deleteItem(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 304
    if-lez v0, :cond_1

    .line 305
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchDeleteShowItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 309
    if-lez v0, :cond_1

    .line 310
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchDeleteShowItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessage:  update follow account show summary exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteMsg(I)V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)I

    .line 369
    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v1

    .line 374
    if-eqz v1, :cond_0

    .line 377
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    if-nez v2, :cond_3

    .line 380
    :cond_2
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    iput v0, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 382
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 383
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 393
    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->followObjectId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 396
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessage:  update follow account show summary exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 385
    :cond_3
    :try_start_1
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v2}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 386
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v2, v2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 387
    iget v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    iput v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 388
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v2, v2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 389
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v0}, Lcom/alipay/mobile/publicplatform/relation/RelationUtils;->calculateMsgTime(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 390
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public deleteMsgByBMsgId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 407
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 418
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->deleteMsg(I)V

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteMsgByBMsgId : Integer.valueOf(bMsgId) "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteMsgByTargetId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method public deleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 285
    if-eqz p2, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetIdAndExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteMsgByTargetIdWithMBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method public disturbSwitch(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 615
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateDisturb(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 616
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getPpchatDaoInstance()Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;

    move-result-object v1

    .line 617
    if-eqz p1, :cond_1

    const-string/jumbo v0, "ON"

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    .line 616
    invoke-interface {v1, v0, p2, v2}, Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;->updatePubSvcSetPushSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_0

    .line 620
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 621
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V

    .line 628
    :cond_0
    :goto_1
    return-void

    .line 617
    :cond_1
    const-string/jumbo v0, "OFF"
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public feedsMsgCount(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 672
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->feedsMsgCount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFeedsSummary()Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    .locals 4

    .prologue
    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getLastFeedsSummary(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 609
    :goto_0
    return-object v0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastFeedsSummary:[ targetId= [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastSummaryForAllTarget()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/TargetSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getLastSummaryForAllTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u67e5\u8be2\u6240\u6709\u516c\u4f17\u53f7\u6700\u65b0\u7684\u6458\u8981\u4fe1\u606f\u53d1\u751f\u5f02\u5e38[ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 428
    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]  [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    .locals 4

    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastSummeryForTarget: \u67e5\u8be2\u6700\u65b0\u7684\u6458\u8981\u4fe1\u606f\u53d1\u751f\u5f02\u5e38 [ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]  [ targetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 442
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ targetExtra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ] [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public markChatListEntryReaded()V
    .locals 3

    .prologue
    .line 709
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V

    .line 710
    return-void
.end method

.method public markFeedsMessageReaded()V
    .locals 4

    .prologue
    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkFeedsMsgReaded(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchFeedsReaded(Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "markFeedsMessageReaded:[ targetId= [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public markLastMessageUnread(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgUnread(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markMsgReaded(I)V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgReaded(Ljava/lang/String;Ljava/lang/String;I)I

    .line 218
    return-void
.end method

.method public markMsgReadedByTargetId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 224
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 227
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->markUnReadMsgCount:I

    .line 228
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgReadedByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 233
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "markMsgReadedByTargetId:[ targetId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public markMsgUnReadedByTargetId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 245
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->markUnReadMsgCount:I

    .line 248
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 249
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 252
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "markMsgReadedByTargetId:[ targetId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryLocalMsg(Ljava/lang/String;IIIZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryLocalMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5206\u9875\u67e5\u8be2\u672c\u5730\u6d88\u606f\u5f02\u5e38\u3002 mAppId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    const-string/jumbo v3, "] mUserId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryLocalMsg(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryLocalMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5206\u9875\u67e5\u8be2\u672c\u5730\u6d88\u606f\u5f02\u5e38\u3002 mAppId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
    const-string/jumbo v3, "] mUserId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryLocalMsgByLastId(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryLocalMsgByLastId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6309\u6700\u540eID\u67e5\u8be2\u672c\u5730\u6d88\u606f\u5f02\u5e38\u3002 mAppId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    const-string/jumbo v3, "] mUserId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryLocalMsgByLocalId(I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 208
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6839\u636elocalMsgId\u67e5\u8be2\u6d88\u606f\u5f02\u5e38\u3002 mAppId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    const-string/jumbo v3, "] mUserId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    return-object v0
.end method

.method public queryLocalMsgOffset(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryLocalMsgOffset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5206\u9875\u67e5\u8be2\u672c\u5730\u6d88\u606f\u5f02\u5e38\u3002 mAppId=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    const-string/jumbo v3, "] mUserId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  [ Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized reSendMessage(I)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 117
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reSendMessage:[ localMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 121
    if-nez v1, :cond_0

    .line 122
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "reSendMessage:[ chatQueryMessage failed msg=null ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v0

    .line 141
    :goto_0
    monitor-exit p0

    return p1

    .line 126
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    const-string/jumbo v3, "sending"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "reSendMessage:[ status already sending ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 129
    goto :goto_0

    .line 133
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    const-string/jumbo v4, "sending"

    .line 133
    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatSetMsgStatusByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mFrom:Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->sendMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetEntryMergeItem()V
    .locals 3

    .prologue
    .line 714
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V

    .line 715
    return-void
.end method

.method public retryLoadFail()V
    .locals 2

    .prologue
    .line 703
    invoke-static {}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->getInstance()Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/broadcastrecv/ReTryHelper;->retry(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public declared-synchronized sendExtMessage(I)I
    .locals 4

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendExtMessage:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryExtMessage(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 467
    if-nez v0, :cond_0

    .line 468
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "sendExtMessage:  chatQueryExtMessage failed[ msg=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    const/4 v0, -0x1

    .line 480
    :goto_0
    monitor-exit p0

    return v0

    .line 473
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatClearExtMessageIsExt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 475
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mFrom:Ljava/lang/String;

    .line 478
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->sendMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    const/4 v0, 0x0

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)I
    .locals 4

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->appId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mFrom:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "ppchat"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "y"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "sending"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "s"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->localTime:Ljava/util/Date;

    .line 87
    iget-wide v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatGetMaxMid()I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const v0, 0xc350

    iput v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 95
    :cond_1
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendMessage:[ msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatMsgDbManager:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatInsertMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 99
    if-gez v0, :cond_2

    .line 100
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendMessage:  chatInsertMsg failed[ msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const/4 v0, -0x1

    .line 111
    :goto_0
    monitor-exit p0

    return v0

    .line 105
    :cond_2
    :try_start_1
    iput v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 107
    invoke-direct {p0, p1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->updateSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    .line 109
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgSend;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->sendMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnChatList(Z)V
    .locals 1

    .prologue
    .line 719
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->setOnChatList(Z)V

    .line 720
    return-void
.end method

.method public top(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 678
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->setTop(Ljava/lang/String;Ljava/lang/String;J)V

    .line 679
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->vip:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "FollowAccountBiz"

    const-string/jumbo v3, "cancel top  "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unTop(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 691
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->calcelTop(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 693
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->vip:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "FollowAccountBiz"

    const-string/jumbo v3, "cancel top  "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateLastOperateTime(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 637
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 638
    if-nez v0, :cond_0

    .line 639
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    iput-wide p2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->lastOperateTime:J

    .line 642
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 644
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_1

    .line 646
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 647
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_1
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
