.class public Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStripExpiredLabourCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTabProvider;,
        Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTextTabProvider;,
        Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;,
        Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$SavedState;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private BLACK:I

.field private WHITE:I

.field private checkedTabWidths:Z

.field private currentPosition:I

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field mTextViewTab:Landroid/widget/TextView;

.field private final pageListener:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->ATTRS:[I

    .line 64
    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v2, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;)V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pageListener:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;

    .line 77
    iput v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->currentPosition:I

    .line 80
    iput-boolean v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->checkedTabWidths:Z

    .line 82
    const v2, -0x99999a

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorColor:I

    .line 84
    const/high16 v2, 0x1a000000

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineColor:I

    .line 85
    const/high16 v2, 0x1a000000

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerColor:I

    .line 87
    iput-boolean v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->shouldExpand:Z

    .line 88
    iput-boolean v4, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->textAllCaps:Z

    .line 90
    const/16 v2, 0x34

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollOffset:I

    .line 91
    iput v6, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorHeight:I

    .line 92
    iput v8, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineHeight:I

    .line 93
    iput v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerPadding:I

    .line 94
    const/16 v2, 0x18

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabPadding:I

    .line 95
    iput v8, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerWidth:I

    .line 97
    const/16 v2, 0xc

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabTextSize:I

    .line 98
    const v2, -0x99999a

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabTextColor:I

    .line 99
    iput v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->lastScrollX:I

    .line 101
    const v2, 0x7f02005a

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabBackgroundResId:I

    .line 105
    iput v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->BLACK:I

    .line 106
    iput v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->WHITE:I

    .line 118
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->BLACK:I

    .line 119
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->WHITE:I

    .line 120
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 122
    invoke-virtual {p0, v4}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->setFillViewport(Z)V

    .line 123
    invoke-virtual {p0, v5}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->setWillNotDraw(Z)V

    .line 125
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    .line 126
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 130
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 134
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabTextSize:I

    .line 136
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollOffset:I

    .line 137
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorHeight:I

    .line 138
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineHeight:I

    .line 139
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerPadding:I

    .line 140
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabPadding:I

    .line 141
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerWidth:I

    .line 148
    sget-object v2, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabTextColor:I

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    sget-object v2, Lae/gov/mol/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorColor:I

    .line 158
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineColor:I

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineColor:I

    .line 160
    const/4 v2, 0x3

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerColor:I

    .line 161
    const/4 v2, 0x4

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorHeight:I

    .line 162
    const/4 v2, 0x5

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineHeight:I

    .line 163
    const/16 v2, 0xb

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerPadding:I

    .line 164
    const/4 v2, 0x6

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabPadding:I

    .line 165
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabBackgroundResId:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabBackgroundResId:I

    .line 166
    const/16 v2, 0x9

    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->shouldExpand:Z

    .line 167
    const/4 v2, 0x7

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollOffset:I

    .line 168
    const/16 v2, 0xa

    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->textAllCaps:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->textAllCaps:Z

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->rectPaint:Landroid/graphics/Paint;

    .line 173
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerPaint:Landroid/graphics/Paint;

    .line 177
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 182
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->locale:Ljava/util/Locale;

    .line 185
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->setBackgroundColor(I)V

    .line 186
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->currentPosition:I

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;II)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0, p1, p2}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->currentPosition:I

    return v0
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 299
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, "tab":Landroid/widget/ImageButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 301
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 303
    new-instance v1, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$3;

    invoke-direct {v1, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$3;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    return-void
.end method

.method private addImageIconTab(IILjava/lang/String;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "resId"    # I
    .param p3, "mTitle"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 323
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 324
    .local v2, "mLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 325
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 327
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 328
    .local v0, "mImageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 329
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    new-instance v4, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$4;

    invoke-direct {v4, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$4;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 338
    .local v3, "mTextView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setId(I)V

    .line 339
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 341
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getTextSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 342
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    new-instance v4, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$5;

    invoke-direct {v4, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$5;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 354
    .local v1, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x3e4ccccd    # 0.2f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 361
    .restart local v1    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x3f4ccccd    # 0.8f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 362
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    invoke-virtual {v2, v8, v7, v8, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 365
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 367
    iget-object v4, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    return-void
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v1, "tab":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setId(I)V

    .line 254
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 256
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 257
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 258
    const/4 v2, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 259
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 261
    packed-switch p1, :pswitch_data_0

    .line 279
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 280
    .local v0, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v2, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$2;

    invoke-direct {v2, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$2;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    return-void

    .line 264
    .end local v0    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const v2, 0x7f020159

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 268
    :pswitch_1
    const v2, 0x7f020137

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 272
    :pswitch_2
    const v2, 0x7f02015b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 410
    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabCount:I

    if-nez v1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 416
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 417
    :cond_2
    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 420
    :cond_3
    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 421
    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->lastScrollX:I

    .line 422
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 373
    return-void
.end method


# virtual methods
.method public SetTextViewChange(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 479
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v0

    .line 483
    .local v0, "position_id":I
    packed-switch v0, :pswitch_data_0

    .line 501
    :goto_0
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->BLACK:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    const/4 v1, 0x0

    iput-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    .line 505
    .end local v0    # "position_id":I
    :cond_0
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 506
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    .line 507
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 509
    packed-switch p1, :pswitch_data_1

    .line 526
    :goto_1
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->WHITE:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    :cond_1
    return-void

    .line 486
    .restart local v0    # "position_id":I
    :pswitch_0
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    const v2, 0x7f020159

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 490
    :pswitch_1
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    const v2, 0x7f020137

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 494
    :pswitch_2
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    const v2, 0x7f02015b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 511
    .end local v0    # "position_id":I
    :pswitch_3
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    const v2, 0x7f020158

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 515
    :pswitch_4
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    const v2, 0x7f020138

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 519
    :pswitch_5
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->mTextViewTab:Landroid/widget/TextView;

    const v2, 0x7f02015a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 509
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorColor:I

    return v0
.end method

.method public getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 208
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 210
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabCount:I

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabCount:I

    if-lt v0, v2, :cond_0

    .line 225
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->updateTabStyles()V

    .line 227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->checkedTabWidths:Z

    .line 229
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 230
    new-instance v3, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$1;

    invoke-direct {v3, p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$1;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)V

    .line 229
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 247
    return-void

    .line 214
    :cond_0
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    instance-of v2, v2, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTabProvider;

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTabProvider;

    invoke-interface {v2, v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTabProvider;->getPageIconResId(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->addIconTab(II)V

    .line 212
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    instance-of v2, v2, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTextTabProvider;

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTextTabProvider;

    .line 218
    .local v1, "mIconTabProvider":Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTextTabProvider;
    invoke-interface {v1, v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTextTabProvider;->getPageIconResId(I)I

    move-result v2

    invoke-interface {v1, v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTextTabProvider;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->addImageIconTab(IILjava/lang/String;)V

    goto :goto_1

    .line 220
    .end local v1    # "mIconTabProvider":Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$IconTextTabProvider;
    :cond_2
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->addTextTab(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 430
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 377
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 379
    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->shouldExpand:Z

    if-eqz v3, :cond_0

    .line 380
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getMeasuredWidth()I

    move-result v2

    .line 385
    .local v2, "myWidth":I
    const/4 v0, 0x0

    .line 386
    .local v0, "childWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabCount:I

    if-lt v1, v3, :cond_3

    .line 390
    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->checkedTabWidths:Z

    if-nez v3, :cond_0

    if-lez v0, :cond_0

    if-lez v2, :cond_0

    .line 392
    if-gt v0, v2, :cond_2

    .line 393
    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabCount:I

    if-lt v1, v3, :cond_4

    .line 399
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->checkedTabWidths:Z

    goto :goto_0

    .line 387
    :cond_3
    iget-object v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    :cond_4
    iget-object v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 395
    iget-object v4, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 394
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 668
    move-object v0, p1

    check-cast v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$SavedState;

    .line 669
    .local v0, "savedState":Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$SavedState;
    invoke-virtual {v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 670
    iget v1, v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$SavedState;->currentPosition:I

    iput v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->currentPosition:I

    .line 671
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->requestLayout()V

    .line 672
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 676
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 677
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$SavedState;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 678
    .local v0, "savedState":Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$SavedState;
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->currentPosition:I

    iput v2, v0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$SavedState;->currentPosition:I

    .line 679
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 619
    iput-boolean p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->textAllCaps:Z

    .line 620
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 565
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerColor:I

    .line 566
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 567
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 570
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerColor:I

    .line 571
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 572
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 588
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->dividerPadding:I

    .line 589
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 590
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 471
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorColor:I

    .line 472
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 473
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 533
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorColor:I

    .line 534
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 535
    return-void
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indicatorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 49
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 542
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->indicatorHeight:I

    .line 543
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 544
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 203
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 204
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 597
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollOffset:I

    .line 598
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 599
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 606
    iput-boolean p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->shouldExpand:Z

    .line 607
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->requestLayout()V

    .line 608
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 650
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabBackgroundResId:I

    .line 651
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 658
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabPadding:I

    .line 659
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->updateTabStyles()V

    .line 660
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 632
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabTextColor:I

    .line 633
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->updateTabStyles()V

    .line 634
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 637
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabTextColor:I

    .line 638
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->updateTabStyles()V

    .line 639
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 623
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->tabTextSize:I

    .line 624
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->updateTabStyles()V

    .line 625
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 646
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->updateTabStyles()V

    .line 647
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 551
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineColor:I

    .line 552
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 553
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 556
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineColor:I

    .line 557
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 558
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 579
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->underlineHeight:I

    .line 580
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->invalidate()V

    .line 581
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 189
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;

    .line 191
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 193
    const-string v1, "ViewPager does not have adapter instance."

    .line 192
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pageListener:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 198
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->notifyDataSetChanged()V

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->SetTextViewChange(I)V

    .line 200
    return-void
.end method
