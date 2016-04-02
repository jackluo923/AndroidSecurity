.class public Lcom/alipay/mobile/quinox/splash/NumberView;
.super Landroid/widget/TextView;
.source "NumberView.java"


# instance fields
.field n:Ljava/lang/String;

.field paint:Landroid/graphics/Paint;

.field speed:F

.field str:Ljava/lang/String;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    const-string/jumbo v0, "0123456789"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->str:Ljava/lang/String;

    .line 14
    iput v1, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->x:F

    .line 15
    iput v1, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->y:F

    .line 16
    iput v1, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->speed:F

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->n:Ljava/lang/String;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p1, v1}, Lcom/alipay/mobile/quinox/splash/NumberView;->sp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/splash/NumberView;->setWidth(I)V

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/splash/NumberView;->measureTextHeight(Landroid/graphics/Paint;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/splash/NumberView;->setHeight(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/splash/NumberView;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->str:Ljava/lang/String;

    .line 52
    iput p3, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->speed:F

    .line 53
    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 41
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private measureTextHeight(Landroid/graphics/Paint;)D
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 57
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 46
    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 36
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v7, 0x40800000    # 4.0f

    const/4 v6, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->n:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/splash/NumberView;->measureTextHeight(Landroid/graphics/Paint;)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 76
    iget v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->speed:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->y:F

    iget v1, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->speed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->y:F

    .line 78
    iget v0, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->y:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v4}, Lcom/alipay/mobile/quinox/splash/NumberView;->measureTextHeight(Landroid/graphics/Paint;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    iput v6, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->y:F

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/splash/NumberView;->invalidate()V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->str:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    int-to-double v2, v2

    iget-object v4, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v4}, Lcom/alipay/mobile/quinox/splash/NumberView;->measureTextHeight(Landroid/graphics/Paint;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/NumberView;->n:Ljava/lang/String;

    .line 63
    return-void
.end method
