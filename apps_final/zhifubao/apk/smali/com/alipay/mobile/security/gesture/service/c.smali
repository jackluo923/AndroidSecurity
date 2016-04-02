.class public Lcom/alipay/mobile/security/gesture/service/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static volatile d:Lcom/alipay/mobile/security/gesture/service/c;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/alipay/mobile/security/gesture/service/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ooooxxxx"

    sput-object v0, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method

.method static synthetic a(Ljava/util/List;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobile/security/gesture/service/c;->b(Ljava/util/List;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/alipay/mobile/security/gesture/service/c;
    .locals 2

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->d:Lcom/alipay/mobile/security/gesture/service/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/mobile/security/gesture/service/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->d:Lcom/alipay/mobile/security/gesture/service/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/gesture/service/c;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/service/c;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/gesture/service/c;->d:Lcom/alipay/mobile/security/gesture/service/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->d:Lcom/alipay/mobile/security/gesture/service/c;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/data/UserGesture;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    new-instance v2, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-direct {v2}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;-><init>()V

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setUdrtif(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setData(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getInstance()Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->addOrUpdateUserGestureConfig(Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/data/UserGestureData;Lcom/alipay/mobile/security/gesture/data/UserGesture;)V
    .locals 13

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/gesture/data/UserGesture;->getUserGestureData(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->genDefault()Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    iget-object v1, p1, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    iget-object v2, v1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    sget-object v4, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "merge default "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " merge user ugData.userId "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "normalStage2"

    iget-object v4, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, v1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    move-object v2, v3

    :goto_1
    if-nez v2, :cond_9

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    iget-object v7, v2, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v2, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    iget-object v8, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_9
    iget-object v1, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    iget-object v7, v2, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "count user:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " serverList count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v7}, Ljava/util/List;->clear()V

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v1, v2, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    move-object v1, v3

    :goto_3
    if-eqz v4, :cond_e

    iget-object v4, v2, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v11, v2, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    iget-object v12, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v4, 0x1

    goto :goto_3

    :cond_e
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/service/c;)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "fastStage1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "normalStage1"

    aput-object v3, v1, v2

    new-instance v2, Lcom/alipay/mobile/security/gesture/service/e;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/gesture/service/e;-><init>(Lcom/alipay/mobile/security/gesture/service/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppsFromRemote([Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/AppFetchCallback;)V

    :cond_0
    return-void
.end method

.method private static b(Ljava/util/List;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;",
            ">;)",
            "Lcom/alipay/mobile/security/gesture/data/UserGestureData;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v2, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    invoke-direct {v2}, Lcom/alipay/mobile/security/gesture/data/UserGestureData;-><init>()V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/c;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "parseServerData stageCode "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    if-nez v7, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    invoke-direct {v9}, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;-><init>()V

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    iput-object v0, v9, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    iget-object v0, v2, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    :goto_2
    if-lt v3, v8, :cond_2

    iget-object v0, v9, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "parseServerData cav: id"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "desplay:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->display:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "parseServerData ext:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->stageExtProp:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->stageExtProp:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    :try_start_0
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->stageExtProp:Ljava/lang/String;

    const-class v10, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-static {v0, v10}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v10, v9, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->configItem:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "parseServerData cid appId "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  cid on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0
.end method

.method static synthetic c()Lcom/alipay/mobile/security/gesture/data/UserGesture;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getInstance()Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getUsersConfig()Lcom/alipay/mobile/security/gesture/data/UserGesture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/i;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/security/gesture/service/i;->a(I)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/security/gesture/service/i;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/alipay/mobile/security/gesture/service/i;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
