.class public Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;
.super Ljava/lang/Object;
.source "NofollowInfoLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NofollowInfoLoader"

.field private static instance:Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;


# instance fields
.field private followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->load(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->instance:Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;-><init>()V

    sput-object v0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->instance:Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    .line 40
    :cond_0
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->instance:Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    return-object v0
.end method

.method private getNoFollowInfoIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_part_load_faild_items"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 154
    :cond_1
    return-object v0

    .line 147
    :cond_2
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 150
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 151
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private load(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NofollowInfoLoader"

    const-string/jumbo v2, "start loading no follow info  public itmes  "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->getNoFollowInfoIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NofollowInfoLoader"

    const-string/jumbo v2, "no follow info item is empty ,exit! "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->refilter(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NofollowInfoLoader"

    const-string/jumbo v2, "after  refilter  no follow info item is empty ,exit! "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_4
    const/4 v1, 0x0

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->queryFewUserFollowAccountFromRemote(Ljava/util/List;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 91
    :goto_1
    if-eqz v1, :cond_1

    .line 92
    iget v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultCode:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 93
    iget-object v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "NofollowInfoLoader"

    const-string/jumbo v3, "load no follow info  public itmes success ,start to save  "

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    iget-object v2, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->initFollowAccountInfos(Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    .line 96
    iget-object v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 112
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->cleardNoFollowInfoPublicId(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 96
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    .line 97
    if-eqz v0, :cond_5

    .line 98
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 104
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;ZZZ)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 106
    :catch_1
    move-exception v0

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "NofollowInfoLoader"

    .line 108
    const-string/jumbo v5, "getFollowAccountShowModel"

    .line 107
    invoke-interface {v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private refilter(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    return-object v1

    .line 125
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v3, p1, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v3

    .line 127
    if-nez v3, :cond_0

    .line 128
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cleardNoFollowInfoPublicId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_part_load_faild_items"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasNoFollowInfoNeedLoad(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_part_load_faild_items"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadNoFollowInfoList(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader$1;-><init>(Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recordNoFollowInfoPublicId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_part_load_faild_items"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_part_load_faild_items"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/common/utils/CacheSet;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 166
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
