.class Lcom/ali/user/mobile/webview/WebViewActivity$1;
.super Landroid/webkit/WebView;
.source "WebViewActivity.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/webview/WebViewActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/webview/WebViewActivity$1;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    .line 119
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity$1;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/ali/user/mobile/webview/WebViewActivity$1;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/webview/WebViewActivity$1;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    iget-object v2, v2, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    .line 127
    iget-object v3, p0, Lcom/ali/user/mobile/webview/WebViewActivity$1;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    iget-object v3, v3, Lcom/ali/user/mobile/webview/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    .line 125
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ali/user/mobile/webview/WebViewActivity$1;->onScrollChanged(IIII)V

    .line 131
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 135
    :goto_0
    return v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string/jumbo v1, "WebViewActivity"

    .line 134
    const-string/jumbo v2, "exception when call system onTouchEvent"

    .line 133
    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    const/4 v0, 0x1

    goto :goto_0
.end method
