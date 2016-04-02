.class Lcom/millennialmedia/android/BridgeMMInlineVideo$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/millennialmedia/android/MMJSResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMInlineVideo;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$5;->this$0:Lcom/millennialmedia/android/BridgeMMInlineVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$5;->this$0:Lcom/millennialmedia/android/BridgeMMInlineVideo;

    iget-object v0, v0, Lcom/millennialmedia/android/BridgeMMInlineVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getMMLayout()Lcom/millennialmedia/android/MMLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->stopVideo()V

    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$5;->call()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
