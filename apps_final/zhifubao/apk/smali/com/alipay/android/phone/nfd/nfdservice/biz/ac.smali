.class public final Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/aa;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;

.field private c:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "StoreGotoUrlService"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->b()Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;)V

    iput p2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->d:I

    iput-object p1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iput p2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->d:I

    goto :goto_0
.end method

.method private b()Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->c:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->a()Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->c:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->c:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;)V

    iget v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->a:I

    iput-object p1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->a:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->b:J

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getGotoUrl START.  sign="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NFDSettingUtil;->getGotoUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;

    if-eqz v0, :cond_4

    iget-wide v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->b:J

    iget v5, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->a:I

    if-lt v5, v9, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v7, 0xea60

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_3
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    iget v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->a:I

    if-lt v0, v9, :cond_4

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    :try_start_1
    iget v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->d:I

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a(Ljava/lang/String;I)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->run(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a(Ljava/lang/String;I)V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;

    return-void
.end method
