.class final Lcom/appyet/manager/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/appyet/manager/as;


# direct methods
.method constructor <init>(Lcom/appyet/manager/as;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/az;->a:Lcom/appyet/manager/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-eqz p3, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/az;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/manager/az;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    if-gez p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/appyet/manager/az;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/az;->a:Lcom/appyet/manager/as;

    invoke-static {v0}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/appyet/manager/az;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/manager/az;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->h(Lcom/appyet/manager/as;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureCurrentPosition(Ljava/lang/Integer;)V

    :cond_1
    iget-object v1, p0, Lcom/appyet/manager/az;->a:Lcom/appyet/manager/as;

    invoke-static {v1}, Lcom/appyet/manager/as;->f(Lcom/appyet/manager/as;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/appyet/manager/az;->a:Lcom/appyet/manager/as;

    invoke-virtual {v0}, Lcom/appyet/manager/as;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    move v0, p2

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
