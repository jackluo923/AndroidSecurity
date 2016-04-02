.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/v;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ShopPostServiceImpl"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->e:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getShopPostFromSharedPref START.   sign=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->shopPostText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getShopPostFromSharedPref shopPostDo=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->updateTimeMillis:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->shopPostText:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getShopPostFromSharedPref exception. sign=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->e:Ljava/util/List;

    return-object v0
.end method

.method private static a(Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->sign:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->sign:Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    const-string/jumbo v1, "saveShopPost START"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->d(Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;-><init>()V

    :cond_0
    iput-object p1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->shopPostText:Ljava/lang/String;

    iput-object p0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->sign:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->updateTimeMillis:J

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    const-string/jumbo v2, "saveShopPost"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sp_nfd_shop_post_cache"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->a()Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/y;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->run(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->c(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->c(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Lcom/alipay/android/phone/nfd/nfdservice/biz/w;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->d:Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->d(Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;-><init>()V

    :cond_0
    iput-object p0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->sign:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->rpcTimeMillis:J

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/android/phone/nfd/nfdservice/biz/x;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    const-string/jumbo v2, "getShopPostFromSharedPref localShopPostJson is empty"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-class v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queryShopPost START.    sign=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->d(Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->b(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->rpcTimeMillis:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1b7740

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a(Ljava/lang/String;Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/phone/nfd/nfdservice/biz/w;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->d:Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

    return-void
.end method
