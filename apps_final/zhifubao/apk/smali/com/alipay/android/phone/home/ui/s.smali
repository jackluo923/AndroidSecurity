.class final Lcom/alipay/android/phone/home/ui/s;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    iput p2, p0, Lcom/alipay/android/phone/home/ui/s;->b:I

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 303
    const-string/jumbo v0, "BannerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBannerClick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/phone/home/ui/s;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v2}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/home/ui/s;->b:I

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v3}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a(Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/home/ui/s;->b:I

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v2}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ads/Advert;

    .line 305
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->b(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b(Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;)Lcom/alipay/android/phone/home/ui/BannerView;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->g:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->access$1(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/s;->a:Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b(Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;)Lcom/alipay/android/phone/home/ui/BannerView;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->g:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->access$1(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v2}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getId()Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->isDefault()Z

    move-result v4

    .line 307
    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;->onBannerAdClick(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 310
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 316
    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 314
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0
.end method
