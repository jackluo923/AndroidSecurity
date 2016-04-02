.class public Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;
.super Ljava/lang/Object;
.source "RoundImagePlugin.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->a:I

    .line 19
    iput v0, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->b:I

    .line 20
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->c:I

    .line 16
    return-void
.end method


# virtual methods
.method public getPluginKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RoundImagePlugin.round"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->c:I

    return v0
.end method

.method public getRoundHeight()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->b:I

    return v0
.end method

.method public getRoundWidth()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->a:I

    return v0
.end method

.method public process(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 54
    if-nez p2, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 62
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    new-instance v4, Landroid/graphics/BitmapShader;

    .line 65
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 64
    invoke-direct {v4, p2, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 66
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v5, v7, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 68
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 70
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    .line 71
    const/4 v6, 0x3

    invoke-direct {v2, v4, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 70
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 72
    iget v2, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->a:I

    int-to-float v2, v2

    iget v4, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->b:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setQuality(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->c:I

    .line 44
    return-void
.end method

.method public setRoundHeight(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->b:I

    .line 36
    return-void
.end method

.method public setRoundWidth(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->a:I

    .line 28
    return-void
.end method
