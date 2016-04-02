.class Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;
.super Ljava/lang/Object;
.source "PagerSlidingTabStripContect.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/helper/PagerSlidingTabStripContect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;


# direct methods
.method private constructor <init>(Lae/gov/mol/helper/PagerSlidingTabStripContect;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/helper/PagerSlidingTabStripContect;Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripContect;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 445
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    # getter for: Lae/gov/mol/helper/PagerSlidingTabStripContect;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->access$3(Lae/gov/mol/helper/PagerSlidingTabStripContect;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->access$2(Lae/gov/mol/helper/PagerSlidingTabStripContect;II)V

    .line 448
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 451
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    invoke-static {v0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->access$0(Lae/gov/mol/helper/PagerSlidingTabStripContect;I)V

    .line 433
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    # getter for: Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->access$1(Lae/gov/mol/helper/PagerSlidingTabStripContect;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    # invokes: Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollToChild(II)V
    invoke-static {v0, p1, v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->access$2(Lae/gov/mol/helper/PagerSlidingTabStripContect;II)V

    .line 435
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    invoke-virtual {v0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 437
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 440
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    invoke-virtual {v0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->SetTextViewChange(I)V

    .line 456
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iget-object v0, v0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 459
    :cond_0
    return-void
.end method
