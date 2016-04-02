.class Lcom/millennialmedia/android/VideoPlayerActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$5;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$5;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$5;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x1

    # setter for: Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$102(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$5;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->dismiss()V

    :cond_0
    return-void
.end method
