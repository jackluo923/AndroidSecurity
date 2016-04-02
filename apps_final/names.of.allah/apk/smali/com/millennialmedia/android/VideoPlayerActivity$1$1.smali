.class Lcom/millennialmedia/android/VideoPlayerActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/VideoPlayerActivity$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1$1;->this$1:Lcom/millennialmedia/android/VideoPlayerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$1$1;->this$1:Lcom/millennialmedia/android/VideoPlayerActivity$1;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity$1;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->enableButtons()V

    return-void
.end method
