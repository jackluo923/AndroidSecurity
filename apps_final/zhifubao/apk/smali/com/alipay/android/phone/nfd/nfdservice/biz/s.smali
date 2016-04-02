.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/q;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/alipay/android/phone/nfd/nfdservice/biz/r;

.field private final e:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ShopIconServiceImpl"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->c:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->a()Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->b:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;Ljava/util/Map;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->insertShopIconList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->deleteOutDateShopIcon()I

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;

    invoke-direct {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;-><init>()V

    invoke-virtual {v5, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;->setShopId(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;->setIcon(Ljava/lang/String;)V

    const-string/jumbo v0, "1"

    invoke-virtual {v5, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;->setTimestamp(J)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "asyncQueryShopIconFromRpc needUpdateSignList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "asyncQueryShopIconFromRpc return  needUpdateShopIdList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/t;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/t;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;Ljava/util/List;)V

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;)Lcom/alipay/android/phone/nfd/nfdservice/biz/r;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->d:Lcom/alipay/android/phone/nfd/nfdservice/biz/r;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/nfdservice/biz/s;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryShopIcon isLocal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", shopIdList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryShopIcon shopIdList "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;

    invoke-virtual {v1, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->queryShopIconByShopIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    if-nez p2, :cond_1

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a(Ljava/util/List;)V

    :cond_6
    move-object v0, v1

    goto :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;->getShopId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final a(Lcom/alipay/android/phone/nfd/nfdservice/biz/r;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->d:Lcom/alipay/android/phone/nfd/nfdservice/biz/r;

    return-void
.end method
