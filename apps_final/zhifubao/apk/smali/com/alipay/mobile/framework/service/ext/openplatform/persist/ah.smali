.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;
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

.field private final synthetic d:Ljava/util/List;

.field private final synthetic e:I

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->d:Ljava/util/List;

    iput p5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->e:I

    iput-object p6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->f:Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getStageEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 312
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "userId"

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 314
    const-string/jumbo v3, "stageCode"

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 315
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 316
    if-eqz v0, :cond_0

    .line 317
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->d:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppRank(Ljava/lang/String;)V

    .line 318
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setNeedReport(Z)V

    .line 319
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 334
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;-><init>()V

    .line 322
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setUserId(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setStageCode(Ljava/lang/String;)V

    .line 324
    iget v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->e:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setRank(I)V

    .line 325
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setParentStageCode(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->d:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppRank(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->c:Ljava/lang/String;

    const-string/jumbo v3, "firstScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setMaxAppNum(I)V

    .line 332
    :cond_1
    :goto_1
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0

    .line 329
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;->c:Ljava/lang/String;

    const-string/jumbo v3, "secondScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setMaxAppNum(I)V

    goto :goto_1
.end method
