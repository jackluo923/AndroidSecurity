.class public Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;


# instance fields
.field private quality:I

.field private roundHeight:I

.field private roundWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->roundWidth:I

    iput v0, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->roundHeight:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->quality:I

    return-void
.end method


# virtual methods
.method public getQuality()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->quality:I

    return v0
.end method

.method public getRoundHeight()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->roundHeight:I

    return v0
.end method

.method public getRoundWidth()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->roundWidth:I

    return v0
.end method

.method public getSavePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".round"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->roundWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->roundHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/String;IILcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lcom/alipay/mobile/common/imageworker/ImageWorker;Lcom/alipay/mobile/common/cache/disk/DiskCache;)Landroid/graphics/Bitmap;
    .locals 12

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getResData()[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->getInPreferredConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v0, p2, p3, v1}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->createBitmap(Ljava/lang/Object;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-nez v11, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->getInPreferredConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v11, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-direct {v1, v3, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget v1, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->roundWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->roundHeight:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-nez v10, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->getCachePeriod()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->getCachePeriod()I

    move-result v0

    int-to-long v7, v0

    :goto_1
    if-eqz p6, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->quality:I

    invoke-virtual {v10, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->getSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getCreateTime()J

    move-result-wide v5

    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getContentType()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    :cond_4
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object v0, v10

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getPeriod()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v7, v0, v2

    goto :goto_1
.end method

.method public setQuality(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->quality:I

    return-void
.end method

.method public setRoundHeight(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->roundHeight:I

    return-void
.end method

.method public setRoundWidth(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/imageworker/plugin/RoundImagePlugin;->roundWidth:I

    return-void
.end method
