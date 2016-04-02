.class Lcom/inmobi/androidsdk/impl/net/WebviewLoader$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/net/WebviewLoader;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$c;->b:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$c;->b:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$c;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->a(Lcom/inmobi/androidsdk/impl/net/WebviewLoader;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$c;->b:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->a(Lcom/inmobi/androidsdk/impl/net/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$MyWebViewClient;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$MyWebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$c;->b:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->a(Lcom/inmobi/androidsdk/impl/net/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$c;->b:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->a(Lcom/inmobi/androidsdk/impl/net/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$c;->b:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->a(Lcom/inmobi/androidsdk/impl/net/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Exception init webview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
