.class public Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WelcomeBroadcastReceiver.java"


# static fields
.field private static TAG_WEL:Ljava/lang/String;

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static singlePool:Ljava/util/concurrent/ExecutorService;

.field private static syncCallback:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$WelSyncCallbackImpl;


# instance fields
.field private TAG:Ljava/lang/String;

.field agent:Lcom/alipay/mobile/framework/LauncherApplicationAgent;

.field dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/splash/SpaceObjectInfoModel;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

.field downloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

.field private mContext:Landroid/content/Context;

.field spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

.field spaceQueryReq:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;

.field spaceQueryResult:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;

.field private syncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->ajc$preClinit()V

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->singlePool:Ljava/util/concurrent/ExecutorService;

    .line 55
    const-string/jumbo v0, "welcome"

    sput-object v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->downloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 54
    const-string/jumbo v0, "WelcomeBroadcastReceiver"

    iput-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->syncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->processCMD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Ljava/util/List;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->isDeleteWelcome(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->addOrUpdateWelcome(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->deleteWelcomeByObjectId(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    return-object v0
.end method

.method private addOrUpdateWelcome(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/splash/SpaceObjectInfoModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 445
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 446
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 478
    :cond_0
    return-void

    .line 447
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->addWelcome(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    .line 446
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 451
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    move v3, v1

    move v4, v1

    .line 453
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    .line 473
    :goto_3
    if-nez v4, :cond_3

    .line 474
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->addWelcome(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    .line 451
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 454
    :cond_4
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    iget-object v6, v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->widgetId:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 457
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v4, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->resVersion:Ljava/lang/String;

    .line 458
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    iget-object v0, v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->resVersion:Ljava/lang/String;

    .line 456
    invoke-direct {p0, v4, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->compareVersionPrecise(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 463
    :goto_4
    if-eqz v0, :cond_5

    .line 464
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v4, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->userId:Ljava/lang/String;

    .line 465
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    iget-object v0, v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->userId:Ljava/lang/String;

    .line 464
    invoke-direct {p0, v4, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->isUpdateByBirthday(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 466
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    iget-object v4, v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->hrefUrl:Ljava/lang/String;

    .line 467
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    iget-object v0, v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->widgetId:Ljava/lang/String;

    .line 466
    invoke-direct {p0, v4, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->isCurImageNotExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 468
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->updateWelcome(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V

    move v4, v5

    .line 469
    goto :goto_3

    :cond_6
    move v0, v5

    .line 456
    goto :goto_4

    :cond_7
    move v4, v5

    .line 453
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2
.end method

.method private addWelcome(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->downloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    iget-object v1, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/alipay/mobile/framework/service/common/DownloadService;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;

    .line 237
    invoke-static {p1}, Lcom/alipay/mobile/splash/SpaceObjectModelUtil;->spaceObjectInfo2Model(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;)Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    move-result-object v0

    .line 238
    invoke-direct {p0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->tagDbExist()V

    .line 239
    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "WelcomeBroadcastReceiver.java"

    const-class v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.splash.WelcomeBroadcastReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private compareVersionPrecise(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 365
    const-string/jumbo v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 366
    const-string/jumbo v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 367
    array-length v1, v7

    .line 368
    array-length v2, v8

    .line 369
    if-le v1, v2, :cond_0

    move v0, v1

    :goto_0
    move v6, v3

    .line 370
    :goto_1
    if-lt v6, v0, :cond_1

    move v0, v3

    .line 388
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 369
    goto :goto_0

    .line 372
    :cond_1
    if-ge v6, v1, :cond_5

    .line 373
    aget-object v4, v7, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v5, v4

    .line 376
    :goto_3
    if-ge v6, v2, :cond_4

    .line 377
    aget-object v4, v8, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 380
    :goto_4
    if-le v5, v4, :cond_2

    .line 381
    const/4 v0, 0x1

    goto :goto_2

    .line 382
    :cond_2
    if-eq v5, v4, :cond_3

    move v0, v3

    .line 383
    goto :goto_2

    .line 370
    :cond_3
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_4

    :cond_5
    move v5, v3

    goto :goto_3
.end method

.method private deleteWelcome(Lcom/alipay/mobile/splash/SpaceObjectInfoModel;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 272
    const-string/jumbo v0, "welcome"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "delete info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->widgetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->hrefUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->widgetId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 277
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "welcome"

    invoke-direct {p0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 280
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    .line 291
    return-void

    .line 281
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v0

    .line 282
    const-string/jumbo v4, "welcome"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    .line 284
    iget-object v5, p1, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->widgetId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 285
    const-string/jumbo v5, "welcome"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "f widget "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 280
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private deleteWelcomeByObjectId(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/splash/SpaceObjectInfoModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 252
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v4, v3

    .line 256
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 257
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    move v2, v3

    .line 258
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_2

    .line 256
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 259
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    .line 260
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 261
    iget-object v5, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    iget-object v6, v1, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->objectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 262
    invoke-direct {p0, v1}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->deleteWelcome(Lcom/alipay/mobile/splash/SpaceObjectInfoModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 266
    :catch_0
    move-exception v0

    .line 267
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 439
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 431
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    const-string/jumbo v2, "/welcome"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 435
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCurImageNotExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 294
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isCurImageNotExist="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "current Image path = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeleteWelcome(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/splash/SpaceObjectInfoModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 482
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 484
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    move v3, v2

    move v4, v2

    .line 486
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    .line 494
    if-nez v4, :cond_4

    .line 495
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->deleteWelcome(Lcom/alipay/mobile/splash/SpaceObjectInfoModel;)V

    move v2, v5

    .line 496
    goto :goto_0

    .line 487
    :cond_2
    const-string/jumbo v6, "welcome"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "dbinfo = "

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    iget-object v0, v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->widgetId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, " resinfo = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    iget-object v6, v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->widgetId:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    iget-object v6, v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;->resVersion:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->resVersion:Ljava/lang/String;

    if-eq v6, v0, :cond_3

    move v4, v5

    .line 486
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 484
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private isUpdateByBirthday(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 399
    const-string/jumbo v3, "isUpdateByBirthday resUserId is null"

    .line 398
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 426
    :goto_0
    return v0

    .line 402
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 403
    goto :goto_0

    .line 405
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 407
    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 408
    if-nez v0, :cond_2

    .line 409
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 410
    const-string/jumbo v3, "isUpdateByBirthday authService is null"

    .line 409
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 411
    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 416
    const-string/jumbo v3, "isUpdateByBirthday currentId is null"

    .line 415
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 417
    goto :goto_0

    .line 419
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 420
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 421
    const-string/jumbo v3, "isUpdateByBirthday currentId=resUserId"

    .line 420
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 422
    goto :goto_0

    .line 424
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 425
    const-string/jumbo v3, "isUpdateByBirthday currentId!=resUserId"

    .line 424
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 426
    goto :goto_0
.end method

.method private static final synthetic onReceive_aroundBody0(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .locals 3

    .prologue
    .line 59
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->registerSyncCallback()V

    .line 62
    invoke-static {p1}, Lcom/alipay/mobile/splash/WelcomeDataHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/splash/WelcomeDataHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$1;-><init>(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    sget-object v1, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->singlePool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->singlePool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.push.CMD_TRANSFERD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static final synthetic onReceive_aroundBody1$advice(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 87
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->onReceive_aroundBody0(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 93
    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method private processCMD(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 168
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    .line 233
    :goto_1
    return-void

    .line 171
    :cond_0
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 172
    const-string/jumbo v4, "pl"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpSyncOrder;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpSyncOrder;

    .line 173
    iget-object v4, v0, Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpSyncOrder;->cmd:Ljava/lang/String;

    const-string/jumbo v5, "ADD_SPACE_OB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpSyncOrder;->cmd:Ljava/lang/String;

    const-string/jumbo v5, "UPDATE_SPACE_OB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 196
    iget-object v4, v0, Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpSyncOrder;->cmd:Ljava/lang/String;

    const-string/jumbo v5, "UPDATE_SPACE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "welcome"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "cacheTime"

    iget-object v0, v0, Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpSyncOrder;->spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-wide v5, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;->reqRpcTime:J

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    const/4 v0, 0x1

    .line 170
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 200
    :cond_1
    iget-object v4, v0, Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpSyncOrder;->cmd:Ljava/lang/String;

    const-string/jumbo v5, "RPC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    const-string/jumbo v0, "welcome"

    const-string/jumbo v4, "cmd = RPC,clear cache time"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 203
    const-string/jumbo v4, "welcome"

    const/4 v5, 0x0

    .line 202
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    const-string/jumbo v4, "cacheTime"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v1

    goto :goto_2

    .line 207
    :cond_2
    iget-object v4, v0, Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpSyncOrder;->cmd:Ljava/lang/String;

    const-string/jumbo v5, "DELETE_OB_BY_ID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    iget-object v0, v0, Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpSyncOrder;->spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 209
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;

    invoke-direct {v5, p0, v0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$2;-><init>(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Ljava/util/List;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    sget-object v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->singlePool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 226
    sget-object v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->singlePool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private registerSyncCallback()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 141
    const-class v1, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 139
    iput-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->syncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->syncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$WelSyncCallbackImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$WelSyncCallbackImpl;-><init>(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;)V

    sput-object v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->syncCallback:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$WelSyncCallbackImpl;

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->syncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "CDPINIT-USER"

    sget-object v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->syncCallback:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$WelSyncCallbackImpl;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->syncService:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "CDPINIT-GLOBAL"

    sget-object v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->syncCallback:Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver$WelSyncCallbackImpl;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    goto :goto_0
.end method

.method private tagDbExist()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 244
    const-string/jumbo v1, "welcome_DB_exist"

    const/4 v2, 0x0

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "exist"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    return-void
.end method

.method private updateWelcome(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 311
    new-instance v3, Ljava/io/File;

    iget-object v0, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateWelcome "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 315
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 347
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->downloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    if-nez v0, :cond_2

    .line 348
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 350
    const-class v1, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 348
    iput-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->downloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->downloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    iget-object v1, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10, v10}, Lcom/alipay/mobile/framework/service/common/DownloadService;->addDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alipay/mobile/common/transport/TransportCallback;)Ljava/util/concurrent/Future;

    .line 353
    invoke-static {p1}, Lcom/alipay/mobile/splash/SpaceObjectModelUtil;->spaceObjectInfo2Model(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;)Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 355
    return-void

    .line 317
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    .line 318
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateWelcome"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "needUpdate_widgetId"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 320
    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 323
    iget-object v6, p1, Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 324
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    .line 325
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "delete f widget "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-interface {v6, v7, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 328
    :catch_0
    move-exception v2

    .line 329
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->TAG_WEL:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;->onReceive_aroundBody1$advice(Lcom/alipay/mobile/splash/WelcomeBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method
