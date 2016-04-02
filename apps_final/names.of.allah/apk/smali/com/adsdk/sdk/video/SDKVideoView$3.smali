.class Lcom/adsdk/sdk/video/SDKVideoView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/SDKVideoView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$3;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$3;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$0(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$3;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$8(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$3;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$3;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->show(I)V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$3;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$9(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$3;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$9(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$3;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$3;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->access$10(Lcom/adsdk/sdk/video/SDKVideoView;Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_1
    return-void
.end method
