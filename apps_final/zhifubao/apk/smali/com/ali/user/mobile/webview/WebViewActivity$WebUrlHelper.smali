.class public Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/webview/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/webview/WebViewActivity;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/ali/user/mobile/webview/WebViewActivity$WebUrlHelper;->this$0:Lcom/ali/user/mobile/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method


# virtual methods
.method public checkWebviewBridge(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 317
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string/jumbo v1, "https://www.alipay.com/webviewbridge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x1

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
