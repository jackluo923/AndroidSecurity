.class Lcom/adsdk/sdk/video/SDKVideoView$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/SDKVideoView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    const-string v0, "SDKVideoView surfaceChanged"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-static {v0, p3}, Lcom/adsdk/sdk/video/SDKVideoView;->access$14(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-static {v0, p4}, Lcom/adsdk/sdk/video/SDKVideoView;->access$15(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # invokes: Lcom/adsdk/sdk/video/SDKVideoView;->setVideoDisplaySize()V
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$6(Lcom/adsdk/sdk/video/SDKVideoView;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "Surface created"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$16(Lcom/adsdk/sdk/video/SDKVideoView;Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$17(Lcom/adsdk/sdk/video/SDKVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # invokes: Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$18(Lcom/adsdk/sdk/video/SDKVideoView;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "Surface destroyed"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$16(Lcom/adsdk/sdk/video/SDKVideoView;Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$7;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x1

    # invokes: Lcom/adsdk/sdk/video/SDKVideoView;->release(Z)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$19(Lcom/adsdk/sdk/video/SDKVideoView;Z)V

    return-void
.end method
