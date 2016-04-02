.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;
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

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getStageEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 252
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "userId"

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 254
    const-string/jumbo v3, "stageCode"

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getStageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 255
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 256
    if-eqz v0, :cond_1

    .line 257
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setId(I)V

    .line 259
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getParentStageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getParentStageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getParentStageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setParentStageCode(Ljava/lang/String;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 267
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0
.end method
