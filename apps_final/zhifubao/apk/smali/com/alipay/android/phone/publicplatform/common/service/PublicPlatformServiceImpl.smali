.class public Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;
.super Lcom/alipay/android/phone/publicplatform/common/api/PublicPlatformService;
.source "PublicPlatformServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PublicPlatformServiceImpl"


# instance fields
.field private addingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

.field private officialAccountFacade:Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/android/phone/publicplatform/common/api/PublicPlatformService;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->officialAccountFacade:Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->addingList:Ljava/util/List;

    .line 32
    return-void
.end method

.method private declared-synchronized addAddingPublicId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->addingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isAdding(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->addingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processAddFollowResult(Lcom/alipay/publiccore/client/result/AddFollowResult;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v2, 0xc8

    .line 240
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alipay/publiccore/client/result/AddFollowResult;->resultCode:I

    if-eq v0, v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/result/AddFollowResult;->getOfficialHomeListResult()Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_2

    iget v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultCode:I

    if-ne v0, v2, :cond_2

    .line 248
    iget-object v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 250
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PublicPlatformServiceImpl"

    const-string/jumbo v3, "save public home data"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    iget-object v2, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->initFollowAccountInfos(Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/result/AddFollowResult;->getUserAccountLayoutResult()Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_3

    .line 261
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PublicPlatformServiceImpl"

    const-string/jumbo v4, "save ppchat data"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getPpchatDaoInstance()Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;->savtAccountInfo(Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;

    .line 267
    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    iget-object v2, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountShowModelFormDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_4

    .line 270
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 271
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModelFromNew(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.mobile.android.main.publichome.add"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v1, "objectId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 278
    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 281
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PublicPlatformServiceImpl"

    .line 282
    const-string/jumbo v2, " notify public home remote refresh"

    .line 281
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private declared-synchronized removeAddingPublicId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->addingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addFollow(Lcom/alipay/publiccore/client/req/FollowReq;)Lcom/alipay/publiccore/client/result/AddFollowResult;
    .locals 5

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/publiccore/client/req/FollowReq;->followObjectId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    .line 91
    :cond_1
    iget-object v0, p1, Lcom/alipay/publiccore/client/req/FollowReq;->followObjectId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->addAddingPublicId(Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PublicPlatformServiceImpl"

    const-string/jumbo v2, "start add Follow"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->officialAccountFacade:Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    invoke-interface {v0, p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;->addFollow(Lcom/alipay/publiccore/client/req/FollowReq;)Lcom/alipay/publiccore/client/result/AddFollowResult;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PublicPlatformServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " add Follow result"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    if-nez v0, :cond_2

    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p1, Lcom/alipay/publiccore/client/req/FollowReq;->followObjectId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->processAddFollowResult(Lcom/alipay/publiccore/client/result/AddFollowResult;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v1, p1, Lcom/alipay/publiccore/client/req/FollowReq;->followObjectId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->removeAddingPublicId(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    :try_start_1
    iget v1, v0, Lcom/alipay/publiccore/client/result/AddFollowResult;->resultCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    .line 102
    iget-object v1, p1, Lcom/alipay/publiccore/client/req/FollowReq;->followObjectId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->removeAddingPublicId(Ljava/lang/String;)V

    .line 103
    throw v0
.end method

.method public getUserFollowAccountFromLocal(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 2

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 314
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 315
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public isFollow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 300
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    .line 304
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markReaded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->markReaded(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-static {p1, v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 156
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V

    .line 158
    :cond_0
    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 71
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 74
    const-class v1, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    .line 73
    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->officialAccountFacade:Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    .line 76
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    .line 77
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public queryUserFollowAccountFromLocal(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfos(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 290
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFollow(Ljava/lang/String;Lcom/alipay/publiccore/client/req/FollowReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
    .locals 4

    .prologue
    .line 108
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alipay/publiccore/client/req/FollowReq;->followObjectId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 119
    :cond_1
    :goto_0
    return-object v0

    .line 111
    :cond_2
    new-instance v0, Lcom/alipay/publiccore/client/req/FollowReq;

    invoke-direct {v0}, Lcom/alipay/publiccore/client/req/FollowReq;-><init>()V

    .line 112
    iget-object v1, p2, Lcom/alipay/publiccore/client/req/FollowReq;->followObjectId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/publiccore/client/req/FollowReq;->followObjectId:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PublicPlatformServiceImpl"

    const-string/jumbo v3, "start remove  Follow"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->officialAccountFacade:Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    invoke-interface {v1, v0}, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;->removeFollow(Lcom/alipay/publiccore/client/req/FollowReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->resultCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;->success:Z

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p2, Lcom/alipay/publiccore/client/req/FollowReq;->followObjectId:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->removeLocalFollow(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public removeLocalFollow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->deleteFollowAccountInfoByUserId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchDelete(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->deleteItem(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.android.main.publichome.remove"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v2, "objectId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 132
    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 134
    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PublicPlatformServiceImpl"

    .line 136
    const-string/jumbo v3, " notify public home remove  msg"

    .line 135
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    return v0
.end method

.method public updateFollowStatus(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 165
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v3

    .line 166
    if-eqz v3, :cond_0

    .line 167
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    const-string/jumbo v4, "0"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 168
    :goto_0
    if-eq v0, p3, :cond_0

    .line 169
    if-eqz p3, :cond_3

    .line 170
    const-string/jumbo v0, "1"

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    .line 174
    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->saveFollowBaseAccountInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_2
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getPpchatDaoInstance()Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;->queryPubSvcSetBean(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;

    move-result-object v3

    .line 183
    if-eqz v3, :cond_1

    iget-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    iget-object v0, v0, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->isFollow:Ljava/lang/String;

    const-string/jumbo v4, "0"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 185
    :goto_3
    if-eq v0, p3, :cond_1

    .line 186
    if-eqz p3, :cond_5

    .line 187
    iget-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    const-string/jumbo v1, "1"

    iput-object v1, v0, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->isFollow:Ljava/lang/String;

    .line 191
    :goto_4
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getPpchatDaoInstance()Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;

    move-result-object v0

    invoke-interface {v0, v3, p2, p1}, Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;->updatePubSvcSetBean(Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 167
    goto :goto_0

    .line 172
    :cond_3
    :try_start_1
    const-string/jumbo v0, "0"

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "PublicPlatformServiceImpl"

    .line 179
    const-string/jumbo v5, " update baseInfo followAccountBase  follow status"

    .line 178
    invoke-interface {v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move v0, v2

    .line 184
    goto :goto_3

    .line 189
    :cond_5
    iget-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->isFollow:Ljava/lang/String;

    goto :goto_4
.end method

.method public updateSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 143
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->updateOnlySummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-static {p1, v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 146
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;Z)V

    .line 148
    :cond_0
    return v2
.end method

.method public waitAddFinish(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 208
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PublicPlatformServiceImpl"

    .line 209
    const-string/jumbo v2, "on main thread call isAdding, "

    .line 208
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x5

    .line 213
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/publicplatform/common/service/PublicPlatformServiceImpl;->isAdding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PublicPlatformServiceImpl"

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "try to  see add has Finished "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PublicPlatformServiceImpl"

    const-string/jumbo v4, "exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    .line 223
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PublicPlatformServiceImpl"

    .line 224
    const-string/jumbo v2, "add public finished,beak"

    .line 223
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
