.class public Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ClipLinearLayout.java"


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->a:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->b:Landroid/graphics/Rect;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->c:Landroid/graphics/RectF;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->a:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->b:Landroid/graphics/Rect;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->c:Landroid/graphics/RectF;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->a:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->b:Landroid/graphics/Rect;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->c:Landroid/graphics/RectF;

    .line 24
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 38
    iget v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v1, v2, :cond_0

    .line 39
    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 41
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 42
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->c:Landroid/graphics/RectF;

    add-int/lit8 v3, v0, 0x4

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 43
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
