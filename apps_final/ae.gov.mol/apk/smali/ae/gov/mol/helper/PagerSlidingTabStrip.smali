.class public Lae/gov/mol/helper/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/helper/PagerSlidingTabStrip$IconTabProvider;,
        Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;,
        Lae/gov/mol/helper/PagerSlidingTabStrip$PageListener;,
        Lae/gov/mol/helper/PagerSlidingTabStrip$SavedState;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private BLACK:I

.field private GRAY:I

.field private LastPosition:I

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

.field mIconTabProvider:Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;

.field mImageViewTab:Landroid/widget/ImageView;

.field mTextViewTab:Landroid/widget/TextView;

.field private final pageListener:Lae/gov/mol/helper/PagerSlidingTabStrip$PageListener;

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
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lae/gov/mol/helper/PagerSlidingTabStrip;->ATTRS:[I

    .line 78
    return-void

    .line 75
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
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lae/gov/mol/helper/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae/gov/mol/helper/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
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

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v2, Lae/gov/mol/helper/PagerSlidingTabStrip$PageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip$PageListener;-><init>(Lae/gov/mol/helper/PagerSlidingTabStrip;Lae/gov/mol/helper/PagerSlidingTabStrip$PageListener;)V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->pageListener:Lae/gov/mol/helper/PagerSlidingTabStrip$PageListener;

    .line 91
    iput v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->currentPosition:I

    .line 95
    iput-boolean v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->checkedTabWidths:Z

    .line 97
    const v2, -0x99999a

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorColor:I

    .line 99
    const/high16 v2, 0x1a000000

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineColor:I

    .line 100
    const/high16 v2, 0x1a000000

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerColor:I

    .line 102
    iput-boolean v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->shouldExpand:Z

    .line 103
    iput-boolean v5, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->textAllCaps:Z

    .line 105
    const/16 v2, 0x34

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->scrollOffset:I

    .line 106
    iput v6, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorHeight:I

    .line 107
    iput v8, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineHeight:I

    .line 108
    iput v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerPadding:I

    .line 109
    const/16 v2, 0x18

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabPadding:I

    .line 110
    iput v8, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerWidth:I

    .line 112
    const/16 v2, 0xc

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabTextSize:I

    .line 113
    const v2, -0x99999a

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabTextColor:I

    .line 114
    iput v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->lastScrollX:I

    .line 116
    const v2, 0x7f02005a

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 120
    iput v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->BLACK:I

    .line 121
    iput v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->GRAY:I

    .line 122
    iput v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->LastPosition:I

    .line 151
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->BLACK:I

    .line 152
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->GRAY:I

    .line 154
    invoke-virtual {p0, v5}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 155
    invoke-virtual {p0, v4}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 157
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 158
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 161
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 162
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lae/gov/mol/helper/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 166
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabTextSize:I

    .line 168
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->scrollOffset:I

    .line 169
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorHeight:I

    .line 170
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineHeight:I

    .line 171
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerPadding:I

    .line 172
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabPadding:I

    .line 173
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerWidth:I

    .line 175
    sget-object v2, Lae/gov/mol/helper/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabTextColor:I

    .line 179
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    sget-object v2, Lae/gov/mol/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorColor:I

    .line 185
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineColor:I

    .line 187
    const/4 v2, 0x3

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerColor:I

    .line 188
    const/4 v2, 0x4

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorHeight:I

    .line 189
    const/4 v2, 0x5

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineHeight:I

    .line 190
    const/16 v2, 0xb

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerPadding:I

    .line 191
    const/4 v2, 0x6

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabPadding:I

    .line 192
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 193
    const/16 v2, 0x9

    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->shouldExpand:Z

    .line 194
    const/4 v2, 0x7

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->scrollOffset:I

    .line 195
    const/16 v2, 0xa

    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->textAllCaps:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->textAllCaps:Z

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 200
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 204
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 205
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 207
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 209
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    .line 211
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/helper/PagerSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->currentPosition:I

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/helper/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/helper/PagerSlidingTabStrip;II)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lae/gov/mol/helper/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/helper/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/helper/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 319
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 320
    .local v0, "tab":Landroid/widget/ImageButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 321
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 323
    new-instance v1, Lae/gov/mol/helper/PagerSlidingTabStrip$3;

    invoke-direct {v1, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStrip$3;-><init>(Lae/gov/mol/helper/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    return-void
.end method

.method private addImageIconTab(IILjava/lang/String;)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "resId"    # I
    .param p3, "mTitle"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    .line 343
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 344
    .local v2, "mLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 345
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 347
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "mImageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 349
    add-int/lit16 v4, p1, 0x3e8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 350
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    new-instance v4, Lae/gov/mol/helper/PagerSlidingTabStrip$4;

    invoke-direct {v4, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStrip$4;-><init>(Lae/gov/mol/helper/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 360
    .local v3, "mTextView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setId(I)V

    .line 361
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 363
    iget v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->GRAY:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 365
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 366
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getTextSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 367
    new-instance v4, Lae/gov/mol/helper/PagerSlidingTabStrip$5;

    invoke-direct {v4, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStrip$5;-><init>(Lae/gov/mol/helper/PagerSlidingTabStrip;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 376
    .local v1, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x3e4ccccd    # 0.2f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 377
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 381
    .restart local v1    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x3f4ccccd    # 0.8f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 382
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    invoke-virtual {v2, v9, v8, v9, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 385
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 387
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 388
    .restart local v1    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 390
    iget-object v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    return-void
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 292
    .local v1, "tab":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setId(I)V

    .line 293
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 295
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 296
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 297
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 298
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 300
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 301
    .local v0, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v2, Lae/gov/mol/helper/PagerSlidingTabStrip$2;

    invoke-direct {v2, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStrip$2;-><init>(Lae/gov/mol/helper/PagerSlidingTabStrip;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 432
    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 438
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 439
    :cond_2
    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 442
    :cond_3
    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 443
    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->lastScrollX:I

    .line 444
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method


# virtual methods
.method public SetImageViewChange(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 529
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mImageViewTab:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mImageViewTab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->LastPosition:I

    .line 531
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mImageViewTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mIconTabProvider:Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;

    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->LastPosition:I

    add-int/lit16 v2, v2, -0x3e8

    invoke-interface {v1, v2}, Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mImageViewTab:Landroid/widget/ImageView;

    .line 535
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mImageViewTab:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 536
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    add-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mImageViewTab:Landroid/widget/ImageView;

    .line 537
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mImageViewTab:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mImageViewTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mIconTabProvider:Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;

    invoke-interface {v1, p1}, Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;->getPageIconHoverResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    :cond_1
    return-void
.end method

.method public SetTextViewChange(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mTextViewTab:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mTextViewTab:Landroid/widget/TextView;

    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->GRAY:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mTextViewTab:Landroid/widget/TextView;

    .line 515
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mTextViewTab:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 516
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mTextViewTab:Landroid/widget/TextView;

    .line 517
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mTextViewTab:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mTextViewTab:Landroid/widget/TextView;

    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->BLACK:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    :cond_1
    return-void
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 246
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabCount:I

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabCount:I

    if-lt v0, v1, :cond_0

    .line 261
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->updateTabStyles()V

    .line 263
    const/4 v1, 0x0

    iput-boolean v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->checkedTabWidths:Z

    .line 265
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lae/gov/mol/helper/PagerSlidingTabStrip$1;

    invoke-direct {v2, p0}, Lae/gov/mol/helper/PagerSlidingTabStrip$1;-><init>(Lae/gov/mol/helper/PagerSlidingTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 282
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lae/gov/mol/helper/PagerSlidingTabStrip$IconTabProvider;

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lae/gov/mol/helper/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v1, v0}, Lae/gov/mol/helper/PagerSlidingTabStrip$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStrip;->addIconTab(II)V

    .line 248
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;

    if-eqz v1, :cond_2

    .line 253
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;

    iput-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mIconTabProvider:Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;

    .line 254
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mIconTabProvider:Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;

    invoke-interface {v1, v0}, Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;->getPageIconResId(I)I

    move-result v1

    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->mIconTabProvider:Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;

    invoke-interface {v2, v0}, Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lae/gov/mol/helper/PagerSlidingTabStrip;->addImageIconTab(IILjava/lang/String;)V

    goto :goto_1

    .line 256
    :cond_2
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 453
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 401
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 403
    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getMeasuredWidth()I

    move-result v2

    .line 408
    .local v2, "myWidth":I
    const/4 v0, 0x0

    .line 409
    .local v0, "childWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabCount:I

    if-lt v1, v3, :cond_3

    .line 413
    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->checkedTabWidths:Z

    if-nez v3, :cond_0

    if-lez v0, :cond_0

    if-lez v2, :cond_0

    .line 415
    if-gt v0, v2, :cond_2

    .line 416
    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabCount:I

    if-lt v1, v3, :cond_4

    .line 421
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->checkedTabWidths:Z

    goto :goto_0

    .line 410
    :cond_3
    iget-object v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    :cond_4
    iget-object v3, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 729
    move-object v0, p1

    check-cast v0, Lae/gov/mol/helper/PagerSlidingTabStrip$SavedState;

    .line 730
    .local v0, "savedState":Lae/gov/mol/helper/PagerSlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lae/gov/mol/helper/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 731
    iget v1, v0, Lae/gov/mol/helper/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->currentPosition:I

    .line 732
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->requestLayout()V

    .line 733
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 737
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 738
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lae/gov/mol/helper/PagerSlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 739
    .local v0, "savedState":Lae/gov/mol/helper/PagerSlidingTabStrip$SavedState;
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->currentPosition:I

    iput v2, v0, Lae/gov/mol/helper/PagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 740
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 680
    iput-boolean p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->textAllCaps:Z

    .line 681
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 611
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerColor:I

    .line 612
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->invalidate()V

    .line 613
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 620
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerColor:I

    .line 621
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->invalidate()V

    .line 622
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 649
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->dividerPadding:I

    .line 650
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->invalidate()V

    .line 651
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 501
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorColor:I

    .line 502
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->invalidate()V

    .line 503
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 550
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorColor:I

    .line 551
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->invalidate()V

    .line 552
    return-void
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indicatorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 52
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 568
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->indicatorHeight:I

    .line 569
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->invalidate()V

    .line 570
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 237
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 238
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 658
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->scrollOffset:I

    .line 659
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->invalidate()V

    .line 660
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 667
    iput-boolean p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->shouldExpand:Z

    .line 668
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->requestLayout()V

    .line 669
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 711
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 712
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 719
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabPadding:I

    .line 720
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->updateTabStyles()V

    .line 721
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 693
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabTextColor:I

    .line 694
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->updateTabStyles()V

    .line 695
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 698
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabTextColor:I

    .line 699
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->updateTabStyles()V

    .line 700
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 684
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->tabTextSize:I

    .line 685
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->updateTabStyles()V

    .line 686
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 707
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->updateTabStyles()V

    .line 708
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 586
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineColor:I

    .line 587
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->invalidate()V

    .line 588
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 595
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineColor:I

    .line 596
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->invalidate()V

    .line 597
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 637
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->underlineHeight:I

    .line 638
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->invalidate()V

    .line 639
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "position"    # I

    .prologue
    .line 219
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    .line 221
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip;->pageListener:Lae/gov/mol/helper/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 227
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 228
    invoke-virtual {p0, p2}, Lae/gov/mol/helper/PagerSlidingTabStrip;->SetTextViewChange(I)V

    .line 229
    invoke-virtual {p0, p2}, Lae/gov/mol/helper/PagerSlidingTabStrip;->SetImageViewChange(I)V

    .line 230
    return-void
.end method
