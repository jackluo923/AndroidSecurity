.class final Lcom/alipay/mobile/socialwidget/ui/k;
.super Ljava/lang/Object;
.source "GuideAnimationCreator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/j;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/j;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/k;->a:Lcom/alipay/mobile/socialwidget/ui/j;

    iput p2, p0, Lcom/alipay/mobile/socialwidget/ui/k;->b:I

    iput p3, p0, Lcom/alipay/mobile/socialwidget/ui/k;->c:I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/k;->a:Lcom/alipay/mobile/socialwidget/ui/j;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/j;->a(Lcom/alipay/mobile/socialwidget/ui/j;)Lcom/alipay/mobile/socialwidget/ui/i;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/i;->a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/k;->a:Lcom/alipay/mobile/socialwidget/ui/j;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/j;->a(Lcom/alipay/mobile/socialwidget/ui/j;)Lcom/alipay/mobile/socialwidget/ui/i;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/i;->a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/socialwidget/ui/k;->b:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/k;->a:Lcom/alipay/mobile/socialwidget/ui/j;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/j;->a(Lcom/alipay/mobile/socialwidget/ui/j;)Lcom/alipay/mobile/socialwidget/ui/i;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/i;->a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$string;->e:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    iget v3, p0, Lcom/alipay/mobile/socialwidget/ui/k;->c:I

    .line 205
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;ILjava/lang/String;I)V

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/k;->a:Lcom/alipay/mobile/socialwidget/ui/j;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/j;->a(Lcom/alipay/mobile/socialwidget/ui/j;)Lcom/alipay/mobile/socialwidget/ui/i;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/i;->a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->h(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method
