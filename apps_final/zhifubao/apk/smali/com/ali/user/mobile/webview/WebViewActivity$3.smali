.class Lcom/ali/user/mobile/webview/WebViewActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/webview/WebViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/webview/WebViewActivity$3;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    .line 232
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity$3;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/webview/WebViewActivity$3;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    const/16 v2, 0xbb8

    .line 258
    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/webview/WebViewActivity;->toast(Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .prologue
    .line 250
    const-string/jumbo v0, "WebViewActivity"

    const-string/jumbo v1, "\u5df2\u5ffd\u7565\u8bc1\u4e66\u6821\u9a8c\u7684\u9519\u8bef\uff01"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 253
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 236
    const-string/jumbo v0, "WebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 238
    const/4 v0, 0x0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/webview/WebViewActivity$3;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    invoke-virtual {v1, p1, p2}, Lcom/ali/user/mobile/webview/WebViewActivity;->overrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 242
    :catch_0
    move-exception v1

    const-string/jumbo v1, "WebViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "webview\u5185\u8df3\u8f6c\u5730\u5740\u6709\u95ee\u9898"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
