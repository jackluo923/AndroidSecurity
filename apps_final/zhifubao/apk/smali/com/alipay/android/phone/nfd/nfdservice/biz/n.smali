.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/m;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/app/Application;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

.field private final i:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/content/Intent;

.field private n:Lcom/alipay/android/phone/nfd/nfdservice/biz/v;

.field private o:Lcom/alipay/android/phone/nfd/nfdservice/biz/aa;

.field private p:Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

.field private q:Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;

.field private final r:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NotificationService"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d:I

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "NotificationServiceImpl construct start"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b:Landroid/app/Application;

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "NotificationServiceImpl construct start1"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/j;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "NotificationServiceImpl construct start3"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getInstance()Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->r:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "NotificationServiceImpl construct start3"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->l:I

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ".R$drawable"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v0, "wifiapp_small"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->j:I

    const-string/jumbo v0, "wifiapp"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "NotificationServiceImpl construct end"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->m:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    const-string/jumbo v0, "alipays://platformapi/startapp?appId=20000112&skipStartup=true"

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "gotoUrl"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Landroid/net/Uri$Builder;
    .locals 3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "nfdservice"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "mac"

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "ssid"

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "shopid"

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "security"

    iget-object v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iget v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->security:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "certType"

    iget-object v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->certType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-object v0
.end method

.method private a(I)Landroid/net/Uri;
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    if-ne p1, v4, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->o:Lcom/alipay/android/phone/nfd/nfdservice/biz/aa;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->o:Lcom/alipay/android/phone/nfd/nfdservice/biz/aa;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->o:Lcom/alipay/android/phone/nfd/nfdservice/biz/aa;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->q:Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;

    if-nez v2, :cond_0

    new-instance v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/o;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)V

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->q:Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;

    :cond_0
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->q:Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/aa;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ab;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->o:Lcom/alipay/android/phone/nfd/nfdservice/biz/aa;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSign()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v3, "buildUri exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const-string/jumbo v0, "alipays://platformapi/startapp?appId=20000126&skipStartup=true"

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Landroid/net/Uri$Builder;

    move-result-object v2

    if-nez p1, :cond_3

    const-string/jumbo v0, "targetActivity"

    const-string/jumbo v1, "NfdWifiListActivity"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v0, "level"

    const-string/jumbo v1, "p1"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v0, "storeName"

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->storeName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne v4, p1, :cond_4

    const-string/jumbo v0, "targetActivity"

    const-string/jumbo v1, "ConnectedWifiDetailActivity_"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v0, "level"

    const-string/jumbo v1, "p3"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_1
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event=[buildUri] "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne v1, p1, :cond_6

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->certType:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    const-string/jumbo v0, "targetActivity"

    const-string/jumbo v1, "NfdWifiListActivity"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_3
    const-string/jumbo v0, "level"

    const-string/jumbo v1, "p2"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "targetActivity"

    const-string/jumbo v1, "WifiConnectingActivity"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->e()Lcom/alipay/android/phone/nfd/nfdservice/biz/v;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const-string/jumbo v1, "nfd_notification_tag"

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendNotifyForShopPost START"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendNotifyForShopPost sign is empty"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendNotifyForShopPost shopPost is empty"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendNotifyForShopPost mNfdWifiDetailInfo is null"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendNotifyForShopPost. sign is difference.  current sign=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] now sign = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "shop_post_record_"

    invoke-static {p1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendNotifyForShopPost. isShowShopPostForPeriod("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") == false.  return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "shop_post_record_"

    invoke-static {p1, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendNotifyForShopPost.  shopPost=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->f:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d:I

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->m:Landroid/content/Intent;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v9, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "event=[sendNotifyForInner] isAutoNFDEnabled == false . return."

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->f:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d:I

    iput-object p4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->m:Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {p5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "WIFI_SERVICE_NOTIFICATION"

    const/4 v3, 0x1

    invoke-virtual {p5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b:Landroid/app/Application;

    const/4 v3, -0x1

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, p5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b:Landroid/app/Application;

    invoke-direct {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->j:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->j:I

    :goto_1
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->k:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->k:I

    :goto_2
    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v6, 0x0

    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    invoke-static {v6, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const v7, 0x3f59999a    # 0.85f

    mul-float/2addr v6, v7

    const/4 v7, 0x2

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v7, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    div-float v5, v6, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/lit8 v5, v5, 0x1

    if-le v2, v5, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Ticker:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x4

    if-nez p3, :cond_3

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x5

    :cond_3
    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c:Z

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b:Landroid/app/Application;

    const-string/jumbo v0, "notification"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Landroid/content/Context;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_7

    const-string/jumbo v3, "nfd_notification_tag"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_3
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event=[sendNotifyForInner] success. title=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] content=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez p3, :cond_8

    const-string/jumbo v0, "P1"

    :goto_4
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->UC_WIFI_C39(Ljava/lang/String;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->l:I

    goto/16 :goto_1

    :cond_6
    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->l:I

    goto/16 :goto_2

    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    :cond_8
    if-ne v9, p3, :cond_9

    const-string/jumbo v0, "P2"

    goto :goto_4

    :cond_9
    if-ne v1, p3, :cond_a

    const-string/jumbo v0, "P3"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveShopPost START. sign=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] ticker=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]  spKey=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;

    invoke-direct {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;-><init>()V

    iput-object p1, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->shopPostText:Ljava/lang/String;

    iput-object p0, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->sign:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->updateTimeMillis:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveShopPost exception.  sign=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  shoppost=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "revert isCancel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a()V

    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->f:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wifi_notify_sound_count_pershop_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private b()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v2, "ContextConstants.application is null"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NFDSettingUtil;->isAutoNFDEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private static c()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sp_nfd_notification_service"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wifi_notify_sound_count_pershop_total_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->e()Lcom/alipay/android/phone/nfd/nfdservice/biz/v;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "shop_post_record_"

    invoke-static {p1, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p2, ""

    :goto_0
    return-object p2

    :cond_0
    const-string/jumbo v1, "shop_post_record_"

    invoke-static {p1, p2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "shop_post_of_title_record_"

    invoke-static {p1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p2, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "shop_post_of_title_record_"

    invoke-static {p1, p2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d:I

    return v0
.end method

.method private d()Z
    .locals 15

    const/16 v14, 0x17

    const/16 v12, 0xb

    const/4 v13, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->r:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v3, "wifi_p1_sound_switch"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_1

    if-ne v2, v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSign()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v0, "wifi_sound_timestamp"

    const-wide/16 v5, -0x1

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    cmp-long v10, v7, v5

    if-gtz v10, :cond_4

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v5, v10

    cmp-long v5, v7, v5

    if-gez v5, :cond_5

    :cond_4
    invoke-virtual {v0, v12, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    const/16 v6, 0x3b

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    const/16 v6, 0x3b

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    :try_start_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "wifi_sound_timestamp"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-interface {v5, v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v5, "wifi_notify_sound_count"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->r:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v5, "wifi_notify_sound_start_hour"

    const/16 v6, 0x8

    invoke-virtual {v0, v5, v6}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->r:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v6, "wifi_notify_sound_end_hour"

    invoke-virtual {v5, v6, v14}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    if-lt v9, v0, :cond_6

    if-lt v9, v5, :cond_7

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->r:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v5, "wifi_notify_sound_max_count"

    invoke-virtual {v0, v5, v13}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v5, "wifi_notify_sound_count"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lt v5, v0, :cond_8

    move v0, v1

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->r:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v6, "wifi_notify_sound_interval"

    const-wide/32 v9, 0x1b7740

    invoke-virtual {v0, v6, v9, v10}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v9

    const-string/jumbo v0, "wifi_sound_last_timestamp"

    const-wide/16 v11, -0x1

    invoke-interface {v4, v0, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    sub-long v11, v7, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v0, v11, v9

    if-gez v0, :cond_9

    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->r:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v6, "wifi_notify_sound_max_count_pershop"

    invoke-virtual {v0, v6, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-le v6, v0, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->r:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v9, "wifi_notify_sound_max_count_total_pershop"

    invoke-virtual {v0, v9, v13}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-le v9, v0, :cond_b

    move v0, v1

    goto/16 :goto_0

    :cond_b
    :try_start_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wifi_sound_last_timestamp"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wifi_notify_sound_count"

    add-int/lit8 v4, v5, 0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v6, 0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v9, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v0, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isShowShopPostForPeriod  START.  spKey=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] sign=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v2, "isShowShopPostForPeriod. json is empty. return true"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-class v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopPostDo;->updateTimeMillis:J

    sub-long/2addr v2, v4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isShowShopPostForPeriod. timeCost=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isShowShopPostForPeriod. if(timeCost:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<=SHOW_SHOP_POST_PERIOD:1800000) return false;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isShowShopPostInterval sign=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private e()Lcom/alipay/android/phone/nfd/nfdservice/biz/v;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->n:Lcom/alipay/android/phone/nfd/nfdservice/biz/v;

    if-nez v0, :cond_1

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/v;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->n:Lcom/alipay/android/phone/nfd/nfdservice/biz/v;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->n:Lcom/alipay/android/phone/nfd/nfdservice/biz/v;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->p:Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/p;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/p;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)V

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->p:Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->p:Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/v;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/w;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->n:Lcom/alipay/android/phone/nfd/nfdservice/biz/v;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/nfd/nfdservice/biz/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "cancel"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 6

    monitor-enter p0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[sendNotifyForWifiConnected] title="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " content=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] notificationType=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] nfdWifiDetailInfo mac=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iget-object v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "event=[sendNotifyForWifiConnected] isAutoNFDEnabled == false . return."

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v2, "event=[sendNotifyForWifiConnected] Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {p4}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d:I

    if-ne v0, p3, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {v0, p4}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->isSame(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "event=[sendNotifyForWifiConnected] Existing notification. return."

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iput-object p4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p4}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[sendNotify] title="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " content=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] notificationType=[0]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "event=[sendNotify] isAutoNFDEnabled == false . return."

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->h:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {p3}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->d:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    const-string/jumbo v1, "event=[sendNotify] Existing notification. return."

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event=[sendNotify] fail. title=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] content=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_3
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
