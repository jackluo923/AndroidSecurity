.class public final Lnet/simonvt/menudrawer/aj;
.super Lnet/simonvt/menudrawer/MenuDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/aj;->C:Lnet/simonvt/menudrawer/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/aj;->D:Lnet/simonvt/menudrawer/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/aj;->U:Z

    return-void
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method protected final b(I)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getOffsetMenuEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTouchBezelSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTouchMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    const/4 v4, 0x0

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    sget-object v2, Lnet/simonvt/menudrawer/ak;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/aj;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/aj;->C:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/aj;->E:I

    invoke-virtual {v2, v4, v4, v3, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/aj;->D:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/aj;->E:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lnet/simonvt/menudrawer/aj;->C:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/aj;->E:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/aj;->D:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/aj;->E:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v4, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lnet/simonvt/menudrawer/aj;->C:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/aj;->E:I

    invoke-virtual {v2, v4, v4, v0, v3}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/aj;->D:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/aj;->E:I

    invoke-virtual {v2, v4, v3, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lnet/simonvt/menudrawer/aj;->C:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/aj;->E:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v3, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/aj;->D:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/aj;->E:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v4, v4, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sget-object v2, Lnet/simonvt/menudrawer/ak;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/aj;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lnet/simonvt/menudrawer/aj;->setMeasuredDimension(II)V

    return-void

    :pswitch_0
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/aj;->E:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sub-int v3, v0, v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, Lnet/simonvt/menudrawer/aj;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v5, v3, v2}, Lnet/simonvt/menudrawer/a;->measure(II)V

    iget-object v3, p0, Lnet/simonvt/menudrawer/aj;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v3, v4, v2}, Lnet/simonvt/menudrawer/a;->measure(II)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/aj;->E:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sub-int v3, v1, v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, Lnet/simonvt/menudrawer/aj;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v5, v2, v3}, Lnet/simonvt/menudrawer/a;->measure(II)V

    iget-object v3, p0, Lnet/simonvt/menudrawer/aj;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v3, v2, v4}, Lnet/simonvt/menudrawer/a;->measure(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final setDrawerIndicatorEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setHardwareLayerEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setMenuSize(I)V
    .locals 0

    iput p1, p0, Lnet/simonvt/menudrawer/aj;->E:I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/aj;->requestLayout()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/aj;->invalidate()V

    return-void
.end method

.method public final setOffsetMenuEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setSlideDrawable(I)V
    .locals 0

    return-void
.end method

.method public final setSlideDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final setTouchBezelSize(I)V
    .locals 0

    return-void
.end method

.method public final setTouchMode(I)V
    .locals 0

    return-void
.end method

.method public final setupUpIndicator(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
