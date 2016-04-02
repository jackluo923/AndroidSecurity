.class Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$d;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$MyWebViewClient;

    iget-object v2, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$d;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-direct {v1, v2}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$MyWebViewClient;-><init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$JSInterface;

    invoke-direct {v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$JSInterface;-><init>()V

    const-string v2, "iatsdk"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
