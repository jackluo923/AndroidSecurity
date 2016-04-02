.class Lcom/millennialmedia/android/VideoPlayerActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->pauseVideoByUser()V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget v1, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    goto :goto_1
.end method
