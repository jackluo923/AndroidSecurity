.class public Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/BannerView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/home/ads/Advert;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/home/ui/BannerView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->c:Landroid/content/Context;

    .line 243
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;)Lcom/alipay/android/phone/home/ui/BannerView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)Lcom/alipay/android/phone/home/ads/Advert;
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ads/Advert;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
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
    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "BannerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "viewpageradapter setadverts:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->notifyDataSetChanged()V

    .line 254
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 327
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 328
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 271
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 274
    :goto_0
    return v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 266
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 293
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "BannerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "instantiateItem, position:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->c:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    .line 295
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 296
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 298
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v3

    rem-int v3, p2, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ads/Advert;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v0, Lcom/alipay/android/phone/home/ui/s;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/phone/home/ui/s;-><init>(Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;I)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 288
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
