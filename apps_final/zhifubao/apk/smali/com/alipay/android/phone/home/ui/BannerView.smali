.class public Lcom/alipay/android/phone/home/ui/BannerView;
.super Landroid/widget/FrameLayout;
.source "BannerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field a:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

.field private b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

.field private c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

.field private final d:Landroid/widget/AbsListView;

.field private e:Z

.field private f:I

.field private g:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

.field private final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->e:Z

    .line 50
    new-instance v0, Lcom/alipay/android/phone/home/ui/p;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/ui/p;-><init>(Lcom/alipay/android/phone/home/ui/BannerView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Landroid/os/Handler;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/home/ui/BannerView;->a(Landroid/content/Context;Landroid/widget/AbsListView;)V

    .line 66
    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/BannerView;->d:Landroid/widget/AbsListView;

    .line 67
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, 0xa

    const/4 v4, -0x1

    .line 201
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BannerView"

    const-string/jumbo v2, "inittttttttttttttt"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->removeAllViews()V

    .line 203
    sget v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    sget v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    invoke-virtual {p0, v5, v0, v5, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->setPadding(IIII)V

    .line 204
    const v0, -0xa0a07

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->setBackgroundColor(I)V

    .line 205
    new-instance v0, Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/phone/home/ui/BannerViewPager;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    .line 206
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 207
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 210
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 211
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    new-instance v2, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;-><init>(Lcom/alipay/android/phone/home/ui/BannerView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 212
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    .line 214
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 215
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 216
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 217
    const/4 v1, -0x2

    .line 216
    invoke-direct {v0, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 218
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 219
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setPadding(IIII)V

    .line 220
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 223
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$color;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 229
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 230
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 231
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$color;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 234
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->g:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/CirclePageIndicator;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/home/ui/BannerView;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->e:Z

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/home/ui/BannerView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/home/ui/BannerView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->f:I

    return v0
.end method


# virtual methods
.method public hasAdverts()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyBannerViewPager()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 130
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->d:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getMeasuredWidth()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->d:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v1

    .line 192
    sub-int/2addr v0, v1

    .line 194
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->d:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v1

    .line 192
    sub-int/2addr v0, v1

    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 197
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 198
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageScrolled, i:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",i2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->e:Z

    .line 169
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageSelected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    iput p1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->f:I

    .line 175
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->e:Z

    if-eqz v0, :cond_0

    .line 176
    iput-boolean v4, p0, Lcom/alipay/android/phone/home/ui/BannerView;->e:Z

    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a(I)Lcom/alipay/android/phone/home/ads/Advert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getLoopTime()J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->a:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    sget-object v0, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a(I)Lcom/alipay/android/phone/home/ads/Advert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SHOW"

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setAdverts(Ljava/util/List;)V
    .locals 6
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "BannerView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setAdverts, adverts == null:"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 124
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 109
    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/BannerView;->d:Landroid/widget/AbsListView;

    invoke-direct {p0, v0, v3}, Lcom/alipay/android/phone/home/ui/BannerView;->a(Landroid/content/Context;Landroid/widget/AbsListView;)V

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a(Ljava/util/List;)V

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 118
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setVisibility(I)V

    .line 123
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->setCurrentItem(I)V

    goto :goto_2
.end method

.method public setBannerClickListener(Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/BannerView;->g:Lcom/alipay/android/phone/home/ads/BannerAdsClickListener;

    .line 334
    return-void
.end method

.method public startLoop(Z)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 134
    new-instance v0, Lcom/alipay/android/phone/home/ui/r;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/home/ui/r;-><init>(Lcom/alipay/android/phone/home/ui/BannerView;Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public startViewFlip(Ljava/util/List;)V
    .locals 6
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
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 74
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->removeAllViews()V

    .line 75
    sget v0, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    sget v1, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;->c:I

    invoke-virtual {p0, v5, v0, v5, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->setPadding(IIII)V

    .line 76
    const v0, -0xa0a07

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->setBackgroundColor(I)V

    .line 77
    new-instance v1, Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/home/ui/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    .line 86
    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;

    invoke-virtual {v3}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getCurrentItem()I

    move-result v3

    .line 85
    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a(I)Lcom/alipay/android/phone/home/ads/Advert;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 87
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {v1, v2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 92
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ads/Advert;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    invoke-virtual {v1, v2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {v1, v5}, Landroid/widget/ViewFlipper;->setAutoStart(Z)V

    .line 97
    invoke-virtual {v1, v5}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 98
    new-instance v0, Lcom/alipay/android/phone/home/ui/q;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/home/ui/q;-><init>(Lcom/alipay/android/phone/home/ui/BannerView;Landroid/widget/ViewFlipper;)V

    .line 105
    const-wide/16 v2, 0x12c

    .line 98
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    return-void
.end method
