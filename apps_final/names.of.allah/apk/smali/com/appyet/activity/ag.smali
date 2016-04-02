.class final Lcom/appyet/activity/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/ag;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/ag;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/appyet/activity/VideoPlayerActivity;->b(Lcom/appyet/activity/VideoPlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/ag;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/appyet/activity/VideoPlayerActivity;->a(Lcom/appyet/activity/VideoPlayerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/appyet/activity/ag;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/appyet/activity/VideoPlayerActivity;->c(Lcom/appyet/activity/VideoPlayerActivity;)Z

    return-void
.end method
