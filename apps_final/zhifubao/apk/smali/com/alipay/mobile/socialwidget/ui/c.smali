.class final Lcom/alipay/mobile/socialwidget/ui/c;
.super Ljava/lang/Object;
.source "GuideAnimationCreator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/c;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/c;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    return-object v0
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/c;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/c;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->c(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/c;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->d(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/d;-><init>(Lcom/alipay/mobile/socialwidget/ui/c;)V

    .line 108
    const-wide/16 v2, 0x1f4

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
