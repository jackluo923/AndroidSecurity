.class final Lcom/alipay/android/app/flybird/ui/window/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field final synthetic d:I

.field final synthetic e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/n;->a:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/n;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/window/n;->c:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    iput p5, p0, Lcom/alipay/android/app/flybird/ui/window/n;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/n;->e:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/o;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/o;-><init>(Lcom/alipay/android/app/flybird/ui/window/n;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

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
