.class public Lcom/alipay/android/launcher/guide/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/alipay/android/launcher/guide/PageIndicator;


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mCentered:Z

.field private mCurrentOffset:I

.field private mCurrentPage:I

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageSize:I

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/alipay/android/tablauncher/R$attr;->circlePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    sget v1, Lcom/alipay/android/tablauncher/R$color;->default_circle_indicator_fill_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 57
    sget v2, Lcom/alipay/android/tablauncher/R$integer;->default_circle_indicator_orientation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 59
    sget v3, Lcom/alipay/android/tablauncher/R$color;->default_circle_indicator_stroke_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 61
    sget v4, Lcom/alipay/android/tablauncher/R$dimen;->default_circle_indicator_stroke_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 63
    sget v5, Lcom/alipay/android/tablauncher/R$dimen;->default_circle_indicator_radius:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 65
    sget v6, Lcom/alipay/android/tablauncher/R$bool;->default_circle_indicator_centered:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 67
    sget v7, Lcom/alipay/android/tablauncher/R$bool;->default_circle_indicator_snap:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 71
    sget-object v7, Lcom/alipay/android/tablauncher/R$styleable;->CirclePageIndicator:[I

    .line 72
    sget v8, Lcom/alipay/android/tablauncher/R$style;->Widget_CirclePageIndicator:I

    .line 70
    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 74
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCentered:Z

    .line 76
    const/4 v6, 0x2

    invoke-virtual {v7, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mOrientation:I

    .line 79
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 80
    iget-object v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 83
    const/4 v6, 0x5

    invoke-virtual {v7, v6, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 82
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 86
    const/4 v3, 0x6

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 85
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 89
    iget-object v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    const/4 v1, 0x3

    invoke-virtual {v7, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    .line 94
    const/4 v1, 0x4

    invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mSnap:Z

    .line 96
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method private measureLong(I)I
    .locals 6

    .prologue
    .line 357
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 359
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 361
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 374
    :goto_0
    return v0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 367
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 368
    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    mul-float/2addr v4, v5

    .line 367
    add-float/2addr v3, v4

    .line 368
    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v4, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    mul-float/2addr v1, v4

    .line 367
    add-float/2addr v1, v3

    .line 368
    const/high16 v3, 0x3f800000    # 1.0f

    .line 367
    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 370
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 371
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 4

    .prologue
    .line 379
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 381
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 383
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 394
    :goto_0
    return v0

    .line 388
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 390
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 391
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private updatePageSize()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 270
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPageSize:I

    .line 272
    :cond_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private writeLog(I)V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UC-FFC-150108-0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 329
    const-string/jumbo v1, "09999971"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 330
    const-string/jumbo v1, "newPageone"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 332
    return-void
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 179
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 185
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getWidth()I

    move-result v3

    .line 187
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 188
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 189
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    .line 197
    :goto_0
    iget-object v4, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    .line 198
    iget v4, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v6, v4

    .line 199
    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    add-float/2addr v4, v0

    .line 200
    int-to-float v0, v2

    iget v7, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    add-float/2addr v0, v7

    .line 201
    iget-boolean v7, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCentered:Z

    if-eqz v7, :cond_0

    .line 202
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v2, v5

    mul-float/2addr v2, v6

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 209
    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-lt v3, v5, :cond_3

    .line 222
    iget-boolean v1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mSnap:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mSnapPage:I

    :goto_2
    int-to-float v1, v1

    mul-float/2addr v1, v6

    .line 223
    iget-boolean v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mSnap:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPageSize:I

    if-eqz v2, :cond_1

    .line 224
    iget v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentOffset:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPageSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    .line 226
    :cond_1
    iget v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mOrientation:I

    if-nez v2, :cond_6

    .line 227
    add-float/2addr v0, v1

    .line 233
    :goto_3
    iget v1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    iget-object v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 234
    return-void

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getHeight()I

    move-result v3

    .line 192
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 193
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 194
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 210
    :cond_3
    int-to-float v1, v3

    mul-float/2addr v1, v6

    add-float/2addr v1, v0

    .line 211
    iget v2, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mOrientation:I

    if-nez v2, :cond_4

    move v2, v1

    move v1, v4

    .line 216
    :goto_4
    iget v7, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    iget-object v8, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 209
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_4
    move v2, v4

    .line 215
    goto :goto_4

    .line 222
    :cond_5
    iget v1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentPage:I

    goto :goto_2

    .line 231
    :cond_6
    add-float/2addr v0, v1

    move v9, v0

    move v0, v4

    move v4, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 292
    iput p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mScrollState:I

    .line 294
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 297
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 301
    iput p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentPage:I

    .line 302
    iput p3, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentOffset:I

    .line 303
    invoke-direct {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->updatePageSize()V

    .line 304
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->invalidate()V

    .line 306
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 309
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 314
    :cond_0
    iput p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentPage:I

    .line 315
    iput p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mSnapPage:I

    .line 316
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->invalidate()V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 323
    :cond_2
    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->writeLog(I)V

    .line 324
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 399
    check-cast p1, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;

    .line 400
    invoke-virtual {p1}, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 401
    iget v0, p1, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentPage:I

    .line 402
    iget v0, p1, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mSnapPage:I

    .line 403
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->requestLayout()V

    .line 404
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 408
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 410
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentPage:I

    iput v0, v1, Lcom/alipay/android/launcher/guide/CirclePageIndicator$SavedState;->currentPage:I

    .line 411
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 240
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getWidth()I

    move-result v0

    .line 241
    :goto_0
    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 242
    mul-int/lit8 v0, v2, 0x3

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    mul-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    .line 243
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 245
    :goto_1
    iget v5, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentPage:I

    if-lez v5, :cond_2

    sub-float v5, v3, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 246
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->setCurrentItem(I)V

    move v0, v1

    .line 254
    :goto_2
    return v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->getHeight()I

    move-result v0

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_1

    .line 248
    :cond_2
    iget v5, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    if-ge v5, v2, :cond_3

    add-float v2, v3, v4

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 249
    iget v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->setCurrentItem(I)V

    move v0, v1

    .line 250
    goto :goto_2

    .line 254
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2
.end method

.method public setCentered(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCentered:Z

    .line 102
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->invalidate()V

    .line 103
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 286
    iput p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mCurrentPage:I

    .line 287
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->invalidate()V

    .line 288
    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->invalidate()V

    .line 112
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 337
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :pswitch_0
    iput p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mOrientation:I

    .line 123
    invoke-direct {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->updatePageSize()V

    .line 124
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->requestLayout()V

    .line 125
    return-void

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mRadius:F

    .line 156
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->invalidate()V

    .line 157
    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mSnap:Z

    .line 165
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->invalidate()V

    .line 166
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->invalidate()V

    .line 139
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->invalidate()V

    .line 148
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 263
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 264
    invoke-direct {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->updatePageSize()V

    .line 265
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->invalidate()V

    .line 266
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 277
    invoke-virtual {p0, p2}, Lcom/alipay/android/launcher/guide/CirclePageIndicator;->setCurrentItem(I)V

    .line 278
    return-void
.end method
