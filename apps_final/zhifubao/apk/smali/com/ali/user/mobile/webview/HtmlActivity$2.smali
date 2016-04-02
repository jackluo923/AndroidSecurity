.class Lcom/ali/user/mobile/webview/HtmlActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "HtmlActivity.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/webview/HtmlActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/webview/HtmlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/webview/HtmlActivity$2;->this$0:Lcom/ali/user/mobile/webview/HtmlActivity;

    .line 80
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 94
    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity$2;->this$0:Lcom/ali/user/mobile/webview/HtmlActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/webview/HtmlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity$2;->this$0:Lcom/ali/user/mobile/webview/HtmlActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/webview/HtmlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity$2;->this$0:Lcom/ali/user/mobile/webview/HtmlActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/webview/HtmlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
