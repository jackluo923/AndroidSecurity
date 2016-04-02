.class Lcom/millennialmedia/android/BridgeMMPasteboard;
.super Lcom/millennialmedia/android/MMJSObject;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getPasteboardContents(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMPasteboard;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/android/BridgeMMPasteboard$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMPasteboard$1;-><init>(Lcom/millennialmedia/android/BridgeMMPasteboard;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMPasteboard;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToPasteboard(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMPasteboard;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/android/BridgeMMPasteboard$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/android/BridgeMMPasteboard$2;-><init>(Lcom/millennialmedia/android/BridgeMMPasteboard;Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMPasteboard;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
