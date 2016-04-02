.class public final Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;


# direct methods
.method private constructor <init>(Landroid/view/View;ZLcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->a:Landroid/view/View;

    iput-boolean p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->b:Z

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->c:Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {p0, v0, v1, p1}, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->a(Landroid/view/View;ZFLcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;)V

    return-void
.end method

.method private static a(Landroid/view/View;ZFLcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/animation/a;

    const/4 v1, 0x0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/animation/a;-><init>(FFFFZ)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/animation/a;->setDuration(J)V

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/widget/animation/a;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/animation/a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;

    invoke-direct {v1, p0, p1, p3}, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;-><init>(Landroid/view/View;ZLcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/animation/a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static b(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;)V
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {p0, v0, v1, p1}, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->a(Landroid/view/View;ZFLcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->a:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/animation/b;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->a:Landroid/view/View;

    iget-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->b:Z

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D;->c:Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/android/app/ui/quickpay/widget/animation/b;-><init>(Landroid/view/View;ZLcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;)V

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
