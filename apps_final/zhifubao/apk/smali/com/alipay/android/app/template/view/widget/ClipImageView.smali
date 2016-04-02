.class public Lcom/alipay/android/app/template/view/widget/ClipImageView;
.super Landroid/widget/ImageView;
.source "ClipImageView.java"


# instance fields
.field protected a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/ClipImageView;->a:F

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/ClipImageView;->a:F

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/ClipImageView;->a:F

    .line 23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 37
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/ClipImageView;->a:F

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    if-eqz v0, :cond_1

    .line 41
    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 42
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 41
    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 44
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 45
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 47
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-direct {v4, v5, v5, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 49
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 50
    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 52
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 54
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 54
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 56
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/ClipImageView;->a:F

    iget v3, p0, Lcom/alipay/android/app/template/view/widget/ClipImageView;->a:F

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 62
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 64
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBorderRadius(F)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/ClipImageView;->a:F

    .line 79
    return-void
.end method
