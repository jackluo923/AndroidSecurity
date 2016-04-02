.class Lcom/alipay/android/app/template/view/widget/TWebView$2;
.super Ljava/lang/Object;
.source "TWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TWebView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TWebView;->a(Lcom/alipay/android/app/template/view/widget/TWebView;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TWebView;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TWebView;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TWebView;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getElementView()Landroid/view/View;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TWebView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    const-string/jumbo v0, "about:blank"

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TWebView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TWebView;->a(Lcom/alipay/android/app/template/view/widget/TWebView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TWebView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TWebView;->a(Lcom/alipay/android/app/template/view/widget/TWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TWebView;->a(Lcom/alipay/android/app/template/view/widget/TWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TWebView$2;->a:Lcom/alipay/android/app/template/view/widget/TWebView;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TWebView;->a(Lcom/alipay/android/app/template/view/widget/TWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    goto :goto_0
.end method
