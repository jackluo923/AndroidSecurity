.class final Lcom/alipay/android/app/flybird/ui/window/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/p;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/q;->a:Lcom/alipay/android/app/flybird/ui/window/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/q;->a:Lcom/alipay/android/app/flybird/ui/window/p;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/q;->a:Lcom/alipay/android/app/flybird/ui/window/p;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/q;->a:Lcom/alipay/android/app/flybird/ui/window/p;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/q;->a:Lcom/alipay/android/app/flybird/ui/window/p;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/window/p;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;

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
