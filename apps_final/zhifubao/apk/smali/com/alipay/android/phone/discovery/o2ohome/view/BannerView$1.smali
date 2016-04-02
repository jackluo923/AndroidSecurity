.class Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView$1;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->pageCount:I
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;)I

    move-result v0

    rem-int v0, p1, v0

    .line 79
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->indicatorView:Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/BannerView;)Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->setSelection(I)V

    .line 80
    return-void
.end method
