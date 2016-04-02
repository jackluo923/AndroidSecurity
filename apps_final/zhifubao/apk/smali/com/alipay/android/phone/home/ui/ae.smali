.class final Lcom/alipay/android/phone/home/ui/ae;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ae;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/ae;)Lcom/alipay/android/phone/home/ui/HomeFragment;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ae;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    return-object v0
.end method


# virtual methods
.method public final onFail()V
    .locals 2

    .prologue
    .line 469
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v1, "appicon getSpaceInfo fail"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public final onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 3

    .prologue
    .line 453
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appIcon getSpaceInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 455
    sget-object v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ", list.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ae;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    # getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->w:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$2(Lcom/alipay/android/phone/home/ui/HomeFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/home/ui/af;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/ui/af;-><init>(Lcom/alipay/android/phone/home/ui/ae;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    return-void
.end method
