.class public final Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:Z

.field private b:Landroid/view/View;

.field private c:Lcom/alipay/mobile/common/animation/RotateAnimationListener;


# direct methods
.method public constructor <init>(ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->a:Z

    iput-object p2, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->b:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;)Lcom/alipay/mobile/common/animation/RotateAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->c:Lcom/alipay/mobile/common/animation/RotateAnimationListener;

    return-object v0
.end method


# virtual methods
.method public final getmRotateAnimationListener()Lcom/alipay/mobile/common/animation/RotateAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->c:Lcom/alipay/mobile/common/animation/RotateAnimationListener;

    return-object v0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->b:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;

    iget-boolean v2, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->a:Z

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener$SwapView;-><init>(Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final setmRotateAnimationListener(Lcom/alipay/mobile/common/animation/RotateAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/animation/Rotate3dAnimationListener;->c:Lcom/alipay/mobile/common/animation/RotateAnimationListener;

    return-void
.end method
