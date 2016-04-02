.class Lcom/adsdk/sdk/video/SDKVideoView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/SDKVideoView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$6;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$6;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-static {v0, p2}, Lcom/adsdk/sdk/video/SDKVideoView;->access$13(Lcom/adsdk/sdk/video/SDKVideoView;I)V

    return-void
.end method
