.class final Lcom/alipay/mobile/socialwidget/ui/i;
.super Ljava/lang/Object;
.source "GuideAnimationCreator.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    return-object v0
.end method


# virtual methods
.method public final display(Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/j;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/socialwidget/ui/j;-><init>(Lcom/alipay/mobile/socialwidget/ui/i;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method
