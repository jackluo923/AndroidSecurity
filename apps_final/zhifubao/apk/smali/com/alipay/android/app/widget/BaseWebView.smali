.class public Lcom/alipay/android/app/widget/BaseWebView;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/widget/BaseWebView$a;,
        Lcom/alipay/android/app/widget/BaseWebView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/BaseWebView;->a:Landroid/webkit/WebView;

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/widget/BaseWebView;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/android/app/widget/BaseWebView$b;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/app/widget/BaseWebView$b;-><init>(Lcom/alipay/android/app/widget/BaseWebView;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/BaseWebView;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/android/app/widget/BaseWebView$a;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/app/widget/BaseWebView$a;-><init>(Lcom/alipay/android/app/widget/BaseWebView;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alipay/android/app/widget/BaseWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/widget/BaseWebView;->a:Landroid/webkit/WebView;

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/widget/BaseWebView;->a:Landroid/webkit/WebView;

    return-object v0
.end method
