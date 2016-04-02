.class final Lcom/alipay/android/phone/home/ui/r;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/BannerView;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/BannerView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    iput-boolean p2, p0, Lcom/alipay/android/phone/home/ui/r;->b:Z

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 137
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->setCurrentItem(I)V

    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$2(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setVisibility(I)V

    .line 157
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->c:Lcom/alipay/android/phone/home/ui/CirclePageIndicator;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$2(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/CirclePageIndicator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setVisibility(I)V

    .line 143
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/r;->b:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 144
    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    .line 145
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v0

    .line 144
    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->setCurrentItem(I)V

    .line 155
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startLoop, position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->f:I
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->access$5(Lcom/alipay/android/phone/home/ui/BannerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",currentitem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "adapter count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/ui/BannerView;->access$3(Lcom/alipay/android/phone/home/ui/BannerView;Z)V

    .line 148
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->h:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$4(Lcom/alipay/android/phone/home/ui/BannerView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->h:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$4(Lcom/alipay/android/phone/home/ui/BannerView;)Landroid/os/Handler;

    move-result-object v1

    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->f:I
    invoke-static {v2}, Lcom/alipay/android/phone/home/ui/BannerView;->access$5(Lcom/alipay/android/phone/home/ui/BannerView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a(I)Lcom/alipay/android/phone/home/ads/Advert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ads/Advert;->getLoopTime()J

    move-result-wide v2

    .line 149
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
