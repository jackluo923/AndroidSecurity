.class Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;
.super Ljava/lang/Object;
.source "PagerSlidingTabStripExpiredLabourCard.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;


# direct methods
.method private constructor <init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    # getter for: Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->access$3(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->access$2(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;II)V

    .line 455
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 458
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-static {v0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->access$0(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;I)V

    .line 440
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    # getter for: Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->access$1(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    # invokes: Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollToChild(II)V
    invoke-static {v0, p1, v1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->access$2(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;II)V

    .line 442
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-virtual {v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 444
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 447
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-virtual {v0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->SetTextViewChange(I)V

    .line 463
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 466
    :cond_0
    return-void
.end method
