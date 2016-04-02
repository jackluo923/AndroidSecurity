.class public Lcom/alipay/android/phone/home/ui/NearAnimHelper;
.super Ljava/lang/Object;
.source "NearAnimHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field a:Z

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/animation/Animation;

.field e:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->a:Z

    .line 22
    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->b:Landroid/view/View;

    .line 23
    iput-object p3, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->c:Landroid/view/View;

    .line 24
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->d:Landroid/view/animation/Animation;

    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->d:Landroid/view/animation/Animation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->d:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->d:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 30
    sget v0, Lcom/alipay/android/phone/openplatform/R$anim;->c:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->e:Landroid/view/animation/Animation;

    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->a:Z

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->d:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->e:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iput-boolean v2, p0, Lcom/alipay/android/phone/home/ui/NearAnimHelper;->a:Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
