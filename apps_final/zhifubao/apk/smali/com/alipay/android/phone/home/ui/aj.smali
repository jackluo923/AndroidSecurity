.class final Lcom/alipay/android/phone/home/ui/aj;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/aj;)Lcom/alipay/android/phone/home/ui/HomeFragment;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aj;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    return-object v0
.end method


# virtual methods
.method public final onLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 535
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 538
    if-eqz v0, :cond_0

    .line 539
    new-instance v1, Lcom/alipay/android/phone/home/ui/ak;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/ui/ak;-><init>(Lcom/alipay/android/phone/home/ui/aj;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 546
    :cond_0
    return-void
.end method
