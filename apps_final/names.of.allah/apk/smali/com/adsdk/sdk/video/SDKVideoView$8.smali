.class Lcom/adsdk/sdk/video/SDKVideoView$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/SDKVideoView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Time Event Thread started"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$20(Lcom/adsdk/sdk/video/SDKVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v3, v0, 0x3e8

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$21(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v2, v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    # getter for: Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->access$22(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/os/ConditionVariable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Time Event Thread stopped"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    iget-object v4, p0, Lcom/adsdk/sdk/video/SDKVideoView$8;->this$0:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v4, v4, Lcom/adsdk/sdk/video/SDKVideoView;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/adsdk/sdk/video/SDKVideoView$8$1;

    invoke-direct {v5, p0, v1, v3}, Lcom/adsdk/sdk/video/SDKVideoView$8$1;-><init>(Lcom/adsdk/sdk/video/SDKVideoView$8;Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time Event Thread error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
