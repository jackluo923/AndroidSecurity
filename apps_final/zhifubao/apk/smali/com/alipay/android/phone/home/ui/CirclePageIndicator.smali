.class public Lcom/alipay/android/phone/home/ui/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/alipay/android/phone/home/ui/PageIndicator;


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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/alipay/android/phone/openplatform/R$attr;->a:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 64
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->o:F

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->p:I

    .line 79
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    sget v1, Lcom/alipay/android/phone/openplatform/R$color;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 84
    sget v2, Lcom/alipay/android/phone/openplatform/R$color;->c:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 85
    sget v3, Lcom/alipay/android/phone/openplatform/R$integer;->a:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 86
    sget v4, Lcom/alipay/android/phone/openplatform/R$color;->e:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 87
    sget v5, Lcom/alipay/android/phone/openplatform/R$dimen;->b:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 88
    sget v6, Lcom/alipay/android/phone/openplatform/R$dimen;->a:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 89
    sget v7, Lcom/alipay/android/phone/openplatform/R$bool;->a:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 90
    sget v8, Lcom/alipay/android/phone/openplatform/R$bool;->b:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 93
    sget-object v8, Lcom/alipay/android/phone/openplatform/R$styleable;->a:[I

    invoke-virtual {p1, p2, v8, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 95
    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->l:Z

    .line 96
    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->k:I

    .line 97
    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->b:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v3, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->b:Landroid/graphics/Paint;

    const/4 v7, 0x4

    invoke-virtual {v8, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    const/4 v3, 0x7

    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    const/16 v3, 0x8

    invoke-virtual {v8, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->d:Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    const/4 v1, 0x5

    invoke-virtual {v8, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    .line 105
    const/4 v1, 0x6

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->m:Z

    .line 107
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->n:I

    goto/16 :goto_0
.end method

.method private a(I)I
    .locals 6

    .prologue
    .line 470
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 471
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 473
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 486
    :cond_1
    :goto_0
    return v0

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v0

    .line 479
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 480
    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    mul-float/2addr v4, v5

    .line 479
    add-float/2addr v3, v4

    .line 480
    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    mul-float/2addr v0, v4

    .line 479
    add-float/2addr v0, v3

    .line 480
    const/high16 v3, 0x3f800000    # 1.0f

    .line 479
    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 482
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 483
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 498
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 499
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 501
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 512
    :goto_0
    return v0

    .line 506
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 508
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 509
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

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->k:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->l:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->m:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 403
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 202
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v6

    .line 208
    if-eqz v6, :cond_0

    .line 212
    iget v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->g:I

    if-lt v0, v6, :cond_2

    .line 213
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 221
    :cond_2
    iget v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->k:I

    if-nez v0, :cond_6

    .line 222
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getWidth()I

    move-result v3

    .line 223
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 224
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 225
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    .line 233
    :goto_1
    iget v4, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v7, v4, v5

    .line 234
    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    add-float/2addr v4, v0

    .line 235
    int-to-float v0, v2

    iget v5, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    add-float/2addr v0, v5

    .line 236
    iget-boolean v5, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->l:Z

    if-eqz v5, :cond_3

    .line 237
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v2, v6

    mul-float/2addr v2, v7

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 243
    :cond_3
    iget v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    .line 244
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 245
    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    .line 249
    :cond_4
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-lt v5, v6, :cond_7

    .line 270
    iget-boolean v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->m:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->h:I

    :goto_3
    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 271
    iget-boolean v2, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->m:Z

    if-nez v2, :cond_5

    .line 272
    iget v2, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->i:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 274
    :cond_5
    iget v2, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->k:I

    if-nez v2, :cond_c

    .line 275
    add-float/2addr v0, v1

    .line 281
    :goto_4
    iget v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 227
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getHeight()I

    move-result v3

    .line 228
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 229
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 230
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    .line 250
    :cond_7
    int-to-float v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v2, v0

    .line 251
    iget v3, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->k:I

    if-nez v3, :cond_a

    move v3, v2

    move v2, v4

    .line 256
    :goto_5
    iget-object v8, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_8

    .line 260
    iget-object v8, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    :cond_8
    iget v8, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_9

    .line 265
    iget v8, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    iget-object v9, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    :cond_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    :cond_a
    move v3, v4

    .line 255
    goto :goto_5

    .line 270
    :cond_b
    iget v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->g:I

    goto :goto_3

    .line 279
    :cond_c
    add-float/2addr v0, v1

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 454
    iget v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->k:I

    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->b(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 407
    iput p1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->j:I

    .line 409
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 412
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v0

    .line 417
    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    rem-int v0, p1, v0

    iput v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->g:I

    .line 419
    iput p2, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->i:F

    .line 420
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 422
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->j:I

    if-nez v0, :cond_3

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/BannerView$AdvertPagerAdapter;->a()I

    move-result v0

    .line 431
    if-nez v0, :cond_2

    .line 440
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    rem-int v1, p1, v0

    iput v1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->g:I

    .line 433
    rem-int v0, p1, v0

    iput v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->h:I

    .line 434
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 517
    check-cast p1, Lcom/alipay/android/phone/home/ui/CirclePageIndicator$SavedState;

    .line 518
    invoke-virtual {p1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 519
    iget v0, p1, Lcom/alipay/android/phone/home/ui/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->g:I

    .line 520
    iget v0, p1, Lcom/alipay/android/phone/home/ui/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->h:I

    .line 521
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->requestLayout()V

    .line 522
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 526
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 527
    new-instance v1, Lcom/alipay/android/phone/home/ui/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 528
    iget v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->g:I

    iput v0, v1, Lcom/alipay/android/phone/home/ui/CirclePageIndicator$SavedState;->a:I

    .line 529
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCentered(Z)V
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->l:Z

    .line 122
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 123
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 396
    iput p1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->g:I

    .line 397
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 398
    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 141
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 445
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_0
    iput p1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->k:I

    .line 152
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->requestLayout()V

    .line 153
    return-void

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 132
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 183
    iput p1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->a:F

    .line 184
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 185
    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->m:Z

    .line 193
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 194
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 167
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    .line 176
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 376
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_2
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 380
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 381
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 387
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/home/ui/CirclePageIndicator;->setCurrentItem(I)V

    .line 388
    return-void
.end method
