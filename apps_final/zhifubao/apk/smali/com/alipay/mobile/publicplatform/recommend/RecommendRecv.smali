.class public Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;
.super Ljava/lang/Object;
.source "RecommendRecv.java"


# static fields
.field public static final PUBLIC_RECOMMEND_ID:Ljava/lang/String; = "public_recommend_id"

.field public static final PUBLIC_RECOMMEND_INVALIDATE_DATE:Ljava/lang/String; = "public_recommend_invalidate_date"

.field public static final TAG:Ljava/lang/String; = "chatsdk_RecommendRecv"

.field private static instance:Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;


# instance fields
.field private longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->processRecommendMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private generateRecommendItem(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Ljava/lang/String;Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string/jumbo v0, "0"

    iput-object v0, p3, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->isFollow:Ljava/lang/String;

    .line 79
    iput-boolean v4, p3, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->disturb:Z

    .line 80
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v1, p3, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->isSc:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    iput v3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 86
    :goto_1
    iget-object v1, p3, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->latestMsg:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p3, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->latestMsg:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 89
    :cond_2
    iget-wide v1, p3, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->latestMsgTime:J

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 92
    if-eqz p3, :cond_3

    const-string/jumbo v1, "default"

    invoke-virtual {p3}, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->getTopType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iput-boolean v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    .line 98
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "public_recommend_invalidate_date"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p3, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->invalidateDate:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/common/utils/CacheSet;->putLong(Ljava/lang/String;J)V

    .line 99
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "public_recommend_id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/utils/CacheSet;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;-><init>()V

    .line 101
    invoke-virtual {v1, p2, p3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    .line 102
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 103
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p3, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->followObjectId:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 106
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto/16 :goto_0

    .line 84
    :cond_4
    iget v1, p3, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;->unReadMsgCount:I

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->instance:Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;-><init>()V

    sput-object v0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->instance:Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;

    .line 44
    :cond_0
    sget-object v0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->instance:Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;

    return-object v0
.end method

.method private obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 180
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 176
    iput-object v0, p0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->longLinkSyncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    return-object v0
.end method

.method private processRecommendMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_RecommendRecv"

    .line 144
    const-string/jumbo v2, "extract follow msg faild  becouse msgData is empty"

    .line 143
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 150
    if-lez v1, :cond_0

    .line 154
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    const-class v1, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;

    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_RecommendRecv"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pl string "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->pl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, v0, Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;->pl:Ljava/lang/String;

    const-class v2, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 158
    check-cast v1, Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;

    invoke-direct {p0, v0, p1, v1}, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->generateRecommendItem(Lcom/alipay/mobile/chatsdk/model/TunnelMessageDown;Ljava/lang/String;Lcom/alipay/mobile/publicplatform/recommend/model/RecommendInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_RecommendRecv"

    const-string/jumbo v3, "extract recommend msg faild data faild "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 163
    :catch_1
    move-exception v0

    .line 164
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_RecommendRecv"

    const-string/jumbo v3, "extract recommend msg faild data faild "

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public invalidateRecommend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchDelete(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V

    .line 125
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "public_recommend_invalidate_date"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->remove(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "public_recommend_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public processSyncMsg(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 4

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "chatsdk_RecommendRecv"

    const-string/jumbo v2, "process syncMsg is empty"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->obtainLongLinkSyncService()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    .line 63
    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv$1;-><init>(Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
