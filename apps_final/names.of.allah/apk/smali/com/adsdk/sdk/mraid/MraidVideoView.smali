.class Lcom/adsdk/sdk/mraid/MraidVideoView;
.super Lcom/adsdk/sdk/mraid/BaseVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/BaseVideoView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidVideoView$1;

    invoke-direct {v0, p0, p3}, Lcom/adsdk/sdk/mraid/MraidVideoView$1;-><init>(Lcom/adsdk/sdk/mraid/MraidVideoView;Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidVideoView$2;

    invoke-direct {v0, p0, p3}, Lcom/adsdk/sdk/mraid/MraidVideoView$2;-><init>(Lcom/adsdk/sdk/mraid/MraidVideoView;Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const-string v0, "video_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method
