.class final Lcom/alipay/android/phone/home/ui/ad;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/ac;

.field private final synthetic b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/ac;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ad;->a:Lcom/alipay/android/phone/home/ui/ac;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/ad;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ad;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ad;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ad;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ", list.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ad;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ad;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ad;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ad;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ad;->a:Lcom/alipay/android/phone/home/ui/ac;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/ac;->a(Lcom/alipay/android/phone/home/ui/ac;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$3(Lcom/alipay/android/phone/home/ui/HomeFragment;)V

    .line 440
    :goto_0
    return-void

    .line 435
    :cond_2
    new-instance v0, Lcom/alipay/android/phone/home/ads/AdsImageLoader;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ad;->a:Lcom/alipay/android/phone/home/ui/ac;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/ac;->a(Lcom/alipay/android/phone/home/ui/ac;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->l:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$4(Lcom/alipay/android/phone/home/ui/HomeFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ad;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 436
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ad;->a:Lcom/alipay/android/phone/home/ui/ac;

    invoke-static {v2}, Lcom/alipay/android/phone/home/ui/ac;->a(Lcom/alipay/android/phone/home/ui/ac;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v2

    # getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->y:Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;
    invoke-static {v2}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$5(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;

    move-result-object v2

    .line 437
    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/ad;->a:Lcom/alipay/android/phone/home/ui/ac;

    invoke-static {v3}, Lcom/alipay/android/phone/home/ui/ac;->a(Lcom/alipay/android/phone/home/ui/ac;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v3}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->h()I

    move-result v3

    .line 438
    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/ad;->a:Lcom/alipay/android/phone/home/ui/ac;

    invoke-static {v4}, Lcom/alipay/android/phone/home/ui/ac;->a(Lcom/alipay/android/phone/home/ui/ac;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/android/phone/home/ui/HomeFragment;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v4}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->g()I

    move-result v4

    .line 435
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/home/ads/AdsImageLoader;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Lcom/alipay/android/phone/home/ads/AdsImageLoaderListener;II)V

    goto :goto_0
.end method
