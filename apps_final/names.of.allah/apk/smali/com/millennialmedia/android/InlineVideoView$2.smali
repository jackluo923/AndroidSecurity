.class Lcom/millennialmedia/android/InlineVideoView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/InlineVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    if-nez v0, :cond_0

    const-string v0, "MMLayout weak reference broken"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v4, v4, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v4, v4, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(%f,%f)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->loadUrl(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$2;->this$0:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->show()V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
