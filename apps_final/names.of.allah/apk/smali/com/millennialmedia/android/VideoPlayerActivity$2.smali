.class Lcom/millennialmedia/android/VideoPlayerActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iput-object p2, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->val$action:Ljava/lang/String;

    const-string v1, "restartVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->restartVideo()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->val$action:Ljava/lang/String;

    const-string v1, "endVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$2;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->endVideo()V

    goto :goto_0
.end method
