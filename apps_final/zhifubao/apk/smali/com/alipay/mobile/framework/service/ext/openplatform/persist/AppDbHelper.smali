.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "AppDbHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "open_platform_apps.db"

.field private static final DATABASE_VERSION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "AppDbHelper"

.field private static instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;


# instance fields
.field private appEntityDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDbConnection:I

.field private final mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private myAppEntityDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stageEntityDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "open_platform_apps.db"

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 69
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 68
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mDbConnection:I

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mDbConnection:I

    return v0
.end method

.method private copyMyAppToStage()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 270
    new-array v5, v14, [Ljava/lang/String;

    const-string/jumbo v0, "firstScreen"

    aput-object v0, v5, v1

    const-string/jumbo v0, "secondScreen"

    aput-object v0, v5, v2

    move v4, v1

    .line 271
    :goto_0
    if-lt v4, v14, :cond_0

    .line 317
    return-void

    .line 271
    :cond_0
    aget-object v6, v5, v4

    .line 272
    const-string/jumbo v0, "firstScreen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 273
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getMyAppEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 274
    const-string/jumbo v7, "userRank"

    invoke-virtual {v3, v7, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/String;

    const-string/jumbo v9, "appId"

    aput-object v9, v8, v1

    invoke-virtual {v7, v8}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    .line 275
    const-string/jumbo v8, "appDisplayPlace"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 276
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v7

    .line 278
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 279
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move v3, v1

    .line 280
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    .line 286
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getAppEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "appId"

    invoke-virtual {v0, v3, v8}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_2

    .line 289
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/n;

    invoke-direct {v3, p0, v9}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/n;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;Ljava/util/Map;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;-><init>()V

    .line 296
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 305
    const-string/jumbo v0, "0"

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setUserId(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v3, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setStageCode(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v0, "indexStage"

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setParentStageCode(Ljava/lang/String;)V

    .line 308
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppRank(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, "firstScreen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    const/16 v0, 0x13

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setMaxAppNum(I)V

    .line 314
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getStageEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 271
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 272
    goto/16 :goto_1

    .line 281
    :cond_4
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    .line 282
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    const-string/jumbo v11, "AppDbHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "myappentity id:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v11, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 297
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 298
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string/jumbo v10, "AppDbHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "appentity id:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v9, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-direct {v9}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;-><init>()V

    .line 300
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setAppId(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isDisplay()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setDisplay(Z)V

    .line 302
    invoke-virtual {v9, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setMovable(Z)V

    .line 303
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 311
    :cond_6
    const-string/jumbo v0, "secondScreen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    const/16 v0, 0x3e8

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setMaxAppNum(I)V

    goto/16 :goto_4
.end method

.method public static getDbHelper()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    .line 63
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    return-object v0
.end method

.method private initGlobalSearch(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/m;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/m;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 379
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 380
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    .line 381
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const-string/jumbo v1, "open_platform_apps.db"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->closeDbHook(Ljava/lang/String;)V

    .line 385
    :cond_0
    return-void
.end method

.method public getAppEntityDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 325
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFastLoginAppEntityDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 347
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getMyAppEntityDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->myAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 336
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->myAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->myAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getStageEntityDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->stageEntityDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 354
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->stageEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->stageEntityDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method protected onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 5

    .prologue
    .line 81
    :try_start_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 82
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 83
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 84
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "openPlatfrom start index, on onUpgrade !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->initGlobalSearch(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 94
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t create database"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 365
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "openPlatfrom onOpen !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->initGlobalSearch(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "open_platform_apps.db"

    iget v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mDbConnection:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->hookDB(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 369
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;-><init>()V

    .line 370
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->registerQueryListeners(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;)V

    .line 372
    :cond_0
    return-void
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onUpgrade, oldVersion:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",newVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-ge p3, v4, :cond_1

    .line 106
    :try_start_0
    const-string/jumbo v0, "DROP TABLE AppEntity;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    :try_start_1
    const-string/jumbo v0, "DROP TABLE MyAppEntity;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :goto_1
    :try_start_2
    const-string/jumbo v0, "DROP TABLE FastLoginAppEntity;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    :goto_2
    :try_start_3
    const-string/jumbo v0, "DROP TABLE HomeAppEntity;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 126
    :goto_3
    :try_start_4
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 127
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 128
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upgrade db from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_4
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "openPlatfrom start index, on onUpgrade !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->initGlobalSearch(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 232
    return-void

    .line 108
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drop db table AppEntity ErrorOldVersion ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drop db table MyAppEntity ErrorOldVersion ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 118
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drop db table FastLoginAppEntity ErrorOldVersion ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 123
    :catch_3
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drop db table HomeAppEntity ErrorOldVersion ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 129
    :catch_4
    move-exception v0

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t create database"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 134
    :cond_1
    if-ne p3, v4, :cond_2

    .line 136
    :try_start_5
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 137
    const-string/jumbo v0, "alter table AppEntity add column autoUpdate integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, "alter table AppEntity add column extProperties TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, "alter table AppEntity add column pkgPath TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "alter table AppEntity add column pkgVersion TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "alter table AppEntity add column preinstall integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "alter table AppEntity add column localIcon TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "alter table AppEntity add column preinstallVersion TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v0, "alter table AppEntity add column incrementPkgUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "alter table AppEntity add column h5AppCdnBaseUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "update AppEntity set autoUpdate=1 where autoStatus=\'auto\';"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v0, "update AppEntity set autoUpdate=0 where autoStatus=\'manual\';"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->copyMyAppToStage()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_4

    .line 149
    :catch_5
    move-exception v0

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDbHelper"

    const-string/jumbo v3, "upgrade exception"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto/16 :goto_4

    .line 154
    :cond_2
    const/16 v0, 0xa

    if-ne p3, v0, :cond_3

    .line 156
    :try_start_6
    const-string/jumbo v0, "alter table AppEntity add column preinstall integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "alter table AppEntity add column localIcon TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "alter table AppEntity add column preinstallVersion TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v0, "alter table AppEntity add column incrementPkgUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v0, "alter table AppEntity add column h5AppCdnBaseUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v0, "alter table StageEntity add column parentStageCode TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v0, "alter table StageEntity add column maxShowAppNum integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "alter table StageEntity add column templateId TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v0, "alter table StageEntity add column appId TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "alter table StageEntity add column rank integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_4

    .line 166
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 169
    :cond_3
    const/16 v0, 0xb

    if-ne p3, v0, :cond_4

    .line 171
    :try_start_7
    const-string/jumbo v0, "alter table AppEntity add column localIcon TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "alter table AppEntity add column preinstallVersion TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "alter table AppEntity add column incrementPkgUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "alter table AppEntity add column h5AppCdnBaseUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v0, "alter table StageEntity add column parentStageCode TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v0, "alter table StageEntity add column maxShowAppNum integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "alter table StageEntity add column templateId TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "alter table StageEntity add column appId TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, "alter table StageEntity add column rank integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_4

    .line 180
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 183
    :cond_4
    const/16 v0, 0xc

    if-ne p3, v0, :cond_5

    .line 185
    :try_start_8
    const-string/jumbo v0, "alter table AppEntity add column localIcon TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v0, "alter table AppEntity add column preinstallVersion TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v0, "alter table AppEntity add column incrementPkgUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "alter table AppEntity add column h5AppCdnBaseUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v0, "alter table StageEntity add column parentStageCode TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "alter table StageEntity add column templateId TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "alter table StageEntity add column appId TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v0, "alter table StageEntity add column rank integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_4

    .line 193
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 196
    :cond_5
    const/16 v0, 0xd

    if-ne p3, v0, :cond_6

    .line 198
    :try_start_9
    const-string/jumbo v0, "alter table AppEntity add column preinstallVersion TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "alter table AppEntity add column incrementPkgUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "alter table AppEntity add column h5AppCdnBaseUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "alter table StageEntity add column parentStageCode TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "alter table StageEntity add column rank integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_4

    .line 203
    :catch_9
    move-exception v0

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 206
    :cond_6
    const/16 v0, 0xe

    if-ne p3, v0, :cond_7

    .line 208
    :try_start_a
    const-string/jumbo v0, "alter table AppEntity add column incrementPkgUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v0, "alter table AppEntity add column h5AppCdnBaseUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v0, "alter table StageEntity add column rank integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_4

    .line 211
    :catch_a
    move-exception v0

    .line 212
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 214
    :cond_7
    const/16 v0, 0xf

    if-ne p3, v0, :cond_8

    .line 216
    :try_start_b
    const-string/jumbo v0, "alter table AppEntity add column incrementPkgUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v0, "alter table AppEntity add column h5AppCdnBaseUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_4

    .line 218
    :catch_b
    move-exception v0

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 221
    :cond_8
    const/16 v0, 0x10

    if-ne p3, v0, :cond_0

    .line 223
    :try_start_c
    const-string/jumbo v0, "alter table AppEntity add column h5AppCdnBaseUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_4

    .line 224
    :catch_c
    move-exception v0

    .line 225
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method
