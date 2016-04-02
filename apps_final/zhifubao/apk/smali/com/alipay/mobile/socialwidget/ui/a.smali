.class final Lcom/alipay/mobile/socialwidget/ui/a;
.super Ljava/lang/Object;
.source "GuideAnimationCreator.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APCircleImageView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;Lcom/alipay/mobile/commonui/widget/APCircleImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/a;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/a;->b:Lcom/alipay/mobile/commonui/widget/APCircleImageView;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final display(Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/a;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/b;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/a;->b:Lcom/alipay/mobile/commonui/widget/APCircleImageView;

    invoke-direct {v1, p0, v2, p2}, Lcom/alipay/mobile/socialwidget/ui/b;-><init>(Lcom/alipay/mobile/socialwidget/ui/a;Lcom/alipay/mobile/commonui/widget/APCircleImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
