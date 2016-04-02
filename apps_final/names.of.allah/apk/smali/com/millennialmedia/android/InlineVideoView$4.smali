.class Lcom/millennialmedia/android/InlineVideoView$4;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/InlineVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->transparentHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->transparentHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$4;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->removeBlackView()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
