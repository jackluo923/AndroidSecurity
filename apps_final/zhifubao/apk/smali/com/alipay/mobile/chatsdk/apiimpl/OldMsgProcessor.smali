.class public Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;
.super Ljava/lang/Object;
.source "OldMsgProcessor.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final OLD_PPCHAT_DATABASE:Ljava/lang/String; = "public_service.db"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    const-class v1, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOldPpchatDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    if-nez v1, :cond_0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 46
    const-string/jumbo v2, "public_service.db"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Application;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method private importOldMessageToChatexe()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 73
    const-class v2, Lcom/alipay/mobile/chatsdk/api/ChatSdkService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/ChatSdkService;

    .line 71
    const-string/jumbo v2, "20000042"

    .line 75
    const-string/jumbo v3, "forOldMsgImport"

    .line 74
    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/chatsdk/api/ChatSdkService;->getChatApi(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;

    move-result-object v2

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "\u5f00\u59cb\u62f7\u8d1d\u65e7\u6570\u636e"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->queryOldChatMessage()Ljava/util/List;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u67e5\u8be2\u5230"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6761\u65e7\u6570\u636e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 94
    :goto_1
    return v0

    .line 80
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :try_start_1
    invoke-interface {v2, v0}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;->addLegacyMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v6, "\u63d2\u5165\u6570\u636e\u5931\u8d25"

    invoke-interface {v4, v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "importOldMessageToChatexe"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 92
    goto :goto_1

    :cond_1
    move v0, v1

    .line 94
    goto :goto_1
.end method


# virtual methods
.method public importOldMessageToChat()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "\u5f00\u59cb\u6267\u884cppchat\u65e7\u6570\u636e\u62f7\u8d1d"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->importOldMessageToChatexe()Z

    move-result v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "ppchat\u65e7\u6570\u636e\u62f7\u8d1d\u6210\u529f\uff0c\u91cd\u8f7d\u7f13\u5b58\u6570\u636e"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v0, 0x1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "\u65e7\u6570\u636e\u62f7\u8d1d\u5931\u8d25"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initSummaryFromOld()V
    .locals 8

    .prologue
    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "init summary from all old chat data "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    const-string/jumbo v2, "20000042"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getAllTargetSummary(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    if-nez v0, :cond_0

    .line 179
    :goto_1
    return-void

    .line 141
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 148
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->initTab()V

    goto :goto_1

    .line 148
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    .line 149
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 151
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v4, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 155
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->targetId:Ljava/lang/String;

    .line 156
    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v1

    .line 161
    if-nez v1, :cond_5

    .line 162
    new-instance v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    invoke-direct {v1, v4, v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 164
    :goto_3
    iget v1, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    iput v1, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 165
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    :goto_4
    iput-object v1, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 166
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 167
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-wide v5, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 168
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 167
    :goto_5
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 170
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "update summary from old chat data latestMsg="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ,latestMsgTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 173
    :catch_1
    move-exception v0

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "on initSummaryFromOld Exception"

    invoke-interface {v1, v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 165
    :cond_3
    :try_start_2
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 168
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_5
    move-object v2, v1

    goto :goto_3
.end method

.method public queryOldChatMessage()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->getOldPpchatDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 103
    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "ppchatdb\u4e0d\u5b58\u5728\uff0c\u7ed3\u675f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const-string/jumbo v2, "select DISTINCT tbl_name from sqlite_master where tbl_name = \'pub_svc_message\'"

    .line 112
    const/4 v3, 0x0

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 113
    if-nez v2, :cond_1

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "pub_svc_message \u6570\u636e\u8868\u4e0d\u5b58\u5728\uff0c\u7ed3\u675f"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/chatsdk/apiimpl/OldMsgProcessor;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v5, "pub_svc_message \u6570\u636e\u8868\u4e0d\u5b58\u5728\uff0c\u7ed3\u675f"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 122
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->queryChatMessageAndDrop(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method
