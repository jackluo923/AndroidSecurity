.class Lcom/millennialmedia/android/InlineVideoView$MediaController$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/InlineVideoView$MediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v2, v2, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v2

    iput v2, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v4, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

    if-ne v1, v3, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v2, v2, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->repositionVideoLayout()V

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    # invokes: Lcom/millennialmedia/android/InlineVideoView;->resumeInternal(Z)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->access$500(Lcom/millennialmedia/android/InlineVideoView;Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v3, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v2, v2, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->fullScreenVideoLayout()V

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$MediaController$1;->this$1:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$MediaController;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    # invokes: Lcom/millennialmedia/android/InlineVideoView;->resumeInternal(Z)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->access$500(Lcom/millennialmedia/android/InlineVideoView;Z)V

    goto :goto_0
.end method
