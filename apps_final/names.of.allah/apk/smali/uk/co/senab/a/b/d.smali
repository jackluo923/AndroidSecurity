.class final Luk/co/senab/a/b/d;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Luk/co/senab/a/b/c;


# direct methods
.method constructor <init>(Luk/co/senab/a/b/c;)V
    .locals 0

    iput-object p1, p0, Luk/co/senab/a/b/d;->a:Luk/co/senab/a/b/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Luk/co/senab/a/b/d;->a:Luk/co/senab/a/b/c;

    iget-object v0, v0, Luk/co/senab/a/b/c;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Luk/co/senab/a/b/d;->a:Luk/co/senab/a/b/c;

    invoke-virtual {v0}, Luk/co/senab/a/b/c;->e()V

    return-void
.end method
