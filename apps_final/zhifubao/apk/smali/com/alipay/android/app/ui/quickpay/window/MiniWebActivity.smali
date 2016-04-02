.class public Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;
.super Lcom/alipay/android/app/AbsActivity;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/ProgressBar;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/TextView;

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->h:Landroid/widget/ProgressBar;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->j:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a()Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_0
    const-string/jumbo v0, "mini_webView_frame"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    const/16 v3, 0x1a0a

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setId(I)V

    const-string/jumbo v0, "mini_webview_back"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    const-string/jumbo v0, "title_back_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/window/ao;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/ui/quickpay/window/ao;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string/jumbo v0, "mini_webview_forward"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    const-string/jumbo v0, "mini_webview_refresh"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->f:Landroid/widget/ImageView;

    const-string/jumbo v0, "mini_web_title"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->j:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string/jumbo v0, "mini_web_ProgressBar_loading"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->h:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/helper/MspConfig;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "setDomStorageEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ap;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/window/ap;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ar;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/window/ar;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/as;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/window/as;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/at;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/window/at;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->f:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/au;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/window/au;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "removeJavascriptInterface"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "searchBoxJavaBridge_"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    move v0, v1

    :goto_3
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static b()V
    .locals 2

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b()V

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->i:Ljava/lang/String;

    const-string/jumbo v1, "cookie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->l:Ljava/lang/String;

    const-string/jumbo v1, "from_mcashier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->k:Z

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/util/Utils;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    const-string/jumbo v0, "mini_web_view"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->f:Landroid/widget/ImageView;

    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->k:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b()V

    :cond_5
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onDestroy()V

    return-void
.end method
