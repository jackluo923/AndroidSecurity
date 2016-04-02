.class public Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;
.super Landroid/widget/ExpandableListView;
.source "ExpandableCommissionListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 81
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public configureHeaderView(II)V
    .locals 4

    .prologue
    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    check-cast v0, Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;->getHeaderState(II)I

    move-result v0

    .line 218
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 220
    :pswitch_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->hideHeaderView()V

    goto :goto_0

    .line 227
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PINNED_HEADER_VISIBLE, mHeaderView.getTop()="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-interface {v0, v3, p1, p2, v1}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;->configureHeader(Landroid/view/View;III)V

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setHeaderViewTopOffset(I)V

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->showHeaderView()V

    goto :goto_0

    .line 241
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 243
    iget-object v3, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 247
    if-ge v0, v3, :cond_3

    .line 248
    sub-int v1, v0, v3

    .line 249
    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    .line 255
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-interface {v2, v3, p1, p2, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;->configureHeader(Landroid/view/View;III)V

    .line 257
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setHeaderViewTopOffset(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    move v1, v2

    .line 252
    goto :goto_1

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 296
    return-void
.end method

.method protected headerViewClick()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->getExpandableListPosition(I)J

    move-result-wide v0

    .line 108
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$1;-><init>(Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;I)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->post(Ljava/lang/Runnable;)Z

    .line 117
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->collapseGroup(I)Z

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->expandGroup(I)Z

    goto :goto_0
.end method

.method protected hideHeaderView()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 193
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 208
    invoke-super/range {p0 .. p5}, Landroid/widget/ExpandableListView;->onLayout(ZIIII)V

    .line 209
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onMeasure(II)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->measureChild(Landroid/view/View;II)V

    .line 204
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->getExpandableListPosition(I)J

    move-result-wide v0

    .line 303
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 304
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 306
    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->configureHeaderView(II)V

    .line 307
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 168
    check-cast p1, Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->a:Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;

    .line 169
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    .line 57
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 58
    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 57
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->setFadingEdgeLength(I)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->requestLayout()V

    .line 77
    return-void
.end method

.method protected setHeaderViewTopOffset(I)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    .line 272
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 271
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 273
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 274
    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    return-void
.end method

.method protected showHeaderView()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->b:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView$2;-><init>(Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method
