.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/t;
.super Ljava/lang/Object;
.source "FastLoginAppDao.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/s;

.field private final synthetic b:Lcom/j256/ormlite/dao/Dao;

.field private final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/s;Lcom/j256/ormlite/dao/Dao;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/t;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/s;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/t;->b:Lcom/j256/ormlite/dao/Dao;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/t;->c:Ljava/util/List;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/t;->b:Lcom/j256/ormlite/dao/Dao;

    .line 113
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    .line 116
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 117
    :cond_2
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;-><init>()V

    .line 119
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;->setAppId(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/t;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0
.end method
