.class public Lcom/taobao/android/ssologinwrapper/utils/Utils;
.super Ljava/lang/Object;


# static fields
.field public static BASE_API_URL_HTTP:Ljava/lang/String;

.field public static BASE_API_URL_HTTPS:Ljava/lang/String;

.field public static currentEnviroment:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "http://api.m.taobao.com/rest/api3.do?"

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Utils;->BASE_API_URL_HTTP:Ljava/lang/String;

    const-string/jumbo v0, "https://api.m.taobao.com/rest/api3.do?"

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Utils;->BASE_API_URL_HTTPS:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/taobao/android/ssologinwrapper/utils/Utils;->currentEnviroment:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "http://%s/rest/api3.do?"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Utils;->BASE_API_URL_HTTP:Ljava/lang/String;

    const-string/jumbo v0, "https://%s/rest/api3.do?"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Utils;->BASE_API_URL_HTTPS:Ljava/lang/String;

    return-void
.end method

.method public static createGWLParam(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListParam;
    .locals 8

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListParam;

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getTtid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getServerTime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createIVDParam(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;
    .locals 9

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getTtid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getServerTime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getApdid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getUmidToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createSVIParam(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;
    .locals 9

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getTtid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getServerTime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getApdid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getUmidToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static findViewById(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrawableById(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpsProxyInfo(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 4

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    :try_start_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    if-eqz v2, :cond_2

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "https.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    if-nez v0, :cond_1

    :try_start_0
    const-string/jumbo v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static initHTTPSVerifyRelate(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;

    invoke-direct {v0, p0}, Lcom/taobao/android/ssologinwrapper/remote/httpscer/TaoX509TrustManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/remote/httpscer/X509TrustManagerStrategy;->setX509TrustManager(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static switchEnviroment(I)V
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "api.m.taobao.com"

    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput v0, Lcom/taobao/android/ssologinwrapper/utils/Utils;->currentEnviroment:I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "api.m.taobao.com"

    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->a(Ljava/lang/String;)V

    sput p0, Lcom/taobao/android/ssologinwrapper/utils/Utils;->currentEnviroment:I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "api.wapa.taobao.com"

    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->a(Ljava/lang/String;)V

    sput p0, Lcom/taobao/android/ssologinwrapper/utils/Utils;->currentEnviroment:I

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "api.waptest.taobao.com"

    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->a(Ljava/lang/String;)V

    sput p0, Lcom/taobao/android/ssologinwrapper/utils/Utils;->currentEnviroment:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
