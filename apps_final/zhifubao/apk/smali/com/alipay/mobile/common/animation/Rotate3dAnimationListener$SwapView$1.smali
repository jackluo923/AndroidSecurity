.class Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView$1;->this$1:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView$1;->this$1:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;

    iget-object v0, v0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->c:Lcom/alipay/mobile/common/animation/RotateAnimationListener;
    invoke-static {v0}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$100(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Lcom/alipay/mobile/common/animation/RotateAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView$1;->this$1:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;

    iget-object v0, v0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;->this$0:Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;

    # getter for: Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->c:Lcom/alipay/mobile/common/animation/RotateAnimationListener;
    invoke-static {v0}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->access$100(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Lcom/alipay/mobile/common/animation/RotateAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/animation/RotateAnimationListener;->onRotateFinished()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
