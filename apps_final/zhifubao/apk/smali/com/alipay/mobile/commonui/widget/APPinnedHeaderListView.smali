.class public Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;
.super Lcom/alipay/mobile/commonui/widget/APListView;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 6

    const/16 v0, 0xff

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->a:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderState(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->c:Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->a:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-interface {v1, v3, p1, v0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->d:I

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->e:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    :cond_1
    iput-boolean v5, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->c:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_3

    sub-int/2addr v1, v3

    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->a:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-interface {v3, v4, p1, v0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->d:I

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->e:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iput-boolean v5, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->c:Z

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/commonui/widget/APListView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->d:I

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->d:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->e:I

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p1, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->a:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;

    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setFadingEdgeLength(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->requestLayout()V

    return-void
.end method
