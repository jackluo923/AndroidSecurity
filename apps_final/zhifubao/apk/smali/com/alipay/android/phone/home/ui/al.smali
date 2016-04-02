.class final Lcom/alipay/android/phone/home/ui/al;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFragment;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APImageView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/mobile/commonui/widget/APImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/al;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/al;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 621
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 624
    if-eqz v0, :cond_0

    .line 625
    new-instance v1, Lcom/alipay/android/phone/home/ui/am;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/al;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-direct {v1, p0, v2, p1}, Lcom/alipay/android/phone/home/ui/am;-><init>(Lcom/alipay/android/phone/home/ui/al;Lcom/alipay/mobile/commonui/widget/APImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 632
    :cond_0
    return-void
.end method
