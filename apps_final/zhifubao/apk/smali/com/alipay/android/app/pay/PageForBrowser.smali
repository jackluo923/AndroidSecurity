.class public Lcom/alipay/android/app/pay/PageForBrowser;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/android/app/IAlixPay;

.field private c:Ljava/lang/Integer;

.field private d:Z

.field private e:Landroid/content/ServiceConnection;

.field private f:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->b:Lcom/alipay/android/app/IAlixPay;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->c:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->d:Z

    new-instance v0, Lcom/alipay/android/app/pay/h;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/h;-><init>(Lcom/alipay/android/app/pay/PageForBrowser;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->e:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/alipay/android/app/pay/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/i;-><init>(Lcom/alipay/android/app/pay/PageForBrowser;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->f:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/PageForBrowser;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->b:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IRemoteServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->f:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/android/app/pay/PageForBrowser;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/pay/PageForBrowser;)Lcom/alipay/android/app/IAlixPay;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->b:Lcom/alipay/android/app/IAlixPay;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "={"

    if-eqz v2, :cond_1

    :try_start_0
    array-length v1, v2

    if-lez v1, :cond_1

    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "temp"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v2, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    aget-object v0, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    aget-object v5, v2, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "callBackUrl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "temp"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  s2= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/android/app/pay/PageForBrowser;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/pay/PageForBrowser;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->d:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/PageForBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/PageForBrowser;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "data= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "alipaymsp://securitypay/?"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "info= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.android.app.IAlixPay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/alipay/android/app/pay/PageForBrowser;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->a:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "enter pay"

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->d:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/pay/PageForBrowser;->d:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/app/pay/j;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/pay/j;-><init>(Lcom/alipay/android/app/pay/PageForBrowser;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/PageForBrowser;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/PageForBrowser;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/PageForBrowser;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
