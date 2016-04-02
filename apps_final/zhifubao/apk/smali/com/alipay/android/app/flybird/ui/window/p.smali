.class final Lcom/alipay/android/app/flybird/ui/window/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroid/widget/RelativeLayout;

.field final synthetic f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;IILandroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/p;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/p;->b:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    iput p4, p0, Lcom/alipay/android/app/flybird/ui/window/p;->c:I

    iput p5, p0, Lcom/alipay/android/app/flybird/ui/window/p;->d:I

    iput-object p6, p0, Lcom/alipay/android/app/flybird/ui/window/p;->e:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/p;->b:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/p;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->b:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "flybird_title_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->d:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/p;->a:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->c:I

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/q;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/q;-><init>(Lcom/alipay/android/app/flybird/ui/window/p;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->g(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/p;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->d(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/p;->f:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->h(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Z

    goto/16 :goto_1
.end method
