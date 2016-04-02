.class public Lae/gov/mol/helper/PagerSlidingTabStripContect;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStripContect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTabProvider;,
        Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTextTabProvider;,
        Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;,
        Lae/gov/mol/helper/PagerSlidingTabStripContect$SavedState;
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

.field private final pageListener:Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;

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
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->ATTRS:[I

    .line 65
    return-void

    .line 62
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
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
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

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v2, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripContect;Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;)V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->pageListener:Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;

    .line 78
    iput v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->currentPosition:I

    .line 83
    iput-boolean v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->checkedTabWidths:Z

    .line 85
    const v2, -0x99999a

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorColor:I

    .line 87
    const/high16 v2, 0x1a000000

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineColor:I

    .line 88
    const/high16 v2, 0x1a000000

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerColor:I

    .line 90
    iput-boolean v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->shouldExpand:Z

    .line 91
    iput-boolean v4, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->textAllCaps:Z

    .line 93
    const/16 v2, 0x34

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollOffset:I

    .line 94
    iput v6, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorHeight:I

    .line 95
    iput v8, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineHeight:I

    .line 96
    iput v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerPadding:I

    .line 97
    const/16 v2, 0x18

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabPadding:I

    .line 98
    iput v8, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerWidth:I

    .line 100
    const/16 v2, 0xc

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabTextSize:I

    .line 101
    const v2, -0x99999a

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabTextColor:I

    .line 102
    iput v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->lastScrollX:I

    .line 104
    const v2, 0x7f02005a

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabBackgroundResId:I

    .line 108
    iput v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->BLACK:I

    .line 109
    iput v5, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->WHITE:I

    .line 127
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->BLACK:I

    .line 128
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->WHITE:I

    .line 129
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 131
    invoke-virtual {p0, v4}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->setFillViewport(Z)V

    .line 132
    invoke-virtual {p0, v5}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->setWillNotDraw(Z)V

    .line 134
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    .line 135
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 140
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 144
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabTextSize:I

    .line 145
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollOffset:I

    .line 146
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorHeight:I

    .line 147
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineHeight:I

    .line 148
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerPadding:I

    .line 149
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabPadding:I

    .line 150
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerWidth:I

    .line 153
    sget-object v2, Lae/gov/mol/helper/PagerSlidingTabStripContect;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabTextColor:I

    .line 156
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    sget-object v2, Lae/gov/mol/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorColor:I

    .line 162
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineColor:I

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineColor:I

    .line 164
    const/4 v2, 0x3

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerColor:I

    .line 165
    const/4 v2, 0x4

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorHeight:I

    .line 166
    const/4 v2, 0x5

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineHeight:I

    .line 167
    const/16 v2, 0xb

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerPadding:I

    .line 168
    const/4 v2, 0x6

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabPadding:I

    .line 169
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabBackgroundResId:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabBackgroundResId:I

    .line 170
    const/16 v2, 0x9

    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->shouldExpand:Z

    .line 171
    const/4 v2, 0x7

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollOffset:I

    .line 172
    const/16 v2, 0xa

    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->textAllCaps:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->textAllCaps:Z

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->rectPaint:Landroid/graphics/Paint;

    .line 177
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerPaint:Landroid/graphics/Paint;

    .line 181
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->locale:Ljava/util/Locale;

    .line 191
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/helper/PagerSlidingTabStripContect;I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->currentPosition:I

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/helper/PagerSlidingTabStripContect;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/helper/PagerSlidingTabStripContect;II)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/helper/PagerSlidingTabStripContect;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/helper/PagerSlidingTabStripContect;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->currentPosition:I

    return v0
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 295
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, "tab":Landroid/widget/ImageButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 297
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 299
    new-instance v1, Lae/gov/mol/helper/PagerSlidingTabStripContect$3;

    invoke-direct {v1, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripContect$3;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripContect;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
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

    .line 319
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 320
    .local v2, "mLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 321
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 324
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 325
    .local v0, "mImageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 326
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    new-instance v4, Lae/gov/mol/helper/PagerSlidingTabStripContect$4;

    invoke-direct {v4, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripContect$4;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripContect;I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 335
    .local v3, "mTextView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setId(I)V

    .line 336
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 338
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getTextSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 339
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 340
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 342
    new-instance v4, Lae/gov/mol/helper/PagerSlidingTabStripContect$5;

    invoke-direct {v4, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripContect$5;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripContect;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    .local v1, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x3e4ccccd    # 0.2f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 351
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 355
    .restart local v1    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v4, 0x3f4ccccd    # 0.8f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 356
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    invoke-virtual {v2, v8, v7, v8, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 359
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 361
    iget-object v4, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    return-void
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 262
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 263
    .local v1, "tab":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setId(I)V

    .line 264
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 266
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 268
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 269
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    if-nez p1, :cond_0

    .line 271
    const v2, 0x7f020159

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 275
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 276
    .local v0, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v2, Lae/gov/mol/helper/PagerSlidingTabStripContect$2;

    invoke-direct {v2, p0, p1}, Lae/gov/mol/helper/PagerSlidingTabStripContect$2;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripContect;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    return-void

    .line 273
    .end local v0    # "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const v2, 0x7f02015b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 403
    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabCount:I

    if-nez v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 409
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 410
    :cond_2
    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 413
    :cond_3
    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 414
    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->lastScrollX:I

    .line 415
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollTo(II)V

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
    .line 368
    return-void
.end method


# virtual methods
.method public SetTextViewChange(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 471
    if-nez p1, :cond_2

    .line 472
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 476
    :goto_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->BLACK:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    .line 480
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    .line 482
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 484
    if-nez p1, :cond_3

    .line 485
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    const v1, 0x7f020158

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 490
    :goto_1
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->WHITE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    :cond_1
    return-void

    .line 474
    :cond_2
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 488
    :cond_3
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->mTextViewTab:Landroid/widget/TextView;

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorColor:I

    return v0
.end method

.method public getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 215
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 217
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabCount:I

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabCount:I

    if-lt v0, v2, :cond_0

    .line 232
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->updateTabStyles()V

    .line 234
    const/4 v2, 0x0

    iput-boolean v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->checkedTabWidths:Z

    .line 236
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lae/gov/mol/helper/PagerSlidingTabStripContect$1;

    invoke-direct {v3, p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect$1;-><init>(Lae/gov/mol/helper/PagerSlidingTabStripContect;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 253
    return-void

    .line 221
    :cond_0
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    instance-of v2, v2, Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTabProvider;

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTabProvider;

    invoke-interface {v2, v0}, Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTabProvider;->getPageIconResId(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->addIconTab(II)V

    .line 219
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    instance-of v2, v2, Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTextTabProvider;

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTextTabProvider;

    .line 225
    .local v1, "mIconTabProvider":Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTextTabProvider;
    invoke-interface {v1, v0}, Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTextTabProvider;->getPageIconResId(I)I

    move-result v2

    invoke-interface {v1, v0}, Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTextTabProvider;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->addImageIconTab(IILjava/lang/String;)V

    goto :goto_1

    .line 227
    .end local v1    # "mIconTabProvider":Lae/gov/mol/helper/PagerSlidingTabStripContect$IconTextTabProvider;
    :cond_2
    iget-object v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->addTextTab(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 423
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 372
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 374
    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->shouldExpand:Z

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getMeasuredWidth()I

    move-result v2

    .line 379
    .local v2, "myWidth":I
    const/4 v0, 0x0

    .line 380
    .local v0, "childWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabCount:I

    if-lt v1, v3, :cond_3

    .line 384
    iget-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->checkedTabWidths:Z

    if-nez v3, :cond_0

    if-lez v0, :cond_0

    if-lez v2, :cond_0

    .line 386
    if-gt v0, v2, :cond_2

    .line 387
    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabCount:I

    if-lt v1, v3, :cond_4

    .line 392
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->checkedTabWidths:Z

    goto :goto_0

    .line 381
    :cond_3
    iget-object v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    :cond_4
    iget-object v3, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 632
    move-object v0, p1

    check-cast v0, Lae/gov/mol/helper/PagerSlidingTabStripContect$SavedState;

    .line 633
    .local v0, "savedState":Lae/gov/mol/helper/PagerSlidingTabStripContect$SavedState;
    invoke-virtual {v0}, Lae/gov/mol/helper/PagerSlidingTabStripContect$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 634
    iget v1, v0, Lae/gov/mol/helper/PagerSlidingTabStripContect$SavedState;->currentPosition:I

    iput v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->currentPosition:I

    .line 635
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->requestLayout()V

    .line 636
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 640
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 641
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lae/gov/mol/helper/PagerSlidingTabStripContect$SavedState;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 642
    .local v0, "savedState":Lae/gov/mol/helper/PagerSlidingTabStripContect$SavedState;
    iget v2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->currentPosition:I

    iput v2, v0, Lae/gov/mol/helper/PagerSlidingTabStripContect$SavedState;->currentPosition:I

    .line 643
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->textAllCaps:Z

    .line 584
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 529
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerColor:I

    .line 530
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 531
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 534
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerColor:I

    .line 535
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 536
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 552
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->dividerPadding:I

    .line 553
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 554
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 464
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorColor:I

    .line 465
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 466
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 497
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorColor:I

    .line 498
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 499
    return-void
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indicatorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 47
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 506
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->indicatorHeight:I

    .line 507
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 508
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 207
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 208
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 561
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->scrollOffset:I

    .line 562
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 563
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 570
    iput-boolean p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->shouldExpand:Z

    .line 571
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->requestLayout()V

    .line 572
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 614
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabBackgroundResId:I

    .line 615
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 622
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabPadding:I

    .line 623
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->updateTabStyles()V

    .line 624
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 596
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabTextColor:I

    .line 597
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->updateTabStyles()V

    .line 598
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 601
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabTextColor:I

    .line 602
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->updateTabStyles()V

    .line 603
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 587
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->tabTextSize:I

    .line 588
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->updateTabStyles()V

    .line 589
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 610
    invoke-direct {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->updateTabStyles()V

    .line 611
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 515
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineColor:I

    .line 516
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 517
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 520
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineColor:I

    .line 521
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 522
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 543
    iput p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->underlineHeight:I

    .line 544
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->invalidate()V

    .line 545
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 194
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->pager:Landroid/support/v4/view/ViewPager;

    .line 196
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect;->pageListener:Lae/gov/mol/helper/PagerSlidingTabStripContect$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 202
    invoke-virtual {p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->notifyDataSetChanged()V

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->SetTextViewChange(I)V

    .line 204
    return-void
.end method
