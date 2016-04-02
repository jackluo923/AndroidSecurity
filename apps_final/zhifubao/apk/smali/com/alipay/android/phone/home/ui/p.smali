.class final Lcom/alipay/android/phone/home/ui/p;
.super Landroid/os/Handler;
.source "BannerView.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/BannerView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/BannerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/p;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleMessage, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/p;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/p;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/p;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/p;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/p;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->setCurrentItem(I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/p;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/p;->a:Lcom/alipay/android/phone/home/ui/BannerView;

    # getter for: Lcom/alipay/android/phone/home/ui/BannerView;->b:Lcom/alipay/android/phone/home/ui/BannerViewPager;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/BannerView;->access$0(Lcom/alipay/android/phone/home/ui/BannerView;)Lcom/alipay/android/phone/home/ui/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/BannerViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method
