.class final Lcom/alipay/android/app/ui/quickpay/uielement/ap;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ap;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
