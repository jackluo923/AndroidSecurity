.class final Lcom/alipay/android/phone/home/ui/aa;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/aa;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/aa;)Lcom/alipay/android/phone/home/ui/HomeFragment;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aa;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/home/ads/Advert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aa;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    # getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->w:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$2(Lcom/alipay/android/phone/home/ui/HomeFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/home/ui/ab;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/ui/ab;-><init>(Lcom/alipay/android/phone/home/ui/aa;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void
.end method
