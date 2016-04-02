.class public Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;
.super Landroid/view/View;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/hgridview/PageIndicator;


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$attr;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->o:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->p:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$color;->default_circle_indicator_page_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->default_circle_indicator_fill_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Lcom/alipay/mobile/ui/R$integer;->default_circle_indicator_orientation:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sget v4, Lcom/alipay/mobile/ui/R$color;->default_circle_indicator_stroke_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget v5, Lcom/alipay/mobile/ui/R$dimen;->default_circle_indicator_stroke_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sget v6, Lcom/alipay/mobile/ui/R$dimen;->default_circle_indicator_radius:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sget v7, Lcom/alipay/mobile/ui/R$bool;->default_circle_indicator_centered:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sget v8, Lcom/alipay/mobile/ui/R$bool;->default_circle_indicator_snap:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sget-object v8, Lcom/alipay/mobile/ui/R$styleable;->CirclePageIndicator:[I

    invoke-virtual {p1, p2, v8, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->l:Z

    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->k:I

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->b:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->b:Landroid/graphics/Paint;

    const/4 v7, 0x5

    invoke-virtual {v8, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    const/16 v3, 0x8

    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-virtual {v8, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x6

    invoke-virtual {v8, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    const/4 v1, 0x7

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->m:Z

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->n:I

    goto/16 :goto_0
.end method

.method private a(I)I
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    float-to-int v0, v0

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->k:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->l:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->m:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/high16 v8, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    if-lt v0, v6, :cond_2

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->k:I

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    :goto_1
    iget v4, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v7, v4, v5

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    add-float/2addr v0, v4

    add-float v4, v0, v8

    int-to-float v0, v2

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    add-float/2addr v0, v5

    iget-boolean v5, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->l:Z

    if-eqz v5, :cond_3

    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v2, v6

    mul-float/2addr v2, v7

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    :cond_4
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v6, :cond_9

    int-to-float v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v2, v0

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->k:I

    if-nez v3, :cond_8

    move v3, v2

    move v2, v4

    :goto_3
    iget-object v8, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_5

    iget-object v8, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    iget v8, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    iget-object v9, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->m:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->h:I

    :goto_4
    int-to-float v1, v1

    mul-float/2addr v1, v7

    iget-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->m:Z

    if-nez v2, :cond_a

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->i:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    :cond_a
    iget v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->k:I

    if-nez v2, :cond_c

    add-float/2addr v0, v1

    :goto_5
    iget v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_b
    iget v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    goto :goto_4

    :cond_c
    add-float/2addr v0, v1

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->k:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->b(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->j:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->i:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->j:I

    if-nez v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->h:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    iget v0, p1, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->h:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    iput v0, v1, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->p:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->o:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->o:F

    sub-float v2, v0, v2

    iget-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->q:Z

    if-nez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->n:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->q:Z

    :cond_4
    iget-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->q:Z

    if-eqz v3, :cond_0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->o:F

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    :pswitch_3
    iget-boolean v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->q:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->getWidth()I

    move-result v4

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    if-eq v2, v8, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_6
    iget v6, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    if-eq v2, v8, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_7
    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->q:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->p:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->o:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->p:I

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->p:I

    if-ne v3, v4, :cond_9

    if-nez v2, :cond_8

    move v0, v1

    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->p:I

    :cond_9
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->o:F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->l:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->g:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->k:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->a:F

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->m:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/commonui/widget/hgridview/CirclePageIndicator;->setCurrentItem(I)V

    return-void
.end method
