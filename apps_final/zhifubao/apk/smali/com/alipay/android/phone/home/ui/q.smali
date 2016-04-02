.class final Lcom/alipay/android/phone/home/ui/q;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/BannerView;

.field private final synthetic b:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/BannerView;Landroid/widget/ViewFlipper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/q;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/q;->b:Landroid/widget/ViewFlipper;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/q;->b:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/q;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$anim;->a:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/q;->b:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/q;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$anim;->b:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/q;->b:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 104
    return-void
.end method
