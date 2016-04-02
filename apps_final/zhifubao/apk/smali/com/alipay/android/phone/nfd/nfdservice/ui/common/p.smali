.class public final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

.field private final c:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

.field private final d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

.field private final e:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

.field private final f:Lcom/alipay/android/phone/nfd/nfdservice/biz/af;

.field private final g:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

.field private h:Landroid/os/Handler;

.field private final i:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

.field private j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

.field private k:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;

.field private l:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

.field private m:J

.field private final n:Ljava/lang/Object;

.field private o:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NfdWifiWatcher"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->m:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->n:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->i:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/j;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/af;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/af;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/q;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/q;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->k:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->k:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->k:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;->b()Ljava/util/Observable;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/y;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "afterDisconn forgetNetworkBySsid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->l:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->isShared()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->l:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->isSame(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->isSame(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Landroid/content/Context;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Ljava/lang/String;)Z

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->setCertState(I)V

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->l:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->f()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 7

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleConnectStateChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", wifiInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mConnWifiDetailInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->l:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;->a()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->b()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    move-result-object v1

    if-nez v1, :cond_5

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    const-string/jumbo v1, "detailInfo is null maybe not ali wifi"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a()V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->c()V

    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->l:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->l:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->a()V

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iput-object p2, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->wifiState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_9

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->l:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->l:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    invoke-static {v3, p1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;Landroid/net/wifi/WifiInfo;Landroid/net/DhcpInfo;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->m:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x75300

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    if-eqz v2, :cond_7

    iget-object v0, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2, p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->isSame(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    const-string/jumbo v2, "duplicate CONNECTED event received for the same ap !!! "

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a()Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;->a(ILjava/util/List;)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    const-string/jumbo v2, "send p2/p3 and start check portal..."

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Z

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->isCooperation()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->m:J

    goto :goto_2

    :cond_9
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_6

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startNetworkAvailabilityDetector mac:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->d()Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/w;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/w;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/j;)V

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleWifiCertStatusChanged certStatus: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v1, p2, p3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iput p1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->certStatus:I

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Z

    iget-object v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Z

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a()Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;->a(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "event=[INfdServiceFacadeImpl#notifyCertStatusChanged] certStatus=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mac=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/biz/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    return-object v0
.end method

.method private c()V
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    const-string/jumbo v1, "stopDetector"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->d()Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b()V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->d()Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a()V

    return-void
.end method

.method private d()Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V
    .locals 4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    const-string/jumbo v1, "handleWithoutWifi"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a()V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->f()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a()Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;->a(ILjava/util/List;)V

    return-void
.end method

.method private e()Landroid/os/Handler;
    .locals 3

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "NfdWifiWatcher#Thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->o:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->o:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->h:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->h:Landroid/os/Handler;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->i:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    return-object v0
.end method

.method private f()V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->d()Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/af;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/af;->a()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->b()Z

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->o:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    const-string/jumbo v3, "releaseWorkHandler exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/t;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public final a()Landroid/os/Handler;
    .locals 2

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->h:Landroid/os/Handler;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .locals 3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/r;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/r;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->a()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-ne v2, p1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->b()V

    goto :goto_0
.end method

.method public final a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/u;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnectionStateChanged detailedState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", wifiInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/s;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iget-object v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->wifiState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->isCooperation()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/v;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/v;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
