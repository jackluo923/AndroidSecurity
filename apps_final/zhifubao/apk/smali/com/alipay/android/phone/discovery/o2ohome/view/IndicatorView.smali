.class Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;
.super Landroid/widget/LinearLayout;
.source "IndicatorView.java"


# instance fields
.field private indicatorHeight:F

.field private indicatorMargin:F

.field private indicatorNormal:Landroid/graphics/drawable/Drawable;

.field private indicatorPadding:F

.field private indicatorSelected:Landroid/graphics/drawable/Drawable;

.field private indicatorWidth:F

.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->banner_indicator_normal:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorNormal:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->banner_indicator_selected:I

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorSelected:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const v2, 0x40d570a4    # 6.67f

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->selected:I

    .line 19
    iput v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorHeight:F

    .line 21
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorMargin:F

    .line 23
    iput v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorWidth:F

    .line 25
    const v0, 0x410547ae    # 8.33f

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorPadding:F

    .line 43
    iput v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->selected:I

    .line 44
    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->setOrientation(I)V

    .line 46
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->banner_indicator_normal:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorNormal:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->banner_indicator_selected:I

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorSelected:Landroid/graphics/drawable/Drawable;

    .line 50
    return-void
.end method

.method private dp2px(F)I
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 91
    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorHeight:F

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->dp2px(F)I

    move-result v0

    return v0
.end method

.method public getIndicatorMargin()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorMargin:F

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->dp2px(F)I

    move-result v0

    return v0
.end method

.method public setCount(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->removeAllViews()V

    move v0, v1

    .line 54
    :goto_0
    if-lt v0, p1, :cond_0

    .line 63
    return-void

    .line 55
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorWidth:F

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->dp2px(F)I

    move-result v3

    iget v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorWidth:F

    invoke-direct {p0, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->dp2px(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    if-lez v0, :cond_1

    .line 57
    iget v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorPadding:F

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    :cond_1
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p0, v3, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 2

    .prologue
    .line 66
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->selected:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    if-eqz v0, :cond_2

    .line 71
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->indicatorSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iput p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/IndicatorView;->selected:I

    goto :goto_0
.end method
