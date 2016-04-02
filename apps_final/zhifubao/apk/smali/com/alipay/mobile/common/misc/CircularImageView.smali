.class public Lcom/alipay/mobile/common/misc/CircularImageView;
.super Lcom/alipay/mobile/commonui/widget/APImageView;
.source "CircularImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/BitmapShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    .line 22
    iput v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->b:I

    .line 24
    iput v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->c:I

    .line 26
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->d:Landroid/graphics/Bitmap;

    .line 28
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->e:Landroid/graphics/Paint;

    .line 30
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->f:Landroid/graphics/Paint;

    .line 31
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->g:Landroid/graphics/BitmapShader;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/CircularImageView;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    .line 22
    iput v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->b:I

    .line 24
    iput v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->c:I

    .line 26
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->d:Landroid/graphics/Bitmap;

    .line 28
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->e:Landroid/graphics/Paint;

    .line 30
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->f:Landroid/graphics/Paint;

    .line 31
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->g:Landroid/graphics/BitmapShader;

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/CircularImageView;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    .line 22
    iput v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->b:I

    .line 24
    iput v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->c:I

    .line 26
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->d:Landroid/graphics/Bitmap;

    .line 28
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->e:Landroid/graphics/Paint;

    .line 30
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->f:Landroid/graphics/Paint;

    .line 31
    iput-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->g:Landroid/graphics/BitmapShader;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/common/misc/CircularImageView;->a()V

    .line 46
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->e:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->f:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/CircularImageView;->setBorderColor(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->d:Landroid/graphics/Bitmap;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->d:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->b:I

    iget v3, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->c:I

    .line 92
    iget v4, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x0

    .line 91
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 94
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 91
    iput-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->g:Landroid/graphics/BitmapShader;

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->g:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    iget v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->b:I

    div-int/lit8 v0, v0, 0x2

    .line 99
    iget v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 100
    iget v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->f:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 105
    iget v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 106
    iget v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->e:Landroid/graphics/Paint;

    .line 105
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 112
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v1, v3, :cond_0

    .line 113
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v2, v3, :cond_1

    .line 115
    :goto_1
    iget v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iput v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->b:I

    .line 116
    iget v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->c:I

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/misc/CircularImageView;->setMeasuredDimension(II)V

    .line 119
    return-void

    .line 112
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->b:I

    goto :goto_0

    .line 113
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->c:I

    goto :goto_1
.end method

.method public setBorderColor(I)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->f:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->f:Landroid/graphics/Paint;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/CircularImageView;->invalidate()V

    .line 72
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/alipay/mobile/common/misc/CircularImageView;->a:I

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/CircularImageView;->invalidate()V

    .line 63
    return-void
.end method
