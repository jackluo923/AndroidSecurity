.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MainSearchFragment.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/m;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    .line 288
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 290
    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 291
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 292
    return-void
.end method
