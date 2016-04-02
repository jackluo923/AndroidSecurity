.class public final Lnet/simonvt/menudrawer/t;
.super Lnet/simonvt/menudrawer/f;


# instance fields
.field private aa:I

.field private ab:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/f;-><init>(Landroid/app/Activity;I)V

    new-instance v0, Lnet/simonvt/menudrawer/u;

    invoke-direct {v0, p0}, Lnet/simonvt/menudrawer/u;-><init>(Lnet/simonvt/menudrawer/t;)V

    iput-object v0, p0, Lnet/simonvt/menudrawer/t;->ab:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lnet/simonvt/menudrawer/t;)I
    .locals 1

    iget v0, p0, Lnet/simonvt/menudrawer/t;->aa:I

    return v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lnet/simonvt/menudrawer/t;->d:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/t;->g:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->d:I

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

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

    sget-object v2, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/t;->a:I

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

    iget v3, p0, Lnet/simonvt/menudrawer/t;->a:I

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

.method private a(IFF)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lnet/simonvt/menudrawer/t;->J:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v2, :cond_2

    iget v2, p0, Lnet/simonvt/menudrawer/t;->e:F

    iget v3, p0, Lnet/simonvt/menudrawer/t;->I:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    cmpl-float v2, p2, v5

    if-gtz v2, :cond_0

    :cond_2
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v2, :cond_3

    int-to-float v2, p1

    iget v3, p0, Lnet/simonvt/menudrawer/t;->W:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    :cond_3
    iget v2, p0, Lnet/simonvt/menudrawer/t;->W:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/t;->aa:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getWidth()I

    move-result v2

    iget-boolean v3, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v3, :cond_5

    iget v3, p0, Lnet/simonvt/menudrawer/t;->e:F

    iget v4, p0, Lnet/simonvt/menudrawer/t;->I:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    cmpg-float v3, p2, v5

    if-ltz v3, :cond_0

    :cond_5
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v3, :cond_6

    int-to-float v3, p1

    int-to-float v2, v2

    iget v4, p0, Lnet/simonvt/menudrawer/t;->W:F

    sub-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-gez v2, :cond_0

    :cond_6
    iget v2, p0, Lnet/simonvt/menudrawer/t;->W:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/t;->aa:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_7

    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v2, :cond_8

    iget v2, p0, Lnet/simonvt/menudrawer/t;->f:F

    iget v3, p0, Lnet/simonvt/menudrawer/t;->I:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    cmpl-float v2, p3, v5

    if-gtz v2, :cond_0

    :cond_8
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v2, :cond_9

    int-to-float v2, p1

    iget v3, p0, Lnet/simonvt/menudrawer/t;->W:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    :cond_9
    iget v2, p0, Lnet/simonvt/menudrawer/t;->W:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/t;->aa:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a

    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v2, :cond_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v3, :cond_b

    iget v3, p0, Lnet/simonvt/menudrawer/t;->f:F

    iget v4, p0, Lnet/simonvt/menudrawer/t;->I:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_b

    cmpg-float v3, p3, v5

    if-ltz v3, :cond_0

    :cond_b
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v3, :cond_c

    int-to-float v3, p1

    int-to-float v2, v2

    iget v4, p0, Lnet/simonvt/menudrawer/t;->W:F

    sub-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-gez v2, :cond_0

    :cond_c
    iget v2, p0, Lnet/simonvt/menudrawer/t;->W:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/t;->aa:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d

    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v2, :cond_0

    :cond_d
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private r()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v2, :cond_1

    iget v2, p0, Lnet/simonvt/menudrawer/t;->e:F

    iget v3, p0, Lnet/simonvt/menudrawer/t;->I:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/simonvt/menudrawer/t;->e:F

    iget v3, p0, Lnet/simonvt/menudrawer/t;->W:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getWidth()I

    move-result v2

    iget v3, p0, Lnet/simonvt/menudrawer/t;->e:F

    float-to-int v3, v3

    iget-boolean v4, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v4, :cond_3

    iget v4, p0, Lnet/simonvt/menudrawer/t;->I:I

    sub-int v4, v2, v4

    if-ge v3, v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v4, :cond_0

    int-to-float v3, v3

    int-to-float v2, v2

    iget v4, p0, Lnet/simonvt/menudrawer/t;->W:F

    add-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v2, :cond_5

    iget v2, p0, Lnet/simonvt/menudrawer/t;->f:F

    iget v3, p0, Lnet/simonvt/menudrawer/t;->I:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/simonvt/menudrawer/t;->f:F

    iget v3, p0, Lnet/simonvt/menudrawer/t;->W:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v3, :cond_7

    iget v3, p0, Lnet/simonvt/menudrawer/t;->f:F

    iget v4, p0, Lnet/simonvt/menudrawer/t;->I:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_8

    :cond_7
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lnet/simonvt/menudrawer/t;->f:F

    int-to-float v2, v2

    iget v4, p0, Lnet/simonvt/menudrawer/t;->W:F

    add-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/f;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->D:Lnet/simonvt/menudrawer/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lnet/simonvt/menudrawer/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lnet/simonvt/menudrawer/t;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->D:Lnet/simonvt/menudrawer/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0, v3}, Lnet/simonvt/menudrawer/a;->a(Z)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Lnet/simonvt/menudrawer/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->a(I)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->aa:I

    return-void
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getHeight()I

    move-result v1

    iget v2, p0, Lnet/simonvt/menudrawer/t;->W:F

    float-to-int v2, v2

    iget v3, p0, Lnet/simonvt/menudrawer/t;->W:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lnet/simonvt/menudrawer/t;->E:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget-object v4, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v5

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->t:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x43390000    # 185.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/t;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lnet/simonvt/menudrawer/t;->t:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v2

    invoke-virtual {v4, v6, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lnet/simonvt/menudrawer/t;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lnet/simonvt/menudrawer/t;->t:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v2

    invoke-virtual {v4, v6, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lnet/simonvt/menudrawer/t;->a(IIZ)V

    return-void

    :pswitch_0
    iget v0, p0, Lnet/simonvt/menudrawer/t;->E:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lnet/simonvt/menudrawer/t;->E:I

    neg-int v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final b(I)V
    .locals 3

    sget-boolean v0, Lnet/simonvt/menudrawer/t;->q:Z

    if-eqz v0, :cond_0

    sget-object v0, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->invalidate()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget v1, p0, Lnet/simonvt/menudrawer/t;->E:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationX(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget v1, p0, Lnet/simonvt/menudrawer/t;->E:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationY(F)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget v1, p0, Lnet/simonvt/menudrawer/t;->E:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationX(F)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget v1, p0, Lnet/simonvt/menudrawer/t;->E:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/a;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->offsetLeftAndRight(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/a;->getBottom()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->offsetTopAndBottom(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/a;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->offsetTopAndBottom(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/a;->getRight()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/a;->offsetLeftAndRight(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method protected final c()V
    .locals 3

    sget-boolean v0, Lnet/simonvt/menudrawer/t;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->K:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/t;->p:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->p:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/t;->p:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lnet/simonvt/menudrawer/a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 1

    invoke-super {p0}, Lnet/simonvt/menudrawer/f;->f()V

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->ab:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 2

    sget-object v0, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final i()V
    .locals 4

    const/16 v3, 0x1388

    const/4 v2, 0x0

    sget-object v0, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lnet/simonvt/menudrawer/t;->aa:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->j:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v1, v2, v0, v3}, Lnet/simonvt/menudrawer/ad;->a(III)V

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lnet/simonvt/menudrawer/t;->aa:I

    neg-int v0, v0

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->j:Lnet/simonvt/menudrawer/ad;

    invoke-virtual {v1, v2, v0, v3}, Lnet/simonvt/menudrawer/ad;->a(III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final l()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lnet/simonvt/menudrawer/t;->W:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/t;->E:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lnet/simonvt/menudrawer/t;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v2

    invoke-virtual {v2}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-static {v2}, Lnet/simonvt/menudrawer/al;->c(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-static {v2}, Lnet/simonvt/menudrawer/al;->d(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-static {v2}, Lnet/simonvt/menudrawer/al;->a(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-static {v2}, Lnet/simonvt/menudrawer/al;->b(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->V:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
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
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->ab:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v7, p0, Lnet/simonvt/menudrawer/t;->d:I

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/t;->c:Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    :cond_1
    iget v0, p0, Lnet/simonvt/menudrawer/t;->W:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lnet/simonvt/menudrawer/t;->E:I

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

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->setOffsetPixels(F)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->f()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->j()V

    invoke-virtual {p0, v1}, Lnet/simonvt/menudrawer/t;->setDrawerState(I)V

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/t;->c:Z

    :cond_5
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lnet/simonvt/menudrawer/t;->d:I

    if-eq v0, v7, :cond_17

    iget v0, p0, Lnet/simonvt/menudrawer/t;->d:I

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

    sget-object v5, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

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
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->c(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/al;->a(Landroid/view/View;)I

    move-result v0

    if-le v0, v4, :cond_8

    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-static {v4}, Lnet/simonvt/menudrawer/al;->d(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_9

    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v4, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-static {v4}, Lnet/simonvt/menudrawer/al;->b(Landroid/view/View;)I

    move-result v4

    if-le v4, v0, :cond_a

    move v0, v2

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_2

    :cond_b
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->c:Z

    if-nez v0, :cond_c

    iget v0, p0, Lnet/simonvt/menudrawer/t;->J:I

    if-eqz v0, :cond_2

    :cond_c
    if-eqz v3, :cond_d

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->c:Z

    if-eqz v0, :cond_d

    move v1, v2

    goto/16 :goto_0

    :cond_d
    sparse-switch v3, :sswitch_data_0

    :cond_e
    :goto_3
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    :cond_f
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Lnet/simonvt/menudrawer/t;->c:Z

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->e:F

    iput v0, p0, Lnet/simonvt/menudrawer/t;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->f:F

    iput v0, p0, Lnet/simonvt/menudrawer/t;->h:F

    iget v0, p0, Lnet/simonvt/menudrawer/t;->g:F

    iget v0, p0, Lnet/simonvt/menudrawer/t;->h:F

    invoke-direct {p0}, Lnet/simonvt/menudrawer/t;->r()Z

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/t;->d:I

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v0, :cond_11

    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->setDrawerState(I)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->f()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->j()V

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v0, :cond_10

    iget v0, p0, Lnet/simonvt/menudrawer/t;->e:F

    iget v2, p0, Lnet/simonvt/menudrawer/t;->aa:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_10

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->ab:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {p0, v0, v2, v3}, Lnet/simonvt/menudrawer/t;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    iput-boolean v1, p0, Lnet/simonvt/menudrawer/t;->c:Z

    goto :goto_3

    :cond_11
    move v0, v1

    goto :goto_4

    :sswitch_1
    iget v0, p0, Lnet/simonvt/menudrawer/t;->d:I

    if-eq v0, v7, :cond_e

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v7, :cond_12

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/t;->c:Z

    iput v7, p0, Lnet/simonvt/menudrawer/t;->d:I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->e()V

    invoke-virtual {p0, v1, v1, v2}, Lnet/simonvt/menudrawer/t;->a(IIZ)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lnet/simonvt/menudrawer/t;->g:F

    sub-float v4, v3, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v5, p0, Lnet/simonvt/menudrawer/t;->h:F

    sub-float v5, v0, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lnet/simonvt/menudrawer/t;->a:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_13

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lnet/simonvt/menudrawer/t;->a:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_14

    :cond_13
    iget-object v6, p0, Lnet/simonvt/menudrawer/t;->ab:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lnet/simonvt/menudrawer/t;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->j()V

    :cond_14
    invoke-direct {p0, v4, v5}, Lnet/simonvt/menudrawer/t;->a(FF)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lnet/simonvt/menudrawer/t;->Q:Lnet/simonvt/menudrawer/p;

    if-eqz v6, :cond_16

    iget v6, p0, Lnet/simonvt/menudrawer/t;->J:I

    if-eq v6, v10, :cond_15

    iget-boolean v6, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v6, :cond_16

    :cond_15
    float-to-int v6, v4

    float-to-int v7, v5

    float-to-int v8, v3

    float-to-int v9, v0

    invoke-virtual {p0, v6, v7, v8, v9}, Lnet/simonvt/menudrawer/t;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->e()V

    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/t;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    :cond_16
    float-to-int v1, v3

    invoke-direct {p0, v1, v4, v5}, Lnet/simonvt/menudrawer/t;->a(IFF)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->j()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->f()V

    invoke-virtual {p0, v10}, Lnet/simonvt/menudrawer/t;->setDrawerState(I)V

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/t;->c:Z

    iput v3, p0, Lnet/simonvt/menudrawer/t;->g:F

    iput v0, p0, Lnet/simonvt/menudrawer/t;->h:F

    goto/16 :goto_3

    :sswitch_2
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/t;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Lnet/simonvt/menudrawer/t;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->g:F

    iget v0, p0, Lnet/simonvt/menudrawer/t;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->h:F

    goto/16 :goto_3

    :cond_17
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final onLayout(ZIIII)V
    .locals 7

    const/4 v6, 0x0

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v2, v6, v6, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    sget-boolean v2, Lnet/simonvt/menudrawer/t;->q:Z

    if-eqz v2, :cond_0

    sget-object v2, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v3

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget v2, p0, Lnet/simonvt/menudrawer/t;->E:I

    invoke-virtual {v0, v6, v6, v2, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/t;->E:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3, v6, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget v2, p0, Lnet/simonvt/menudrawer/t;->E:I

    invoke-virtual {v1, v6, v6, v0, v2}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    iget v3, p0, Lnet/simonvt/menudrawer/t;->E:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v6, v3, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lnet/simonvt/menudrawer/t;->W:F

    float-to-int v2, v2

    iget v3, p0, Lnet/simonvt/menudrawer/t;->E:I

    sget-object v4, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v5

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    add-int v5, v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    invoke-virtual {v4, v5, v6, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    neg-int v3, v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3, v6, v2, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    neg-int v3, v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v6, v3, v0, v2}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    :pswitch_7
    iget-object v4, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    add-int v5, v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    invoke-virtual {v4, v6, v5, v0, v1}, Lnet/simonvt/menudrawer/a;->layout(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
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

    iget v0, p0, Lnet/simonvt/menudrawer/t;->W:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0, v5}, Lnet/simonvt/menudrawer/t;->a(Z)V

    :cond_2
    sget-object v0, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lnet/simonvt/menudrawer/t;->E:I

    invoke-static {p1, v5, v0}, Lnet/simonvt/menudrawer/t;->getChildMeasureSpec(III)I

    move-result v0

    invoke-static {p1, v5, v3}, Lnet/simonvt/menudrawer/t;->getChildMeasureSpec(III)I

    move-result v1

    :goto_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/t;->C:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v4, v0, v1}, Lnet/simonvt/menudrawer/a;->measure(II)V

    invoke-static {p1, v5, v2}, Lnet/simonvt/menudrawer/t;->getChildMeasureSpec(III)I

    move-result v0

    invoke-static {p1, v5, v3}, Lnet/simonvt/menudrawer/t;->getChildMeasureSpec(III)I

    move-result v1

    iget-object v4, p0, Lnet/simonvt/menudrawer/t;->D:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v4, v0, v1}, Lnet/simonvt/menudrawer/a;->measure(II)V

    invoke-virtual {p0, v2, v3}, Lnet/simonvt/menudrawer/t;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->q()V

    return-void

    :pswitch_1
    invoke-static {p1, v5, v2}, Lnet/simonvt/menudrawer/t;->getChildMeasureSpec(III)I

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/t;->E:I

    invoke-static {p2, v5, v1}, Lnet/simonvt/menudrawer/t;->getChildMeasureSpec(III)I

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

    iget v0, p0, Lnet/simonvt/menudrawer/t;->W:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->b(I)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/16 v8, 0x3e8

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/t;->J:I

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v3, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v3, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

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

    iput v0, p0, Lnet/simonvt/menudrawer/t;->e:F

    iput v0, p0, Lnet/simonvt/menudrawer/t;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->f:F

    iput v0, p0, Lnet/simonvt/menudrawer/t;->h:F

    iget v0, p0, Lnet/simonvt/menudrawer/t;->g:F

    iget v0, p0, Lnet/simonvt/menudrawer/t;->h:F

    invoke-direct {p0}, Lnet/simonvt/menudrawer/t;->r()Z

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/t;->d:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->f()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->j()V

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-nez v0, :cond_3

    iget v0, p0, Lnet/simonvt/menudrawer/t;->g:F

    iget v1, p0, Lnet/simonvt/menudrawer/t;->aa:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->ab:Ljava/lang/Runnable;

    const-wide/16 v3, 0xa0

    invoke-virtual {p0, v0, v3, v4}, Lnet/simonvt/menudrawer/t;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->c()V

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lnet/simonvt/menudrawer/t;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v6, :cond_4

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/t;->c:Z

    iput v6, p0, Lnet/simonvt/menudrawer/t;->d:I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->e()V

    invoke-virtual {p0, v1, v1, v2}, Lnet/simonvt/menudrawer/t;->a(IIZ)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/t;->c:Z

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Lnet/simonvt/menudrawer/t;->g:F

    sub-float v3, v1, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lnet/simonvt/menudrawer/t;->h:F

    sub-float v5, v4, v5

    invoke-direct {p0, v3, v5}, Lnet/simonvt/menudrawer/t;->a(FF)Z

    move-result v6

    if-eqz v6, :cond_5

    float-to-int v6, v1

    invoke-direct {p0, v6, v3, v5}, Lnet/simonvt/menudrawer/t;->a(IFF)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->j()V

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->f()V

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/t;->setDrawerState(I)V

    iput-boolean v2, p0, Lnet/simonvt/menudrawer/t;->c:Z

    iput v1, p0, Lnet/simonvt/menudrawer/t;->g:F

    iput v4, p0, Lnet/simonvt/menudrawer/t;->h:F

    :cond_5
    :goto_2
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/t;->c:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->c()V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Lnet/simonvt/menudrawer/t;->g:F

    sub-float v3, v1, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v4, p0, Lnet/simonvt/menudrawer/t;->h:F

    sub-float v4, v0, v4

    iput v1, p0, Lnet/simonvt/menudrawer/t;->g:F

    iput v0, p0, Lnet/simonvt/menudrawer/t;->h:F

    sget-object v0, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_3
    iget v0, p0, Lnet/simonvt/menudrawer/t;->W:F

    add-float/2addr v0, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/t;->E:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->setOffsetPixels(F)V

    goto/16 :goto_1

    :cond_6
    iput v1, p0, Lnet/simonvt/menudrawer/t;->e:F

    iput v4, p0, Lnet/simonvt/menudrawer/t;->f:F

    goto :goto_2

    :pswitch_4
    iget v0, p0, Lnet/simonvt/menudrawer/t;->W:F

    add-float/2addr v0, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/t;->E:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->setOffsetPixels(F)V

    goto/16 :goto_1

    :pswitch_5
    iget v0, p0, Lnet/simonvt/menudrawer/t;->W:F

    add-float/2addr v0, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/t;->E:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->setOffsetPixels(F)V

    goto/16 :goto_1

    :pswitch_6
    iget v0, p0, Lnet/simonvt/menudrawer/t;->W:F

    add-float/2addr v0, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/t;->E:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->setOffsetPixels(F)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->ab:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lnet/simonvt/menudrawer/t;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v6, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lnet/simonvt/menudrawer/t;->W:F

    sget-object v4, Lnet/simonvt/menudrawer/v;->a:[I

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v5

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    :cond_8
    :goto_3
    iput v6, p0, Lnet/simonvt/menudrawer/t;->d:I

    iput-boolean v1, p0, Lnet/simonvt/menudrawer/t;->c:Z

    goto/16 :goto_1

    :pswitch_8
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    iget v4, p0, Lnet/simonvt/menudrawer/t;->l:I

    int-to-float v4, v4

    invoke-virtual {v0, v8, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->a(Landroid/view/VelocityTracker;)F

    move-result v0

    float-to-int v4, v0

    int-to-float v0, v3

    iput v0, p0, Lnet/simonvt/menudrawer/t;->g:F

    if-lez v4, :cond_9

    iget v0, p0, Lnet/simonvt/menudrawer/t;->E:I

    :goto_4
    invoke-virtual {p0, v0, v4, v2}, Lnet/simonvt/menudrawer/t;->a(IIZ)V

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->p()V

    goto :goto_3

    :pswitch_9
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/t;->c:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    iget v4, p0, Lnet/simonvt/menudrawer/t;->l:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/t;->b(Landroid/view/VelocityTracker;)F

    move-result v3

    float-to-int v3, v3

    int-to-float v0, v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->h:F

    if-lez v3, :cond_b

    iget v0, p0, Lnet/simonvt/menudrawer/t;->E:I

    :goto_5
    invoke-virtual {p0, v0, v3, v2}, Lnet/simonvt/menudrawer/t;->a(IIZ)V

    goto :goto_3

    :cond_b
    move v0, v1

    goto :goto_5

    :cond_c
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->p()V

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->getWidth()I

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    iget v4, p0, Lnet/simonvt/menudrawer/t;->l:I

    int-to-float v4, v4

    invoke-virtual {v0, v8, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->a(Landroid/view/VelocityTracker;)F

    move-result v0

    float-to-int v4, v0

    int-to-float v0, v3

    iput v0, p0, Lnet/simonvt/menudrawer/t;->g:F

    if-lez v4, :cond_d

    move v0, v1

    :goto_6
    invoke-virtual {p0, v0, v4, v2}, Lnet/simonvt/menudrawer/t;->a(IIZ)V

    goto :goto_3

    :cond_d
    iget v0, p0, Lnet/simonvt/menudrawer/t;->E:I

    neg-int v0, v0

    goto :goto_6

    :cond_e
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/MenuDrawer;->p()V

    goto/16 :goto_3

    :pswitch_b
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/t;->c:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    iget v4, p0, Lnet/simonvt/menudrawer/t;->l:I

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, Lnet/simonvt/menudrawer/t;->k:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/t;->b(Landroid/view/VelocityTracker;)F

    move-result v3

    float-to-int v3, v3

    int-to-float v0, v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->h:F

    if-gez v3, :cond_f

    iget v0, p0, Lnet/simonvt/menudrawer/t;->E:I

    neg-int v0, v0

    :goto_7
    invoke-virtual {p0, v0, v3, v2}, Lnet/simonvt/menudrawer/t;->a(IIZ)V

    goto/16 :goto_3

    :cond_f
    move v0, v1

    goto :goto_7

    :cond_10
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->F:Z

    if-eqz v0, :cond_8

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

    iput v1, p0, Lnet/simonvt/menudrawer/t;->g:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lnet/simonvt/menudrawer/t;->h:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->d:I

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/t;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Lnet/simonvt/menudrawer/t;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->g:F

    iget v0, p0, Lnet/simonvt/menudrawer/t;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/t;->h:F

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
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final p()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lnet/simonvt/menudrawer/t;->a(IIZ)V

    return-void
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    invoke-super {p0, p1}, Lnet/simonvt/menudrawer/f;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/t;->ab:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/t;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/t;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/t;->j()V

    const/4 v0, 0x0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lnet/simonvt/menudrawer/t;->a(II)V

    :cond_0
    return-void
.end method
