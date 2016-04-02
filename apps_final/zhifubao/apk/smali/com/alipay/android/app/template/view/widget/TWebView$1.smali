.class Lcom/alipay/android/app/template/view/widget/TWebView$1;
.super Landroid/webkit/WebViewClient;
.source "TWebView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TWebView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TWebView$1;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    .line 71
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
