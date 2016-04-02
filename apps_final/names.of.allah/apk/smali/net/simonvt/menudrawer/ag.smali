.class public final Lnet/simonvt/menudrawer/ag;
.super Lnet/simonvt/menudrawer/f;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/f;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->d:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/ag;->g:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FF)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->a:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->a:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(IIFF)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget-object v2, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-nez v2, :cond_1

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->e:F

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->I:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    cmpl-float v2, p3, v5

    if-gtz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v2, :cond_0

    int-to-float v2, p1

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->W:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getWidth()I

    move-result v2

    iget-boolean v3, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-nez v3, :cond_3

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->e:F

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->I:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    cmpg-float v3, p3, v5

    if-ltz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v3, :cond_0

    int-to-float v3, p1

    int-to-float v2, v2

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->W:F

    add-float/2addr v2, v4

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-nez v2, :cond_5

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->f:F

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->I:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    cmpl-float v2, p4, v5

    if-gtz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v2, :cond_0

    int-to-float v2, p2

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->W:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-nez v3, :cond_7

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->f:F

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->I:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    cmpg-float v3, p4, v5

    if-ltz v3, :cond_8

    :cond_7
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v3, :cond_0

    int-to-float v3, p2

    int-to-float v2, v2

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->W:F

    add-float/2addr v2, v4

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private r()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-nez v2, :cond_1

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->e:F

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->I:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->e:F

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->W:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getWidth()I

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->e:F

    float-to-int v3, v3

    iget-boolean v4, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-nez v4, :cond_3

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->I:I

    sub-int v4, v2, v4

    if-ge v3, v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v4, :cond_0

    int-to-float v3, v3

    int-to-float v2, v2

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->W:F

    add-float/2addr v2, v4

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-nez v2, :cond_5

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->f:F

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->I:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->f:F

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->W:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-nez v3, :cond_7

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->f:F

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->I:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_8

    :cond_7
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->f:F

    int-to-float v2, v2

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->W:F

    add-float/2addr v2, v4

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/f;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lnet/simonvt/menudrawer/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lnet/simonvt/menudrawer/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getHeight()I

    move-result v1

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->W:F

    float-to-int v2, v2

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->W:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->E:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget-object v4, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v5

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->t:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x43390000    # 185.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lnet/simonvt/menudrawer/ag;->t:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v0

    invoke-virtual {v4, v2, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lnet/simonvt/menudrawer/ag;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6, v6, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lnet/simonvt/menudrawer/ag;->t:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v1

    invoke-virtual {v4, v6, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lnet/simonvt/menudrawer/ag;->a(IIZ)V

    return-void

    :pswitch_0
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->E:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->E:I

    neg-int v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final b(I)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x0

    sget-boolean v2, Lnet/simonvt/menudrawer/ag;->q:Z

    if-eqz v2, :cond_1

    sget-object v2, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Lnet/simonvt/menudrawer/a;->setTranslationX(F)V

    :goto_0
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->m:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->E:I

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->invalidate()V

    return-void

    :pswitch_1
    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Lnet/simonvt/menudrawer/a;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    sget-object v2, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/a;->getLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lnet/simonvt/menudrawer/a;->offsetLeftAndRight(I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/a;->getTop()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lnet/simonvt/menudrawer/a;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getHeight()I

    move-result v3

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->E:I

    iget v5, p0, Lnet/simonvt/menudrawer/ag;->W:F

    iget v6, p0, Lnet/simonvt/menudrawer/ag;->W:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lnet/simonvt/menudrawer/ag;->W:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    const/high16 v7, -0x41800000    # -0.25f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v6, v8, v6

    int-to-float v8, v4

    mul-float/2addr v6, v8

    mul-float/2addr v6, v7

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sget-object v6, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v7

    invoke-virtual {v7}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    goto :goto_1

    :pswitch_4
    sget-boolean v2, Lnet/simonvt/menudrawer/ag;->q:Z

    if-eqz v2, :cond_4

    if-lez p1, :cond_3

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    int-to-float v1, v5

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationX(F)V

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/a;->getLeft()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v2, v3}, Lnet/simonvt/menudrawer/a;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Lnet/simonvt/menudrawer/a;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :pswitch_5
    sget-boolean v3, Lnet/simonvt/menudrawer/ag;->q:Z

    if-eqz v3, :cond_7

    if-eqz p1, :cond_6

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    int-to-float v1, v5

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationX(F)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    int-to-float v1, v4

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationX(F)V

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/a;->getRight()I

    move-result v3

    sub-int v2, v3, v2

    sub-int v2, v5, v2

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v3, v2}, Lnet/simonvt/menudrawer/a;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    if-nez p1, :cond_8

    :goto_3
    invoke-virtual {v2, v0}, Lnet/simonvt/menudrawer/a;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_3

    :pswitch_6
    sget-boolean v2, Lnet/simonvt/menudrawer/ag;->q:Z

    if-eqz v2, :cond_a

    if-lez p1, :cond_9

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    int-to-float v1, v5

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationY(F)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationY(F)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/a;->getTop()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v2, v3}, Lnet/simonvt/menudrawer/a;->offsetTopAndBottom(I)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    if-nez p1, :cond_b

    :goto_4
    invoke-virtual {v2, v0}, Lnet/simonvt/menudrawer/a;->setVisibility(I)V

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_4

    :pswitch_7
    sget-boolean v2, Lnet/simonvt/menudrawer/ag;->q:Z

    if-eqz v2, :cond_d

    if-eqz p1, :cond_c

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    int-to-float v1, v5

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationY(F)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    int-to-float v1, v4

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationY(F)V

    goto/16 :goto_1

    :cond_d
    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/a;->getBottom()I

    move-result v2

    sub-int/2addr v2, v3

    sub-int v2, v5, v2

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v3, v2}, Lnet/simonvt/menudrawer/a;->offsetTopAndBottom(I)V

    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    if-nez p1, :cond_e

    :goto_5
    invoke-virtual {v2, v0}, Lnet/simonvt/menudrawer/a;->setVisibility(I)V

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected final i()V
    .locals 4

    const/16 v3, 0x1388

    const/4 v2, 0x0

    sget-object v0, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->E:I

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lnet/simonvt/menudrawer/ag;->j:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v1, v2, v0, v3}, Lnet/simonvt/menudrawer/ad;->a(III)V

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->E:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lnet/simonvt/menudrawer/ag;->j:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v1, v2, v0, v3}, Lnet/simonvt/menudrawer/ad;->a(III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x2

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    if-eq v3, v2, :cond_0

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    :cond_0
    iput v7, p0, Lnet/simonvt/menudrawer/ag;->d:I

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    :cond_1
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->W:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->E:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Z)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->p()V

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/ag;->setOffsetPixels(F)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->f()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->j()V

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/ag;->setDrawerState(I)V

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    :cond_5
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    if-eq v0, v7, :cond_14

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v7, :cond_6

    move v0, v1

    :cond_6
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    sget-object v5, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v6

    invoke-virtual {v6}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move v0, v1

    :goto_2
    if-eqz v0, :cond_b

    move v1, v2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->c(Landroid/view/View;)I

    move-result v0

    if-le v0, v4, :cond_8

    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v4}, Lnet/simonvt/menudrawer/al;->b(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_9

    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v4, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    invoke-static {v4}, Lnet/simonvt/menudrawer/al;->d(Landroid/view/View;)I

    move-result v4

    if-le v4, v0, :cond_a

    move v0, v2

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_2

    :cond_b
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    if-nez v0, :cond_c

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->J:I

    if-eqz v0, :cond_2

    :cond_c
    if-eqz v3, :cond_d

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    if-eqz v0, :cond_d

    move v1, v2

    goto/16 :goto_0

    :cond_d
    sparse-switch v3, :sswitch_data_0

    :cond_e
    :goto_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    :cond_f
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->e:F

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->f:F

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->h:F

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->g:F

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->h:F

    invoke-direct {p0}, Lnet/simonvt/menudrawer/ag;->r()Z

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/ag;->d:I

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/ag;->setDrawerState(I)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->f()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->j()V

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    goto :goto_3

    :cond_10
    move v0, v1

    goto :goto_4

    :sswitch_1
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    if-eq v0, v7, :cond_e

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v7, :cond_11

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    iput v7, p0, Lnet/simonvt/menudrawer/ag;->d:I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->e()V

    invoke-virtual {p0, v1, v1, v2}, Lnet/simonvt/menudrawer/ag;->a(IIZ)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->g:F

    sub-float v4, v3, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v5, p0, Lnet/simonvt/menudrawer/ag;->h:F

    sub-float v5, v0, v5

    invoke-direct {p0, v4, v5}, Lnet/simonvt/menudrawer/ag;->a(FF)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lnet/simonvt/menudrawer/ag;->Q:Lnet/simonvt/menudrawer/p;

    if-eqz v6, :cond_13

    iget v6, p0, Lnet/simonvt/menudrawer/ag;->J:I

    if-eq v6, v10, :cond_12

    iget-boolean v6, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v6, :cond_13

    :cond_12
    float-to-int v6, v4

    float-to-int v7, v5

    float-to-int v8, v3

    float-to-int v9, v0

    invoke-virtual {p0, v6, v7, v8, v9}, Lnet/simonvt/menudrawer/ag;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->e()V

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/ag;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    :cond_13
    float-to-int v1, v3

    float-to-int v6, v0

    invoke-direct {p0, v1, v6, v4, v5}, Lnet/simonvt/menudrawer/ag;->a(IIFF)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v10}, Lnet/simonvt/menudrawer/ag;->setDrawerState(I)V

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    iput v3, p0, Lnet/simonvt/menudrawer/ag;->g:F

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->h:F

    goto/16 :goto_3

    :sswitch_2
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/ag;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->g:F

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->h:F

    goto/16 :goto_3

    :cond_14
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    sget-boolean v2, Lnet/simonvt/menudrawer/ag;->q:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v2, v5, v5, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    :goto_0
    sget-object v2, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget v2, p0, Lnet/simonvt/menudrawer/ag;->W:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    sget-object v4, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    sget-object v4, Lnet/simonvt/menudrawer/x;->c:Lnet/simonvt/menudrawer/x;

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    add-int v4, v0, v2

    invoke-virtual {v3, v2, v5, v4, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    add-int v4, v1, v2

    invoke-virtual {v3, v5, v2, v0, v4}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->E:I

    invoke-virtual {v0, v5, v5, v2, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->E:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3, v5, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    iget v2, p0, Lnet/simonvt/menudrawer/ag;->E:I

    invoke-virtual {v1, v5, v5, v0, v2}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->E:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v5, v3, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected final onMeasure(II)V
    .locals 6

    const/4 v5, 0x0

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

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->W:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0, v5}, Lnet/simonvt/menudrawer/ag;->a(Z)V

    :cond_2
    sget-object v0, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->E:I

    invoke-static {p1, v5, v0}, Lnet/simonvt/menudrawer/ag;->getChildMeasureSpec(III)I

    move-result v0

    invoke-static {p1, v5, v3}, Lnet/simonvt/menudrawer/ag;->getChildMeasureSpec(III)I

    move-result v1

    :goto_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/ag;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v4, v0, v1}, Lnet/simonvt/menudrawer/a;->measure(II)V

    invoke-static {p1, v5, v2}, Lnet/simonvt/menudrawer/ag;->getChildMeasureSpec(III)I

    move-result v0

    invoke-static {p1, v5, v3}, Lnet/simonvt/menudrawer/ag;->getChildMeasureSpec(III)I

    move-result v1

    iget-object v4, p0, Lnet/simonvt/menudrawer/ag;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v4, v0, v1}, Lnet/simonvt/menudrawer/a;->measure(II)V

    invoke-virtual {p0, v2, v3}, Lnet/simonvt/menudrawer/ag;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->q()V

    return-void

    :pswitch_1
    invoke-static {p1, v5, v2}, Lnet/simonvt/menudrawer/ag;->getChildMeasureSpec(III)I

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/ag;->E:I

    invoke-static {p2, v5, v1}, Lnet/simonvt/menudrawer/ag;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lnet/simonvt/menudrawer/f;->onSizeChanged(IIII)V

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->W:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/ag;->b(I)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v9, 0x3e8

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->J:I

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->e:F

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->f:F

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->h:F

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->g:F

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->h:F

    invoke-direct {p0}, Lnet/simonvt/menudrawer/ag;->r()Z

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/ag;->d:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->f()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->j()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->c()V

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v7, :cond_3

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    iput v7, p0, Lnet/simonvt/menudrawer/ag;->d:I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->e()V

    invoke-virtual {p0, v1, v1, v2}, Lnet/simonvt/menudrawer/ag;->a(IIZ)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    if-nez v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->g:F

    sub-float v3, v1, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lnet/simonvt/menudrawer/ag;->h:F

    sub-float v5, v4, v5

    invoke-direct {p0, v3, v5}, Lnet/simonvt/menudrawer/ag;->a(FF)Z

    move-result v6

    if-eqz v6, :cond_4

    float-to-int v6, v1

    float-to-int v7, v4

    invoke-direct {p0, v6, v7, v3, v5}, Lnet/simonvt/menudrawer/ag;->a(IIFF)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/ag;->setDrawerState(I)V

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    iput v1, p0, Lnet/simonvt/menudrawer/ag;->g:F

    iput v4, p0, Lnet/simonvt/menudrawer/ag;->h:F

    :cond_4
    :goto_2
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->c()V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Lnet/simonvt/menudrawer/ag;->g:F

    sub-float v3, v1, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->h:F

    sub-float v4, v0, v4

    iput v1, p0, Lnet/simonvt/menudrawer/ag;->g:F

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->h:F

    sget-object v0, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_3
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->W:F

    add-float/2addr v0, v3

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/ag;->E:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/ag;->setOffsetPixels(F)V

    goto/16 :goto_1

    :cond_5
    iput v1, p0, Lnet/simonvt/menudrawer/ag;->e:F

    iput v4, p0, Lnet/simonvt/menudrawer/ag;->f:F

    goto :goto_2

    :pswitch_4
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->W:F

    add-float/2addr v0, v3

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/ag;->E:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/ag;->setOffsetPixels(F)V

    goto/16 :goto_1

    :pswitch_5
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->W:F

    add-float/2addr v0, v4

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/ag;->E:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/ag;->setOffsetPixels(F)V

    goto/16 :goto_1

    :pswitch_6
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->W:F

    add-float/2addr v0, v4

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/ag;->E:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/ag;->setOffsetPixels(F)V

    goto/16 :goto_1

    :pswitch_7
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v7, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->W:F

    float-to-int v4, v4

    sget-object v5, Lnet/simonvt/menudrawer/ah;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v6

    invoke-virtual {v6}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    :cond_7
    :goto_3
    iput v7, p0, Lnet/simonvt/menudrawer/ag;->d:I

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    goto/16 :goto_1

    :pswitch_8
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->l:I

    int-to-float v4, v4

    invoke-virtual {v0, v9, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/ag;->a(Landroid/view/VelocityTracker;)F

    move-result v0

    float-to-int v4, v0

    int-to-float v0, v3

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->g:F

    if-lez v4, :cond_8

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->E:I

    :goto_4
    invoke-virtual {p0, v0, v4, v2}, Lnet/simonvt/menudrawer/ag;->a(IIZ)V

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v0, :cond_7

    if-le v3, v4, :cond_7

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->p()V

    goto :goto_3

    :pswitch_9
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->l:I

    int-to-float v4, v4

    invoke-virtual {v3, v9, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/ag;->b(Landroid/view/VelocityTracker;)F

    move-result v3

    float-to-int v3, v3

    int-to-float v0, v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->h:F

    if-lez v3, :cond_a

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->E:I

    :goto_5
    invoke-virtual {p0, v0, v3, v2}, Lnet/simonvt/menudrawer/ag;->a(IIZ)V

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_5

    :cond_b
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v3, :cond_7

    if-le v0, v4, :cond_7

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->p()V

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getWidth()I

    move-result v0

    iget-boolean v5, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    if-eqz v5, :cond_d

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->l:I

    int-to-float v4, v4

    invoke-virtual {v0, v9, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/ag;->a(Landroid/view/VelocityTracker;)F

    move-result v0

    float-to-int v4, v0

    int-to-float v0, v3

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->g:F

    if-lez v4, :cond_c

    move v0, v1

    :goto_6
    invoke-virtual {p0, v0, v4, v2}, Lnet/simonvt/menudrawer/ag;->a(IIZ)V

    goto :goto_3

    :cond_c
    iget v0, p0, Lnet/simonvt/menudrawer/ag;->E:I

    neg-int v0, v0

    goto :goto_6

    :cond_d
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v5, :cond_7

    add-int/2addr v0, v4

    if-ge v3, v0, :cond_7

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->p()V

    goto/16 :goto_3

    :pswitch_b
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/ag;->c:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    iget v4, p0, Lnet/simonvt/menudrawer/ag;->l:I

    int-to-float v4, v4

    invoke-virtual {v3, v9, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, Lnet/simonvt/menudrawer/ag;->k:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/ag;->b(Landroid/view/VelocityTracker;)F

    move-result v3

    float-to-int v3, v3

    int-to-float v0, v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->h:F

    if-gez v3, :cond_e

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->E:I

    neg-int v0, v0

    :goto_7
    invoke-virtual {p0, v0, v3, v2}, Lnet/simonvt/menudrawer/ag;->a(IIZ)V

    goto/16 :goto_3

    :cond_e
    move v0, v1

    goto :goto_7

    :cond_f
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/ag;->F:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/ag;->getHeight()I

    move-result v3

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_7

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->p()V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/ag;->g:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/ag;->h:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/ag;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->g:F

    iget v0, p0, Lnet/simonvt/menudrawer/ag;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/ag;->h:F

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final p()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lnet/simonvt/menudrawer/ag;->a(IIZ)V

    return-void
.end method
