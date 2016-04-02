.class Lcom/millennialmedia/android/InlineVideoView$3;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/InlineVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$3;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$3;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$3;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    # invokes: Lcom/millennialmedia/android/InlineVideoView;->updateVideoSeekTime()V
    invoke-static {v0}, Lcom/millennialmedia/android/InlineVideoView;->access$100(Lcom/millennialmedia/android/InlineVideoView;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$3;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$3;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
