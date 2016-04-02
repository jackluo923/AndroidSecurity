.class Lcom/inmobi/androidsdk/impl/net/WebviewLoader$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/net/WebviewLoader;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$b;->c:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$b;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$b;->c:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->a(Lcom/inmobi/androidsdk/impl/net/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Exception load in webview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
