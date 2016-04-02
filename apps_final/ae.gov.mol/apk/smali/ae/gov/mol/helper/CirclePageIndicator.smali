.class public Lae/gov/mol/helper/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lae/gov/mol/helper/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/helper/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field ANTI_ALIAS_FLAG:I

.field final HORIZONTAL:I

.field final VERTICAL:I

.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lae/gov/mol/helper/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const v0, 0x7f010096

    invoke-direct {p0, p1, p2, v0}, Lae/gov/mol/helper/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->ANTI_ALIAS_FLAG:I

    .line 29
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->HORIZONTAL:I

    .line 30
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->VERTICAL:I

    .line 33
    new-instance v17, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->ANTI_ALIAS_FLAG:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 34
    new-instance v17, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->ANTI_ALIAS_FLAG:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 35
    new-instance v17, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->ANTI_ALIAS_FLAG:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 47
    const/high16 v17, -0x40800000    # -1.0f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->mLastMotionX:F

    .line 48
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->mActivePointerId:I

    .line 64
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/CirclePageIndicator;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 101
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 68
    .local v16, "res":Landroid/content/res/Resources;
    const v17, 0x7f08004f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 69
    .local v11, "defaultPageColor":I
    const v17, 0x7f08004e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 70
    .local v9, "defaultFillColor":I
    const v17, 0x7f0c0001

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 71
    .local v10, "defaultOrientation":I
    const v17, 0x7f080050

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 72
    .local v14, "defaultStrokeColor":I
    const v17, 0x7f07001e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 73
    .local v15, "defaultStrokeWidth":F
    const v17, 0x7f07001d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 74
    .local v12, "defaultRadius":F
    const v17, 0x7f0b0006

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 75
    .local v8, "defaultCentered":Z
    const v17, 0x7f0b0007

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 78
    .local v13, "defaultSnap":Z
    sget-object v17, Lae/gov/mol/R$styleable;->CirclePageIndicator:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 80
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->mCentered:Z

    .line 81
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->mOrientation:I

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    .line 90
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->mSnap:Z

    .line 92
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 93
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 94
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lae/gov/mol/helper/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 100
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v7}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lae/gov/mol/helper/CirclePageIndicator;->mTouchSlop:I

    goto/16 :goto_0
.end method

.method private measureLong(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 449
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 450
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 452
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 454
    :cond_0
    move v1, v3

    .line 465
    .local v1, "result":I
    :cond_1
    :goto_0
    return v1

    .line 457
    .end local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 458
    .local v0, "count":I
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 459
    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    .line 458
    add-float/2addr v4, v5

    .line 459
    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    .line 458
    add-float/2addr v4, v5

    .line 459
    const/high16 v5, 0x3f800000    # 1.0f

    .line 458
    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 461
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 462
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 477
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 478
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 480
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 482
    move v0, v2

    .line 491
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 485
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 487
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 488
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 385
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 386
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 186
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 192
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v3, :cond_2

    .line 197
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 205
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 206
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/CirclePageIndicator;->getWidth()I

    move-result v12

    .line 207
    .local v12, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/CirclePageIndicator;->getPaddingLeft()I

    move-result v11

    .line 208
    .local v11, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/CirclePageIndicator;->getPaddingRight()I

    move-result v10

    .line 209
    .local v10, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/CirclePageIndicator;->getPaddingTop()I

    move-result v15

    .line 217
    .local v15, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    mul-float v16, v17, v18

    .line 218
    .local v16, "threeRadius":F
    int-to-float v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v14, v17, v18

    .line 219
    .local v14, "shortOffset":F
    int-to-float v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 220
    .local v9, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mCentered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 221
    sub-int v17, v12, v11

    sub-int v17, v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    add-float v9, v9, v17

    .line 227
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    .line 228
    .local v13, "pageFillRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v13, v13, v17

    .line 233
    :cond_4
    const/4 v8, 0x0

    .local v8, "iLoop":I
    :goto_2
    if-lt v8, v3, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mSnapPage:I

    move/from16 v17, v0

    :goto_3
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v4, v17, v16

    .line 255
    .local v4, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPageOffset:F

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v4, v4, v17

    .line 258
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 259
    add-float v5, v9, v4

    .line 260
    .local v5, "dX":F
    move v6, v14

    .line 265
    .local v6, "dY":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 211
    .end local v4    # "cx":F
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v8    # "iLoop":I
    .end local v9    # "longOffset":F
    .end local v10    # "longPaddingAfter":I
    .end local v11    # "longPaddingBefore":I
    .end local v12    # "longSize":I
    .end local v13    # "pageFillRadius":F
    .end local v14    # "shortOffset":F
    .end local v15    # "shortPaddingBefore":I
    .end local v16    # "threeRadius":F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/CirclePageIndicator;->getHeight()I

    move-result v12

    .line 212
    .restart local v12    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/CirclePageIndicator;->getPaddingTop()I

    move-result v11

    .line 213
    .restart local v11    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/CirclePageIndicator;->getPaddingBottom()I

    move-result v10

    .line 214
    .restart local v10    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lae/gov/mol/helper/CirclePageIndicator;->getPaddingLeft()I

    move-result v15

    .restart local v15    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 234
    .restart local v8    # "iLoop":I
    .restart local v9    # "longOffset":F
    .restart local v13    # "pageFillRadius":F
    .restart local v14    # "shortOffset":F
    .restart local v16    # "threeRadius":F
    :cond_7
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v7, v9, v17

    .line 235
    .local v7, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 236
    move v5, v7

    .line 237
    .restart local v5    # "dX":F
    move v6, v14

    .line 243
    .restart local v6    # "dY":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    if-lez v17, :cond_8

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 248
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    cmpl-float v17, v13, v17

    if-eqz v17, :cond_9

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 239
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_a
    move v5, v14

    .line 240
    .restart local v5    # "dX":F
    move v6, v7

    .restart local v6    # "dY":F
    goto :goto_5

    .line 254
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    goto/16 :goto_3

    .line 262
    .restart local v4    # "cx":F
    :cond_c
    move v5, v14

    .line 263
    .restart local v5    # "dX":F
    add-float v6, v9, v4

    .restart local v6    # "dY":F
    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 433
    iget v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0, p1}, Lae/gov/mol/helper/CirclePageIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lae/gov/mol/helper/CirclePageIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lae/gov/mol/helper/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-direct {p0, p1}, Lae/gov/mol/helper/CirclePageIndicator;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lae/gov/mol/helper/CirclePageIndicator;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lae/gov/mol/helper/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 390
    iput p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mScrollState:I

    .line 392
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 395
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 399
    iput p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    .line 400
    iput p2, p0, Lae/gov/mol/helper/CirclePageIndicator;->mPageOffset:F

    .line 401
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 403
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 406
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 410
    iget-boolean v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 411
    :cond_0
    iput p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    .line 412
    iput p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mSnapPage:I

    .line 413
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 416
    :cond_1
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 419
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 496
    move-object v0, p1

    check-cast v0, Lae/gov/mol/helper/CirclePageIndicator$SavedState;

    .line 497
    .local v0, "savedState":Lae/gov/mol/helper/CirclePageIndicator$SavedState;
    invoke-virtual {v0}, Lae/gov/mol/helper/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 498
    iget v1, v0, Lae/gov/mol/helper/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    .line 499
    iget v1, v0, Lae/gov/mol/helper/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mSnapPage:I

    .line 500
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->requestLayout()V

    .line 501
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 505
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 506
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lae/gov/mol/helper/CirclePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 507
    .local v0, "savedState":Lae/gov/mol/helper/CirclePageIndicator$SavedState;
    iget v2, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    iput v2, v0, Lae/gov/mol/helper/CirclePageIndicator$SavedState;->currentPage:I

    .line 508
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 270
    const/4 v12, 0x1

    .line 348
    :goto_0
    return v12

    .line 272
    :cond_0
    iget-object v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 273
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 277
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 348
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 279
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mActivePointerId:I

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 284
    :pswitch_2
    iget v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 285
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 286
    .local v11, "x":F
    iget v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 288
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 289
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lae/gov/mol/helper/CirclePageIndicator;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 290
    const/4 v12, 0x1

    iput-boolean v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mIsDragging:Z

    .line 294
    :cond_4
    iget-boolean v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 295
    iput v11, p0, Lae/gov/mol/helper/CirclePageIndicator;->mLastMotionX:F

    .line 296
    iget-object v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 297
    :cond_5
    iget-object v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 306
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_9

    .line 307
    iget-object v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 308
    .local v2, "count":I
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->getWidth()I

    move-result v10

    .line 309
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 310
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 312
    .local v9, "sixthWidth":F
    iget v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 313
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 314
    iget-object v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 316
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 317
    :cond_7
    iget v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 318
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 319
    iget-object v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 321
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 325
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mIsDragging:Z

    .line 326
    const/4 v12, -0x1

    iput v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mActivePointerId:I

    .line 327
    iget-object v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 331
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 332
    .local v5, "index":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mLastMotionX:F

    .line 333
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 338
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 339
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 340
    .local v7, "pointerId":I
    iget v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mActivePointerId:I

    if-ne v7, v12, :cond_a

    .line 341
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 342
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mActivePointerId:I

    .line 344
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lae/gov/mol/helper/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 341
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 277
    nop

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
    .param p1, "centered"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCentered:Z

    .line 106
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 107
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 379
    iput p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mCurrentPage:I

    .line 380
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 381
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 125
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 423
    iput-object p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 424
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    iput p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mOrientation:I

    .line 136
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->requestLayout()V

    .line 142
    return-void

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 116
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 167
    iput p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mRadius:F

    .line 168
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 169
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mSnap:Z

    .line 177
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 178
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 151
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 158
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    .line 160
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 353
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 359
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_2
    iput-object p1, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 363
    iget-object v0, p0, Lae/gov/mol/helper/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 364
    invoke-virtual {p0}, Lae/gov/mol/helper/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lae/gov/mol/helper/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 370
    invoke-virtual {p0, p2}, Lae/gov/mol/helper/CirclePageIndicator;->setCurrentItem(I)V

    .line 371
    return-void
.end method
