.class Lcom/ali/user/mobile/webview/HtmlActivity$3;
.super Landroid/webkit/WebViewClient;
.source "HtmlActivity.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/webview/HtmlActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/webview/HtmlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/webview/HtmlActivity$3;->this$0:Lcom/ali/user/mobile/webview/HtmlActivity;

    .line 154
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity$3;->this$0:Lcom/ali/user/mobile/webview/HtmlActivity;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/webview/HtmlActivity;->processCustomLogic(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 158
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
