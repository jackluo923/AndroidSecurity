.class public Lcom/alipay/mobile/publicplatform/news/NewsRecv;
.super Ljava/lang/Object;
.source "NewsRecv.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NewsRecv"

.field public static final WHOLE_MSG_BIZ_TYPE:Ljava/lang/String; = "public-gplugin"

.field private static instance:Lcom/alipay/mobile/publicplatform/news/NewsRecv;


# instance fields
.field private longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private newsBiz:Lcom/alipay/mobile/publicplatform/news/NewsBiz;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/alipay/mobile/publicplatform/news/NewsBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/news/NewsBiz;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->newsBiz:Lcom/alipay/mobile/publicplatform/news/NewsBiz;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/publicplatform/news/NewsRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->processNewsMsg(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/publicplatform/news/NewsRecv;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->instance:Lcom/alipay/mobile/publicplatform/news/NewsRecv;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/alipay/mobile/publicplatform/news/NewsRecv;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/news/NewsRecv;-><init>()V

    sput-object v0, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->instance:Lcom/alipay/mobile/publicplatform/news/NewsRecv;

    .line 51
    :cond_0
    sget-object v0, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->instance:Lcom/alipay/mobile/publicplatform/news/NewsRecv;

    return-object v0
.end method

.method private isAcceptMsg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 195
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    const-string/jumbo v2, "sina_news"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-boolean v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->acceptMsg:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "RelationUtils"

    const-string/jumbo v3, "load baseInfo exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 217
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 213
    iput-object v0, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    return-object v0
.end method

.method private processNewsLoad(Ljava/lang/String;Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/publicplatform/news/WholeMsgGlobalNotice;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 152
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsRecv"

    const-string/jumbo v2, "notice is null or  tunnelMsg is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p3, Lcom/alipay/mobile/publicplatform/news/WholeMsgGlobalNotice;->publicId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->isAcceptMsg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsRecv"

    const-string/jumbo v2, " user set acceptMsg is false ,return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->newsBiz:Lcom/alipay/mobile/publicplatform/news/NewsBiz;

    iget-object v1, p3, Lcom/alipay/mobile/publicplatform/news/WholeMsgGlobalNotice;->publicId:Ljava/lang/String;

    iget-object v2, p3, Lcom/alipay/mobile/publicplatform/news/WholeMsgGlobalNotice;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/publicplatform/news/NewsBiz;->loadNewsbyId(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/publiccore/client/result/MessageQueryResult;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/alipay/publiccore/client/result/MessageQueryResult;->success:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alipay/publiccore/client/result/MessageQueryResult;->pl:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsRecv"

    const-string/jumbo v2, "loadNewsbyId RPC response is fiald"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_4
    new-instance v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-direct {v1}, Lcom/alipay/mobile/chatsdk/api/ChatMessage;-><init>()V

    .line 171
    :try_start_0
    iget-object v0, v0, Lcom/alipay/publiccore/client/result/MessageQueryResult;->pl:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/chatsdk/api/MessagePayload;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/MessagePayload;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    iput-boolean v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->hasMore:Z

    .line 177
    const-string/jumbo v2, "20000042"

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    .line 178
    iput-object p1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 179
    iput-boolean v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->hasMore:Z

    .line 180
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/MessagePayload;->bMsgId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    .line 182
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgRecv;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgRecv;->processOneMsgSt1(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/chatsdk/api/ChatMessage;Lcom/alipay/mobile/chatsdk/api/MessagePayload;)V

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsRecv"

    const-string/jumbo v2, "MessagePayload:[ parseObject MessagePayload failed ]"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processNewsMsg(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 8

    .prologue
    .line 113
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsRecv"

    .line 115
    const-string/jumbo v2, "extract news  msg faild  becouse msgData is empty"

    .line 114
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 122
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    if-nez v0, :cond_2

    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsRecv"

    const-string/jumbo v5, "msgData array item is null  "

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 129
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "NewsRecv"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "process news msg tunnelMessageDown :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-class v1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;

    .line 131
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->pl:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsRecv"

    const-string/jumbo v5, "news sync msg pl is null  "

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "NewsRecv"

    const-string/jumbo v6, "extract news  msg  faild "

    invoke-interface {v1, v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 143
    :catch_1
    move-exception v0

    .line 144
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "NewsRecv"

    const-string/jumbo v3, "extract new  msg faild "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "NewsRecv"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pl string "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->pl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->pl:Ljava/lang/String;

    const-class v5, Lcom/alipay/mobile/publicplatform/news/WholeMsgGlobalNotice;

    invoke-static {v1, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    iget-object v5, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    check-cast v1, Lcom/alipay/mobile/publicplatform/news/WholeMsgGlobalNotice;

    invoke-direct {p0, v5, v0, v1}, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->processNewsLoad(Ljava/lang/String;Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Lcom/alipay/mobile/publicplatform/news/WholeMsgGlobalNotice;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

.method private randomDepayTime()I
    .locals 4

    .prologue
    const v1, 0x186a0

    .line 86
    .line 88
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 89
    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 90
    if-eqz v0, :cond_1

    .line 91
    const-string/jumbo v2, "PPNEWS_RPC_DELAY"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 94
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    if-gtz v0, :cond_0

    move v0, v1

    .line 106
    :goto_0
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0

    .line 98
    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "NewsRecv"

    .line 102
    const-string/jumbo v3, "delayRange parse exception"

    .line 101
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public processSyncMsg(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 5

    .prologue
    .line 55
    if-nez p1, :cond_1

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NewsRecv"

    const-string/jumbo v2, "processSyncMsg  is empty"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    .line 64
    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/news/NewsRecv;->randomDepayTime()I

    move-result v0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "NewsRecv"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "on news notice,delay "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to execute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    const-string/jumbo v2, "public-gplugin"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/publicplatform/news/NewsRecv$1;-><init>(Lcom/alipay/mobile/publicplatform/news/NewsRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 81
    int-to-long v3, v0

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
