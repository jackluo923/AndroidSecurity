.class abstract Lcom/millennialmedia/android/MMWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private cachedExecutor:Ljava/util/concurrent/ExecutorService;

.field isLastMMCommandResize:Z

.field mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

.field redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebViewClient;->cachedExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/millennialmedia/android/MMWebViewClient;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/MMWebView;->isOriginalUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebViewClient;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    invoke-virtual {v1, p2}, Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished webview: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-virtual {v1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->getAdProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->setAdProperties(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebViewClient;->setMraidState(Lcom/millennialmedia/android/MMWebView;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onPageStarted: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebViewClient;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;->onPageStarted(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    const-string v1, "loading"

    iput-object v1, v0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMWebView;->requiresPreAdSizeFix:Z

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Error: %s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method abstract setMraidState(Lcom/millennialmedia/android/MMWebView;)V
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/MMWebView;->isOriginalUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@@@@@@@@@@SHOULDOVERRIDELOADING@@@@@@@@@@@@@ Url is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mmsdk:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Running JS bridge command: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/millennialmedia/android/MMCommand;

    check-cast p1, Lcom/millennialmedia/android/MMWebView;

    invoke-direct {v0, p1, p2}, Lcom/millennialmedia/android/MMCommand;-><init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMCommand;->isResizeCommand()Z

    move-result v2

    iput-boolean v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->isLastMMCommandResize:Z

    iget-object v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->cachedExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-virtual {v3}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isExpandingToUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iput-object p2, v2, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iget-wide v3, v0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    iput-wide v3, v2, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebViewClient;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/HttpRedirection;->startActivityFromUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method
