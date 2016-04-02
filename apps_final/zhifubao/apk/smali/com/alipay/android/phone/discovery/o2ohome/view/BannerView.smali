.class public Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;
.super Landroid/widget/RelativeLayout;
.source "BannerView.java"


# instance fields
.field private indicatorView:Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

.field private listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private pageCount:I

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 33
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 35
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->indicatorView:Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

    .line 40
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 41
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->indicatorView:Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getIndicatorHeight()I

    move-result v2

    .line 40
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->indicatorView:Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getIndicatorMargin()I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->indicatorView:Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$color;->split_line:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->pageCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;)Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->indicatorView:Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

    return-object v0
.end method


# virtual methods
.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 56
    instance-of v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->pageCount:I

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->indicatorView:Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

    iget v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->pageCount:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->setCount(I)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->indicatorView:Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->setSelection(I)V

    .line 65
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->indicatorView:Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->pageCount:I

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->setVisibility(I)V

    .line 67
    instance-of v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->pageCount:I

    mul-int/lit16 v1, v1, 0x190

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 72
    :goto_2
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->pageCount:I

    goto :goto_0

    .line 65
    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_2
.end method
