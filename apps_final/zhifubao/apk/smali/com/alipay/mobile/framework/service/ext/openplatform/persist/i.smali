.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;
.super Ljava/lang/Object;
.source "AppDao.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Lcom/j256/ormlite/dao/Dao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;Ljava/util/List;Lcom/j256/ormlite/dao/Dao;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;->c:Lcom/j256/ormlite/dao/Dao;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "appId"

    invoke-virtual {v0, v2, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getMoreAppNewFlag()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setMoreAppNewFlag(Z)V

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getNeedShowNewFlag()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNewFlagUnknown()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_6
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNewFlagUnknown()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;

    invoke-static {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v7

    # getter for: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->userId:Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "secondScreen"

    invoke-virtual {v6, v7, v8, v9}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->isAppDisplayInThisStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v6, "AppDao"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "update cause other new, id:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :cond_7
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    :cond_8
    :goto_3
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setId(I)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLocalIcon(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isPreinstall()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPreinstall(Z)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPreinstallVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPreinstallVersion(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;

    invoke-static {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v7

    # getter for: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->userId:Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "secondScreen"

    invoke-virtual {v6, v7, v8, v9}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->isAppDisplayInThisStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v6, "AppDao"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "update cause other new, id:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->hideNewFlag()V

    goto/16 :goto_3

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    iget-object v5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;

    invoke-static {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v6

    # getter for: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->userId:Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "secondScreen"

    invoke-virtual {v5, v6, v7, v8}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->isAppDisplayInThisStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "OFFLINE"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v5, "AppDao"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "new cause other new, id:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_2
.end method
