.class final Lcom/appyet/manager/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic a:Lcom/appyet/manager/as;


# direct methods
.method constructor <init>(Lcom/appyet/manager/as;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/bc;->a:Lcom/appyet/manager/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bc;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->j(Lcom/appyet/manager/as;)Lcom/appyet/activity/MediaPlayerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bc;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bc;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bc;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    mul-int/2addr v0, p2

    div-int/lit8 v1, v0, 0x64

    iget-object v0, p0, Lcom/appyet/manager/bc;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->j(Lcom/appyet/manager/as;)Lcom/appyet/activity/MediaPlayerActivity;

    move-result-object v0

    const v2, 0x7f0a00c7

    invoke-virtual {v0, v2}, Lcom/appyet/activity/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
