.class Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field final synthetic this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->b:Landroid/view/View;
    invoke-static {v0}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$000(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v7

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->b:Landroid/view/View;
    invoke-static {v0}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$000(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v7

    iget-boolean v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->c:Lcom/alipay/mobile/common/animation/RotateAnimationListener;
    invoke-static {v0}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$100(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Lcom/alipay/mobile/common/animation/RotateAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->c:Lcom/alipay/mobile/common/animation/RotateAnimationListener;
    invoke-static {v0}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$100(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Lcom/alipay/mobile/common/animation/RotateAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/animation/RotateAnimationListener;->onFrontToBack()V

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->b:Landroid/view/View;
    invoke-static {v5}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$000(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;-><init>(FFFFFZ)V

    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView$1;-><init>(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->b:Landroid/view/View;
    invoke-static {v1}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$000(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->c:Lcom/alipay/mobile/common/animation/RotateAnimationListener;
    invoke-static {v0}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$100(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Lcom/alipay/mobile/common/animation/RotateAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->c:Lcom/alipay/mobile/common/animation/RotateAnimationListener;
    invoke-static {v0}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$100(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Lcom/alipay/mobile/common/animation/RotateAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/animation/RotateAnimationListener;->onBackToFront()V

    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->b:Landroid/view/View;
    invoke-static {v5}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$000(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/animation/Rotate3dAnimation;-><init>(FFFFFZ)V

    goto :goto_0
.end method
