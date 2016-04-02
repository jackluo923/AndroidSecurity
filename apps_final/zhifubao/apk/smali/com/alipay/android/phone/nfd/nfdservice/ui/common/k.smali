.class public Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;

.field private c:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

.field private d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

.field private e:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

.field private f:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

.field private g:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

.field private h:Lcom/alipay/android/phone/nfd/nfdservice/biz/q;

.field private i:Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "INfdServiceFacade"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdServiceFacade$Stub;-><init>()V

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/j;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/q;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/q;

    return-void
.end method

.method private a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "fillPassword START"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    invoke-interface {v0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->queryWifiSsidMacByMac(Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "fillPassword. mWifiDao.queryWifiSsidMacBykey(mac) wifiSsidMac is "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string/jumbo v0, "not null."

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return v4

    :cond_1
    const-string/jumbo v0, " null"

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->getAuthType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v2, "fillPassword. COOP_TYPE_SHARED"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/StringEncryptUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "fillPassword. password is is not empty."

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v2, "decryptor password error"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v2, "fillPassword exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;Z)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "waited wifi enabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "InterruptedException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/l;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/l;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->e:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    return-void
.end method

.method public final a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    return-void
.end method

.method public connectTargetAP(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;)I
    .locals 7

    const/4 v1, 0x3

    const/4 v0, 0x2

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v3, "connectTargetAP"

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v2, "Parameter \"nfdWifiRequest\" can\'t be null"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mMac:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v2, "Parameter \"NfdWifiRequest.mMac\" can\'t be empty"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->f()V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    iget-object v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mMac:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "accessPoint not exist. mac=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] networkId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mMac:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->e()V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b()Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v1

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeNetwork(id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    iget-object v3, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v3

    sget-object v4, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saveConfiguration() invoked ret:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    const/4 v1, -0x1

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->c()V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "mWifiHelper.connect() pass"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public deleteLocalNfdWifiMac(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deleteLocalNfdWifiMac mac=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v2, "deleteLocalNfdWifiMac  wifiDetailInfo is null."

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteLocalNfdWifiMac  mac=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ssid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "forgetNetwork() in deleteLocalNfdWifiMac() ret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Ljava/lang/String;)I

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->d()V

    return-void
.end method

.method public enableWifiReceiver()V
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "enableWifiReceiver"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->h()V

    return-void
.end method

.method public forgetNetwork(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getLightBizNfdService()Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->i:Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->i:Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->i:Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;

    return-object v0
.end method

.method public getNearbyWifiServiceList(ZLcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/NearbyWifiServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "getNearbyWifiServiceList   mWifiUpdateService != null"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;->a(ZLcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "getNearbyWifiServiceList   mWifiUpdateService == null"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getReachableNfdWifiInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReachableNfdWifiList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getReachableNfdWifiList() return "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string/jumbo v0, "NULL object"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " items."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public notifyCertStatusChanged(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->e:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryShopIcon(Ljava/util/List;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/q;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/q;->a(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method public queryWifiDataSync(Z)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;->a(Z)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordInStore(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerNFDEventListener"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "method=[registerNfdEventListener] nfdEventListener is null."

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendMonitorLog()V
    .locals 0

    return-void
.end method

.method public unregisterNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "unregisterNFDEventListener"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "method=[unregisterNFDEventListener] nfdEventListener is null."

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;->b(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z

    goto :goto_0
.end method

.method public writeAndSendMonitorLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public writeMonitorLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
