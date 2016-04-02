.class Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    if-eq v0, p2, :cond_0

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->offsetLeftAndRight(I)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
