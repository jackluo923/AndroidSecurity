.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;
.super Ljava/lang/Object;
.source "StageDao.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;->c:Ljava/lang/String;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 465
    .line 466
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getStageEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 468
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "userId"

    const-string/jumbo v4, "-1"

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 470
    const-string/jumbo v3, "stageCode"

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 471
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 472
    if-eqz v0, :cond_0

    .line 473
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setUserId(Ljava/lang/String;)V

    .line 474
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 476
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
