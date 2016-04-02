.class public Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;
.super Landroid/view/ViewGroup;
.source "TemplateSimplePassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:[Landroid/widget/ImageView;

.field private c:[Landroid/view/View;

.field private d:Landroid/graphics/Path;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->b:[Landroid/widget/ImageView;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->c:[Landroid/view/View;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->d:Landroid/graphics/Path;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->e:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->f:Landroid/graphics/RectF;

    .line 51
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->b:[Landroid/widget/ImageView;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->c:[Landroid/view/View;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->d:Landroid/graphics/Path;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->e:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->f:Landroid/graphics/RectF;

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->b:[Landroid/widget/ImageView;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->c:[Landroid/view/View;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->d:Landroid/graphics/Path;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->e:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->f:Landroid/graphics/RectF;

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 55
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    .line 56
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 57
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 58
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 59
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 60
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 61
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->addView(Landroid/view/View;)V

    .line 64
    :goto_0
    if-lt v0, v5, :cond_0

    .line 77
    return-void

    .line 65
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 67
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->addView(Landroid/view/View;)V

    .line 69
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->b:[Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 70
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 71
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->addView(Landroid/view/View;)V

    .line 73
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->c:[Landroid/view/View;

    aput-object v1, v2, v0

    .line 74
    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 144
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "black_point"

    const-string/jumbo v3, "drawable"

    const-string/jumbo v4, "com.alipay.android.app.template"

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 146
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x6

    if-lt v0, v3, :cond_0

    .line 153
    return-void

    .line 147
    :cond_0
    if-ge v0, v1, :cond_1

    .line 148
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->b:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->b:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->d:Landroid/graphics/Path;

    .line 175
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->e:Landroid/graphics/Rect;

    .line 176
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->f:Landroid/graphics/RectF;

    .line 177
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 183
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->c:[Landroid/view/View;

    .line 184
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->b:[Landroid/widget/ImageView;

    .line 185
    iput-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    .line 186
    return-void

    .line 178
    :cond_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->c:[Landroid/view/View;

    aput-object v2, v1, v0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->b:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 162
    iget v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v1, v2, :cond_0

    .line 163
    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 165
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 166
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->d:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->f:Landroid/graphics/RectF;

    add-int/lit8 v3, v0, 0x4

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    .line 167
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 166
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->d:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 170
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 171
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->getPaddingLeft()I

    move-result v1

    .line 115
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->getPaddingTop()I

    move-result v2

    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->layout(IIII)V

    .line 117
    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    const/4 v3, 0x6

    if-lt v1, v3, :cond_0

    .line 127
    return-void

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->b:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    .line 119
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 120
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    .line 121
    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->c:[Landroid/view/View;

    aget-object v3, v3, v1

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 124
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    .line 117
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    .line 82
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 87
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->getPaddingLeft()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    .line 89
    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 91
    if-le v1, v0, :cond_2

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 95
    add-int/lit8 v4, v0, -0x1

    .line 96
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 98
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 100
    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->b:[Landroid/widget/ImageView;

    array-length v7, v6

    move v0, v2

    :goto_1
    if-lt v0, v7, :cond_0

    .line 103
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->c:[Landroid/view/View;

    array-length v6, v1

    move v0, v2

    :goto_2
    if-lt v0, v6, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->a:Landroid/widget/EditText;

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->measure(II)V

    .line 109
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-virtual {p0, v3, v0}, Lcom/alipay/android/app/template/view/widget/TemplateSimplePassword;->setMeasuredDimension(II)V

    .line 110
    return-void

    .line 100
    :cond_0
    aget-object v8, v6, v0

    .line 101
    invoke-virtual {v8, v1, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_1
    aget-object v2, v1, v0

    .line 105
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v7, v5}, Landroid/view/View;->measure(II)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
