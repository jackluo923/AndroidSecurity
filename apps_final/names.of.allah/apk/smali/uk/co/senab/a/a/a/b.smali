.class final Luk/co/senab/a/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Luk/co/senab/a/a/a/a;


# direct methods
.method constructor <init>(Luk/co/senab/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Luk/co/senab/a/a/a/b;->a:Luk/co/senab/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Luk/co/senab/a/a/a/b;->a:Luk/co/senab/a/a/a/a;

    iget-object v0, v0, Luk/co/senab/a/a/a/a;->a:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Luk/co/senab/a/a/a/b;->a:Luk/co/senab/a/a/a/a;

    iget-object v0, v0, Luk/co/senab/a/b/c;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Luk/co/senab/a/a/a/b;->a:Luk/co/senab/a/a/a/a;

    invoke-virtual {v0}, Luk/co/senab/a/a/a/a;->e()V

    :cond_1
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
