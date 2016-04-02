.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;
.source "StageDao.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StageDao"

.field private static instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;-><init>()V

    .line 34
    return-void
.end method

.method public static getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    .line 40
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    return-object v0
.end method

.method private isStageExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 393
    .line 394
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ai;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ai;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 393
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copyOldStage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->isStageExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/z;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/z;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 458
    :cond_0
    return-void
.end method

.method public copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 461
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->isStageExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 481
    :cond_0
    return-void
.end method

.method public getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .line 45
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/x;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 59
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getDisplayAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "StageDao"

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getDisplayAppsForStage, appRanks size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    :cond_1
    return-object v1

    .line 78
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 79
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public getDisplayAppsForUser(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 88
    .line 89
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ab;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ab;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 102
    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    :cond_1
    return-object v4

    .line 103
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 104
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getStageCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 109
    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 116
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 117
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 123
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getStageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    goto :goto_1

    .line 114
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    goto :goto_1

    .line 118
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 119
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isDisplay()Z

    move-result v2

    if-nez v2, :cond_3

    .line 120
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2
.end method

.method public getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;
    .locals 1

    .prologue
    .line 131
    .line 132
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ac;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 131
    return-object v0
.end method

.method public getStageEntityList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    .line 150
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ad;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ad;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 149
    return-object v0
.end method

.method public getUserStageRankForStage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;
    .locals 5

    .prologue
    .line 214
    .line 215
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/af;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/af;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 228
    new-instance v2, Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;

    invoke-direct {v2}, Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;-><init>()V

    .line 229
    iput-object p2, v2, Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;->stageCode:Ljava/lang/String;

    .line 230
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    if-eqz v1, :cond_0

    .line 234
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 238
    :cond_0
    iput-object v3, v2, Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;->appIdList:Ljava/util/List;

    .line 239
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getDataVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;->dataVersion:Ljava/lang/String;

    .line 242
    :cond_1
    return-object v2

    .line 234
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 235
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hasOldUserStage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 411
    .line 412
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/y;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/y;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 424
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    .line 425
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 426
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 427
    goto :goto_0

    :cond_2
    move v0, v1

    .line 432
    goto :goto_0
.end method

.method public isAppDisplayInThisStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 358
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_1

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 360
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 361
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAppInThisStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_1

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 348
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 349
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 168
    .line 169
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ae;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ae;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 184
    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getMaxShowAppNum()I

    move-result v7

    .line 186
    if-lez v7, :cond_2

    move v2, v3

    .line 187
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 188
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v1

    const-class v5, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-static {v1, v5}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 189
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 190
    if-eqz v2, :cond_6

    .line 191
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListByAppRanks(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_6

    .line 193
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v4

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v6

    .line 203
    :goto_2
    if-eqz v2, :cond_5

    .line 204
    if-lt v5, v7, :cond_4

    .line 210
    :cond_1
    :goto_3
    return v3

    :cond_2
    move v2, v4

    .line 186
    goto :goto_0

    .line 193
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 194
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isDisplay()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 195
    const-string/jumbo v9, "OFFLINE"

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 196
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_4
    move v3, v4

    .line 204
    goto :goto_3

    .line 206
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getMaxAppNum()I

    move-result v0

    .line 207
    if-ge v1, v0, :cond_1

    move v3, v4

    goto :goto_3

    :cond_6
    move v5, v4

    move v1, v6

    goto :goto_2

    :cond_7
    move v5, v4

    move v1, v4

    goto :goto_2
.end method

.method public moveAppByStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 372
    const/4 v1, 0x0

    .line 373
    if-eqz v2, :cond_1

    .line 374
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 384
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 385
    if-eqz v2, :cond_2

    .line 386
    if-eqz p5, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 387
    invoke-virtual {p0, p1, p3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 390
    :cond_2
    return-void

    .line 374
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 375
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {p0, p1, p2, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v1, v0

    .line 379
    goto :goto_0

    .line 386
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method public needReportStage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->isNeedReport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 491
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getLastReportTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getReportInterval()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 490
    goto :goto_0
.end method

.method public saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    .line 337
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    const-string/jumbo v3, ""

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 343
    return-void
.end method

.method public saveOrderInStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    if-nez p3, :cond_0

    .line 302
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 279
    if-eqz v3, :cond_2

    .line 280
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 281
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 285
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 292
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 301
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 282
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 283
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 285
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 286
    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 292
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-gt v0, v5, :cond_6

    .line 295
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 297
    :cond_6
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public stageHasChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->isNeedReport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 270
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 271
    return-void
.end method
