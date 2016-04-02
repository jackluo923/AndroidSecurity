.class public Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;
.super Lcom/alipay/mobile/commonui/widget/APImageView;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "RoundAngleImageView"

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->a:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->b:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->c:I

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->d:Z

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->e:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->f:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "RoundAngleImageView"

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->a:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->b:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->c:I

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->d:Z

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->e:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->f:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "RoundAngleImageView"

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->a:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->b:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->c:I

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->d:Z

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->e:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->f:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->RoundAngleImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->b:I

    const/4 v1, 0x2

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->c:I

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->d:Z

    const/4 v1, 0x1

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->e:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->f:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->b:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->c:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-direct {v4, v5, v5, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->f:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->e:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->b:I

    int-to-float v1, v1

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->c:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
