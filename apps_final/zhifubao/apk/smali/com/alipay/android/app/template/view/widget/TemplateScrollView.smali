.class public Lcom/alipay/android/app/template/view/widget/TemplateScrollView;
.super Landroid/widget/ScrollView;
.source "TemplateScrollView.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->a:Z

    .line 15
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->b:I

    .line 18
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->c:I

    .line 20
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->d:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->a:Z

    .line 15
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->b:I

    .line 18
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->c:I

    .line 20
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->d:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->a:Z

    .line 15
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->b:I

    .line 18
    iput v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->c:I

    .line 20
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->d:Z

    .line 24
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->d:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setMeasuredDimension(II)V

    .line 96
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 65
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 67
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->getChildCount()I

    move-result v10

    .line 68
    const/4 v2, 0x0

    move v9, v2

    :goto_1
    if-lt v9, v10, :cond_2

    .line 89
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 90
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->getMeasuredHeight()I

    move-result v0

    .line 91
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->getMeasuredWidth()I

    move-result v1

    .line 92
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->b:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->b:I

    if-le v0, v2, :cond_1

    .line 93
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->b:I

    .line 95
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, v9}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 70
    check-cast v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 73
    iget-object v4, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    iget-object v5, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    iget-object v6, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    .line 74
    iget-object v7, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    .line 72
    invoke-static/range {v0 .. v7}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMarginAndPadding(IILandroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;[I[I[I[I)V

    .line 75
    invoke-virtual {v3}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->getTemplateElement()Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/template/view/widget/TElement;->getParentElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v4

    .line 76
    sget v7, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    .line 77
    sget v8, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    .line 78
    if-eqz v4, :cond_3

    .line 79
    invoke-virtual {v4}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v4

    .line 80
    instance-of v5, v4, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;

    if-eqz v5, :cond_3

    .line 81
    check-cast v4, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;

    .line 82
    invoke-virtual {v4}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getMaxWidth()I

    move-result v7

    .line 83
    invoke-virtual {v4}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->getMaxHeight()I

    move-result v8

    :cond_3
    move v4, v0

    move v5, v1

    move-object v6, v2

    .line 86
    invoke-static/range {v3 .. v8}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->initMaxWidthHeight(Lcom/alipay/android/app/template/util/TemplateLayoutParams;IILandroid/view/View;II)V

    .line 68
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1
.end method

.method public setIsDestory(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->d:Z

    .line 54
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->b:I

    .line 46
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->c:I

    .line 50
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->a:Z

    .line 42
    return-void
.end method
