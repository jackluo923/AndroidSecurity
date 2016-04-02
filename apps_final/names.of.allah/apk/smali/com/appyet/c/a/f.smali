.class final Lcom/appyet/c/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/appyet/c/a/a;

.field private b:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/appyet/c/a/a;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/f;->a:Lcom/appyet/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appyet/c/a/f;->b:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/a/f;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

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
