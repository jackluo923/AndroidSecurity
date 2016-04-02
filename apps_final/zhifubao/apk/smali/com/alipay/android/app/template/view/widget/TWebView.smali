.class public Lcom/alipay/android/app/template/view/widget/TWebView;
.super Lcom/alipay/android/app/template/view/widget/TElement;
.source "TWebView.java"


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TWebView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 51
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "searchBoxJavaBridge_"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "accessibility"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "accessibilityTraversal"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TWebView$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TWebView$1;-><init>(Lcom/alipay/android/app/template/view/widget/TWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 79
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->destroy()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    .line 119
    return-void
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TWebView$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TWebView$2;-><init>(Lcom/alipay/android/app/template/view/widget/TWebView;)V

    .line 112
    const-wide/16 v2, 0x64

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    return-void
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    return-object v0
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setSrc"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setSrc"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 30
    const-string/jumbo v2, "src"

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 31
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    const-string/jumbo v0, "about:blank"

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    goto :goto_0
.end method
