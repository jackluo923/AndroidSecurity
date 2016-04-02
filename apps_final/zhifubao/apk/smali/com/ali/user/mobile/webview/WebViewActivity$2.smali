.class Lcom/ali/user/mobile/webview/WebViewActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/webview/WebViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/webview/WebViewActivity$2;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    .line 212
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 219
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity$2;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    iget-boolean v0, v0, Lcom/ali/user/mobile/webview/WebViewActivity;->allowReadTitle:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity$2;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/webview/WebViewActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 227
    return-void
.end method
