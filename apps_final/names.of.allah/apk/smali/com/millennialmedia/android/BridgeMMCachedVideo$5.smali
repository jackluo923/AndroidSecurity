.class Lcom/millennialmedia/android/BridgeMMCachedVideo$5;
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
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMCachedVideo;

.field final synthetic val$vpa:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;->this$0:Lcom/millennialmedia/android/BridgeMMCachedVideo;

    iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;->val$vpa:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;->val$vpa:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->restartVideo()V

    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;->call()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
