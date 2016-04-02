.class Lae/gov/mol/fragment/eTasheel/WebviewActivity$FaceBookClient;
.super Landroid/webkit/WebViewClient;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceBookClient"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/WebviewActivity;


# direct methods
.method private constructor <init>(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity$FaceBookClient;->this$0:Lae/gov/mol/fragment/eTasheel/WebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/fragment/eTasheel/WebviewActivity;Lae/gov/mol/fragment/eTasheel/WebviewActivity$FaceBookClient;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/eTasheel/WebviewActivity$FaceBookClient;-><init>(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 111
    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->flag:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity$FaceBookClient;->this$0:Lae/gov/mol/fragment/eTasheel/WebviewActivity;

    # getter for: Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->access$1(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->flag:Z

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->flag:Z

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 105
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 106
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity$FaceBookClient;->this$0:Lae/gov/mol/fragment/eTasheel/WebviewActivity;

    # getter for: Lae/gov/mol/fragment/eTasheel/WebviewActivity;->requestUrl:Ljava/lang/String;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->access$0(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
