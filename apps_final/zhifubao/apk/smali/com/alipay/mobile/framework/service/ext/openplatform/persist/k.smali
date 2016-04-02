.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;
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
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/j;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Lcom/j256/ormlite/dao/Dao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/j;Ljava/util/List;Lcom/j256/ormlite/dao/Dao;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/j;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;->c:Lcom/j256/ormlite/dao/Dao;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "appId"

    invoke-virtual {v0, v3, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setId(I)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    :goto_3
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setId(I)V

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLocalIcon(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isPreinstall()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPreinstall(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPreinstallVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPreinstallVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto/16 :goto_2
.end method
