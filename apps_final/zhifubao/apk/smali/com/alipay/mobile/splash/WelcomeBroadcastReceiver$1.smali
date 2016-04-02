.class Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "WelcomeBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v3, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v3, v3, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    invoke-virtual {v3}, Lcom/alipay/mobile/splash/WelcomeDataHelper;->getSpaceObjectModelDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 69
    const-string/jumbo v0, "welcome"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init time "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    iput-object v0, v3, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->downloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    # getter for: Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->access$2(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;)Landroid/content/Context;

    move-result-object v0

    .line 73
    const-string/jumbo v3, "welcome"

    .line 72
    invoke-virtual {v0, v3, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 75
    const-string/jumbo v0, "welcome"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "init cacheTime "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "cacheTime"

    const-wide/16 v1, 0x0

    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 82
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 84
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 86
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 87
    if-eqz v1, :cond_0

    .line 89
    const-class v2, Lcom/alipay/mobile/cdp/biz/rpc/space/query/SpaceQueryFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/biz/rpc/space/query/SpaceQueryFacade;

    .line 90
    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    new-instance v4, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;

    invoke-direct {v4}, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;-><init>()V

    iput-object v4, v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceQueryReq:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    const-string/jumbo v4, "STARTPAGE"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v4, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v4, v4, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceQueryReq:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;

    iput-object v2, v4, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;->spaceCodeList:Ljava/util/List;

    .line 94
    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v2, v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceQueryReq:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;->userId:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v2, v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceQueryReq:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/cdp/biz/rpc/space/query/SpaceQueryFacade;->queryBySpaceCode(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;)Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceQueryResult:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceQueryResult:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceQueryResult:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceQueryResult:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 99
    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceQueryResult:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;->spaceInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

    iput-object v0, v1, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;->updatePolicy:Ljava/lang/String;

    .line 102
    const-string/jumbo v1, "TIMER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-wide v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;->reqRpcTime:J

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 105
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v6, "cacheTime"

    invoke-interface {v2, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "currentTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v2, v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v2, v2, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    # invokes: Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->isDeleteWelcome(Ljava/util/List;Ljava/util/List;)Z
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->access$3(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Ljava/util/List;Ljava/util/List;)Z

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v2, v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v2, v2, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    # invokes: Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->addOrUpdateWelcome(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->access$4(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/splash/WelcomeDataHelper;->close()V

    goto/16 :goto_0

    .line 114
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
