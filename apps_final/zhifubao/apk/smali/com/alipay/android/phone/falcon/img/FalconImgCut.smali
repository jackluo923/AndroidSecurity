.class public Lcom/alipay/android/phone/falcon/img/FalconImgCut;
.super Ljava/lang/Object;


# instance fields
.field private bDebug:Z

.field private callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

.field private maxHeight:I

.field private maxLen:I

.field private minLen:I

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxLen:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->minLen:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->scale:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->bDebug:Z

    const/16 v0, 0x1388

    iput v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxHeight:I

    return-void
.end method

.method private CalcInSampleSize([I[I[II)I
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget v1, p1, v4

    aget v0, p1, v3

    aget v2, p2, v4

    int-to-float v2, v2

    aget v5, p3, v4

    int-to-float v5, v5

    div-float v5, v2, v5

    int-to-float v2, v1

    int-to-float v6, v0

    div-float v6, v2, v6

    if-eqz p4, :cond_0

    const/16 v2, 0xb4

    if-ne p4, v2, :cond_11

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v6, v2

    if-gez v2, :cond_11

    move v2, v3

    :goto_0
    const/16 v7, 0x5a

    if-eq p4, v7, :cond_1

    const/16 v7, 0x10e

    if-ne p4, v7, :cond_2

    :cond_1
    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    const/4 v2, 0x2

    :cond_2
    if-lez v2, :cond_9

    if-ne v2, v3, :cond_10

    move v2, v3

    :goto_1
    div-int/lit8 v5, v1, 0x2

    aget v6, p2, v4

    if-ge v5, v6, :cond_3

    iget v5, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxHeight:I

    if-lt v0, v5, :cond_4

    :cond_3
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    if-eq v2, v3, :cond_5

    aget v3, p2, v4

    if-ge v1, v3, :cond_5

    div-int/lit8 v2, v2, 0x2

    :cond_5
    aget v3, p2, v4

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p3, v4

    :goto_2
    return v2

    :goto_3
    div-int/lit8 v5, v0, 0x2

    aget v6, p3, v4

    if-ge v5, v6, :cond_6

    iget v5, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxHeight:I

    if-lt v1, v5, :cond_7

    :cond_6
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_7
    if-eq v2, v3, :cond_8

    aget v3, p3, v4

    if-ge v0, v3, :cond_8

    div-int/lit8 v2, v2, 0x2

    :cond_8
    aget v3, p3, v4

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p2, v4

    goto :goto_2

    :cond_9
    aget v2, p1, v4

    aget v7, p2, v4

    if-gt v2, v7, :cond_a

    aget v2, p1, v3

    aget v7, p3, v4

    if-le v2, v7, :cond_f

    :cond_a
    cmpl-float v2, v6, v5

    if-lez v2, :cond_b

    aget v2, p2, v4

    int-to-float v2, v2

    int-to-float v5, v1

    div-float/2addr v2, v5

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, p3, v4

    move v0, v3

    :goto_4
    div-int/lit8 v2, v1, 0x2

    aget v5, p2, v4

    if-lt v2, v5, :cond_d

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_b
    cmpg-float v2, v6, v5

    if-gez v2, :cond_c

    aget v2, p3, v4

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, p2, v4

    :cond_c
    move v0, v3

    goto :goto_4

    :cond_d
    if-eq v0, v3, :cond_e

    aget v2, p2, v4

    if-ge v1, v2, :cond_e

    div-int/lit8 v2, v0, 0x2

    goto :goto_2

    :cond_e
    move v2, v0

    goto :goto_2

    :cond_f
    move v2, v3

    goto :goto_2

    :cond_10
    move v2, v3

    goto :goto_3

    :cond_11
    move v2, v4

    goto/16 :goto_0
.end method

.method private CalcScale(IIII)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-le p1, p3, :cond_0

    if-le p2, p4, :cond_0

    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method private GetFactoryOption(Ljava/io/File;[I[II)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1, p1, v0}, Lcom/alipay/android/phone/falcon/img/dataFormat;->DecodeWidthHeight(Landroid/graphics/BitmapFactory$Options;Ljava/io/File;[I)V

    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/phone/falcon/img/dataFormat;->DataFormattoType(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->CalcInSampleSize([I[I[II)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object v1
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private judgeBeyondRatio(IIF)I
    .locals 2

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    cmpg-float v1, v0, p3

    if-gez v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    return-void
.end method


# virtual methods
.method public calcultDesWidthHeight(III[I)V
    .locals 6

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    div-int/lit8 v3, p3, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->calcultDesWidthHeight(IIIIF[I)V

    :cond_0
    return-void
.end method

.method public calcultDesWidthHeight_new(Ljava/io/File;III[I)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez p2, :cond_5

    if-lez p3, :cond_5

    if-lez p4, :cond_5

    :try_start_0
    div-int/lit8 v3, p4, 0x2

    if-nez p1, :cond_0

    const/high16 v4, 0x3f000000    # 0.5f

    move v0, p2

    move v1, p3

    move v2, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->calcultDesWidthHeight(IIIIF[I)V

    :goto_0
    move v0, v6

    :goto_1
    move v7, v0

    :goto_2
    return v7

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v0, :cond_1

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "falcon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Decode Fail ,AbsolutePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_1

    :cond_2
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v2

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_4

    :cond_3
    move v8, v0

    move v0, v1

    move v1, v8

    :cond_4
    const/high16 v4, 0x3f000000    # 0.5f

    move v2, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->calcultDesWidthHeight(IIIIF[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_1
.end method

.method public calcultDesWidthHeight_new(Ljava/io/File;[I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v3, :cond_2

    :cond_1
    const-string/jumbo v1, "falcon"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Decode Fail ,AbsolutePath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, p2, v3

    const/4 v3, 0x1

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v2, p2, v3

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget v4, p2, v4

    aput v4, p2, v3

    const/4 v3, 0x1

    aput v2, p2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public cutImage_backgroud(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 12

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v7, 0x0

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v8

    const/16 v0, 0x5a

    if-eq v8, v0, :cond_3

    const/16 v0, 0x10e

    if-ne v8, v0, :cond_7

    :cond_3
    int-to-float v0, p3

    int-to-float v1, p2

    div-float/2addr v0, v1

    move v3, v0

    move v4, p2

    move v6, p3

    :goto_1
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, 0x2

    invoke-direct {p0, v9, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V

    int-to-float v2, v1

    int-to-float v5, v0

    div-float v5, v2, v5

    const/4 v2, 0x0

    cmpl-float v10, v5, v3

    if-lez v10, :cond_8

    const/4 v2, 0x1

    :cond_4
    :goto_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    :goto_3
    move-object v0, v7

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p3, :cond_1

    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    move-object v0, v1

    goto :goto_0

    :cond_7
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    move v3, v0

    move v4, p3

    move v6, p2

    goto :goto_1

    :cond_8
    cmpg-float v3, v5, v3

    if-gez v3, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    :pswitch_0
    const/4 v2, 0x1

    move v11, v0

    move v0, v2

    move v2, v1

    move v1, v11

    :goto_5
    :try_start_1
    div-int/lit8 v3, v2, 0x2

    if-lt v3, v6, :cond_9

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_9
    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    if-ge v2, v6, :cond_a

    div-int/lit8 v0, v0, 0x2

    :cond_a
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    :pswitch_1
    const/4 v2, 0x1

    move v11, v0

    move v0, v2

    move v2, v1

    move v1, v11

    :goto_6
    div-int/lit8 v3, v1, 0x2

    if-lt v3, v4, :cond_b

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    if-ge v1, v4, :cond_c

    div-int/lit8 v0, v0, 0x2

    :cond_c
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v6

    div-float/2addr v2, v1

    float-to-int v3, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_2
    const/4 v2, 0x1

    move v11, v0

    move v0, v2

    move v2, v1

    move v1, v11

    :goto_7
    div-int/lit8 v3, v2, 0x2

    if-lt v3, v6, :cond_d

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_7

    :cond_d
    const/4 v3, 0x1

    if-eq v0, v3, :cond_e

    if-ge v2, v6, :cond_e

    div-int/lit8 v0, v0, 0x2

    :cond_e
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v4

    div-float/2addr v2, v1

    float-to-int v4, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cutImage_backgroud(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_backgroud_common(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public cutImage_backgroud_common(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;
    .locals 15

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    const/4 v9, 0x0

    :cond_1
    :goto_0
    return-object v9

    :cond_2
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x5a

    move/from16 v0, p4

    if-eq v0, v4, :cond_3

    const/16 v4, 0x10e

    move/from16 v0, p4

    if-ne v0, v4, :cond_8

    :cond_3
    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    move v5, v4

    move/from16 v6, p2

    move/from16 v8, p3

    :goto_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->InputStreamToByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :try_start_1
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v10, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v10, v3}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v10, v2, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v3

    int-to-float v7, v2

    div-float v7, v4, v7

    const/4 v4, 0x0

    cmpl-float v13, v7, v5

    if-lez v13, :cond_9

    const/4 v4, 0x1

    :cond_4
    :goto_2
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x2

    invoke-direct {p0, v12, v5}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    packed-switch v4, :pswitch_data_0

    move-object v2, v9

    :goto_3
    move-object v9, v2

    :goto_4
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v11}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    invoke-direct {p0, v10}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :goto_5
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p3

    if-eq v2, v0, :cond_1

    :cond_6
    const/4 v2, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, v9, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    move-object v9, v2

    goto :goto_0

    :cond_8
    move/from16 v0, p2

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    div-float/2addr v4, v5

    move v5, v4

    move/from16 v6, p3

    move/from16 v8, p2

    goto :goto_1

    :cond_9
    cmpg-float v5, v7, v5

    if-gez v5, :cond_4

    const/4 v4, 0x2

    goto :goto_2

    :pswitch_0
    const/4 v4, 0x1

    move v14, v2

    move v2, v4

    move v4, v3

    move v3, v14

    :goto_6
    :try_start_3
    div-int/lit8 v5, v4, 0x2

    if-lt v5, v8, :cond_a

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_6

    :cond_a
    const/4 v5, 0x1

    if-eq v2, v5, :cond_b

    if-ge v4, v8, :cond_b

    div-int/lit8 v2, v2, 0x2

    :cond_b
    iput v2, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v2, 0x1

    invoke-virtual {p0, v4, v3, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v2, 0x0

    invoke-static {v10, v2, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v3, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_1
    const/4 v4, 0x1

    move v14, v2

    move v2, v4

    move v4, v3

    move v3, v14

    :goto_7
    div-int/lit8 v5, v3, 0x2

    if-lt v5, v6, :cond_c

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_7

    :cond_c
    const/4 v5, 0x1

    if-eq v2, v5, :cond_d

    if-ge v3, v6, :cond_d

    div-int/lit8 v2, v2, 0x2

    :cond_d
    iput v2, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v2, 0x1

    invoke-virtual {p0, v4, v3, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v2, 0x0

    invoke-static {v10, v2, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v3, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v8

    div-float/2addr v4, v3

    float-to-int v5, v4

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_4

    :pswitch_2
    const/4 v4, 0x1

    move v14, v2

    move v2, v4

    move v4, v3

    move v3, v14

    :goto_8
    div-int/lit8 v5, v4, 0x2

    if-lt v5, v8, :cond_e

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_8

    :cond_e
    const/4 v5, 0x1

    if-eq v2, v5, :cond_f

    if-ge v4, v8, :cond_f

    div-int/lit8 v2, v2, 0x2

    :cond_f
    iput v2, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v2, 0x1

    invoke-virtual {p0, v4, v3, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v2, 0x0

    invoke-static {v10, v2, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v3, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v6

    div-float/2addr v4, v3

    float-to-int v6, v4

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    goto/16 :goto_3

    :catch_0
    move-exception v4

    :goto_9
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_10
    invoke-direct {p0, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v4

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    :goto_a
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v11}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_11
    invoke-direct {p0, v10}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v3

    move-object v10, v2

    move-object v2, v3

    goto :goto_a

    :catchall_2
    move-exception v2

    goto :goto_a

    :catch_1
    move-exception v3

    move-object v3, v11

    goto :goto_9

    :catch_2
    move-exception v2

    move-object v2, v10

    move-object v3, v11

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cutImage_common(Ljava/io/InputStream;IIFI)Landroid/graphics/Bitmap;
    .locals 14

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->InputStreamToByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :try_start_1
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v10, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v10, v4}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v10, v1, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p4

    invoke-direct {p0, v5, v4, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->judgeBeyondRatio(IIF)I

    move-result v1

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    packed-switch v1, :pswitch_data_0

    move/from16 p2, v2

    move/from16 p3, v3

    move-object v1, v9

    :goto_1
    move/from16 v2, p3

    move-object v3, v1

    move/from16 v1, p2

    :goto_2
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v11}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    invoke-direct {p0, v10}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :goto_3
    if-nez v3, :cond_c

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    int-to-float v1, v5

    move/from16 v0, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    int-to-float v2, v4

    move/from16 v0, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    move/from16 v0, p2

    int-to-float v1, v0

    int-to-float v2, v4

    mul-float/2addr v1, v2

    int-to-float v2, v5

    div-float/2addr v1, v2

    float-to-int v1, v1

    move/from16 v8, p2

    move/from16 p2, v1

    :goto_4
    const/4 v1, 0x1

    :goto_5
    :try_start_3
    div-int/lit8 v2, v5, 0x2

    if-lt v2, v8, :cond_4

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_3
    move/from16 v0, p2

    int-to-float v1, v0

    int-to-float v2, v5

    mul-float/2addr v1, v2

    int-to-float v2, v4

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v8, v1

    goto :goto_4

    :cond_4
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    if-ge v5, v8, :cond_5

    div-int/lit8 v1, v1, 0x2

    :cond_5
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v1, 0x1

    invoke-virtual {p0, v5, v4, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v1, 0x0

    invoke-static {v10, v1, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v2, v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p5

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    move/from16 v1, p2

    move v2, v8

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x1

    :goto_6
    :try_start_4
    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    move/from16 v0, p2

    int-to-float v12, v0

    mul-float v12, v12, p4

    cmpg-float v8, v8, v12

    if-ltz v8, :cond_6

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_6
    const/4 v8, 0x1

    if-eq v1, v8, :cond_7

    int-to-float v8, v4

    move/from16 v0, p2

    int-to-float v12, v0

    mul-float v12, v12, p4

    cmpg-float v8, v8, v12

    if-gez v8, :cond_7

    div-int/lit8 v1, v1, 0x2

    :cond_7
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v1, 0x1

    invoke-virtual {p0, v5, v4, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v1, 0x0

    invoke-static {v10, v1, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, p4

    float-to-int v4, v2

    move/from16 v0, p2

    int-to-float v2, v0

    int-to-float v3, v4

    div-float/2addr v2, v3

    :try_start_5
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p5

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v3

    move/from16 v1, p3

    move/from16 v2, p2

    goto/16 :goto_2

    :pswitch_2
    const/4 v1, 0x1

    :goto_7
    :try_start_6
    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    move/from16 v0, p2

    int-to-float v12, v0

    mul-float v12, v12, p4

    cmpg-float v8, v8, v12

    if-ltz v8, :cond_8

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_7

    :cond_8
    const/4 v8, 0x1

    if-eq v1, v8, :cond_9

    int-to-float v8, v5

    move/from16 v0, p2

    int-to-float v12, v0

    mul-float v12, v12, p4

    cmpg-float v8, v8, v12

    if-gez v8, :cond_9

    div-int/lit8 v1, v1, 0x2

    :cond_9
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v1, 0x1

    invoke-virtual {p0, v5, v4, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v1, 0x0

    invoke-static {v10, v1, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, p4

    float-to-int v5, v2

    move/from16 v0, p2

    int-to-float v2, v0

    int-to-float v3, v5

    div-float/2addr v2, v3

    :try_start_7
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p5

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v1

    goto/16 :goto_1

    :catch_0
    move-exception v5

    move/from16 p2, v2

    move-object v2, v4

    :goto_8
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_a
    invoke-direct {p0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    move/from16 v1, p2

    move v2, v3

    move-object v3, v9

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    move-object v10, v1

    move-object v11, v4

    move-object v1, v2

    :goto_9
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v11}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_b
    invoke-direct {p0, v10}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_c
    const/16 v4, 0x5a

    move/from16 v0, p5

    if-eq v0, v4, :cond_d

    const/16 v4, 0x10e

    move/from16 v0, p5

    if-ne v0, v4, :cond_e

    :cond_d
    move v13, v2

    move v2, v1

    move v1, v13

    :cond_e
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_f

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, v1, :cond_f

    move-object v1, v3

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    move-object v10, v1

    move-object v1, v2

    goto :goto_9

    :catchall_2
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v4

    move/from16 p2, v2

    move-object v2, v11

    goto :goto_8

    :catch_2
    move-exception v1

    move-object v1, v10

    move/from16 p2, v2

    move-object v2, v11

    goto :goto_8

    :catch_3
    move-exception v1

    move-object v1, v10

    move-object v2, v11

    move v3, v8

    goto :goto_8

    :catch_4
    move-exception v1

    move-object v1, v10

    move-object v2, v11

    move/from16 v3, p2

    move/from16 p2, p3

    goto :goto_8

    :catch_5
    move-exception v1

    move-object v1, v10

    move-object v2, v11

    move/from16 v3, p3

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cutImage_keepRatio(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v5, v3, [I

    new-array v6, v3, [I

    aput p2, v5, v2

    aput p3, v6, v2

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v7

    invoke-static {v7, v5, v6}, Lcom/alipay/android/phone/falcon/img/dataFormat;->GetRotateSize(I[I[I)V

    :try_start_0
    invoke-direct {p0, p1, v5, v6, v7}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->GetFactoryOption(Ljava/io/File;[I[II)Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v4, :cond_3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v8, v9

    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    aget v5, v5, v11

    const/4 v11, 0x0

    aget v6, v6, v11

    invoke-direct {p0, v9, v10, v5, v6}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->CalcScale(IIII)F

    move-result v5

    invoke-static {v8, v5, v7}, Lcom/alipay/android/phone/falcon/img/dataFormat;->ScaleRotateImg(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    move v4, v3

    move v3, v2

    :goto_2
    const-string/jumbo v5, "falcon"

    const-string/jumbo v6, "keep ratio out of memory"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v4, v4, 0x2

    :try_start_4
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v4, :cond_2

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v7}, Lcom/alipay/android/phone/falcon/img/dataFormat;->ScaleRotateImg(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v4

    move v4, v3

    move v3, v2

    goto :goto_2

    :catch_3
    move-exception v3

    move v3, v2

    goto :goto_2

    :catch_4
    move-exception v5

    goto :goto_2

    :cond_3
    move v4, v3

    move v3, v2

    goto :goto_1
.end method

.method public cutImage_keepRatio(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_keepRatio_common(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public cutImage_keepRatio_common(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v3, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const/16 v0, 0x5a

    if-eq p4, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p4, v0, :cond_3

    :cond_2
    move v10, p3

    move p3, p2

    move p2, v10

    :cond_3
    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->InputStreamToByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v8, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v8, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/img/dataFormat;->DataFormattoType(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-gez v0, :cond_5

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-direct {p0, v4, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v1, p2, :cond_9

    if-gt v0, p3, :cond_9

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {v8}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v0, 0x0

    invoke-static {v8, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p4, :cond_7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p4

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v7

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_8
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    move-object v7, v0

    goto/16 :goto_0

    :cond_9
    int-to-float v2, p2

    int-to-float v5, p3

    div-float/2addr v2, v5

    int-to-float v5, v1

    int-to-float v6, v0

    div-float/2addr v5, v6

    cmpl-float v6, v5, v2

    if-gtz v6, :cond_a

    cmpg-float v2, v5, v2

    if-gez v2, :cond_a

    int-to-float v2, p3

    int-to-float v5, v0

    div-float/2addr v2, v5

    int-to-float v5, v1

    mul-float/2addr v2, v5

    float-to-int p2, v2

    :cond_a
    :try_start_4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move v2, v1

    move v1, v0

    move v0, v3

    :goto_1
    div-int/lit8 v6, v2, 0x2

    if-lt v6, p2, :cond_b

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_b
    if-eq v0, v3, :cond_c

    if-ge v2, p2, :cond_c

    div-int/lit8 v0, v0, 0x2

    :cond_c
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v8}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v0, 0x0

    invoke-static {v8, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, p4

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_d
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    move-object v7, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_e
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v8, v7

    move-object v9, v7

    :goto_4
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_f
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v7

    move-object v1, v9

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    goto :goto_3
.end method

.method public cutImage_keepRatio_size(II)I
    .locals 1

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public cutImage_new(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxLen:I

    iget v1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->minLen:I

    iget v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->scale:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_new(Ljava/io/File;IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public cutImage_new(Ljava/io/File;IIF)Landroid/graphics/Bitmap;
    .locals 10

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v8

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V

    invoke-direct {p0, v2, v1, p4}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->judgeBeyondRatio(IIF)I

    move-result v6

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    packed-switch v6, :pswitch_data_0

    move v1, v0

    move v2, v7

    move-object v0, v3

    :goto_1
    const/16 v3, 0x5a

    if-eq v8, v3, :cond_2

    const/16 v3, 0x10e

    if-ne v8, v3, :cond_3

    :cond_2
    move v9, v2

    move v2, v1

    move v1, v9

    :cond_3
    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    int-to-float v0, v2

    int-to-float v3, p2

    div-float/2addr v0, v3

    int-to-float v3, v1

    int-to-float v6, p2

    div-float/2addr v3, v6

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    int-to-float v0, p2

    int-to-float v3, v1

    mul-float/2addr v0, v3

    int-to-float v3, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    move v7, p2

    move p2, v0

    :goto_2
    const/4 v0, 0x1

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    :goto_3
    div-int/lit8 v3, v1, 0x2

    if-lt v3, v7, :cond_5

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_4
    int-to-float v0, p2

    int-to-float v3, v2

    mul-float/2addr v0, v3

    int-to-float v3, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    move v7, v0

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    if-ge v1, v7, :cond_6

    div-int/lit8 v2, v2, 0x2

    :cond_6
    iput v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move v1, p2

    move v2, v7

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    :goto_4
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    int-to-float v6, p2

    mul-float/2addr v6, p4

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_7

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_7
    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    int-to-float v3, v1

    int-to-float v6, p2

    mul-float/2addr v6, p4

    cmpg-float v3, v3, v6

    if-gez v3, :cond_8

    div-int/lit8 v0, v0, 0x2

    :cond_8
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p4

    float-to-int v3, v1

    int-to-float v1, p2

    int-to-float v2, v3

    div-float/2addr v1, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move v1, p3

    move v2, p2

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, 0x1

    :goto_5
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    int-to-float v6, p2

    mul-float/2addr v6, p4

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_9

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_9
    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    int-to-float v3, v2

    int-to-float v6, p2

    mul-float/2addr v6, p4

    cmpg-float v3, v3, v6

    if-gez v3, :cond_a

    div-int/lit8 v0, v0, 0x2

    :cond_a
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p4

    float-to-int v4, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move v1, p2

    move v2, p3

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_0

    :cond_c
    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cutImage_new(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxLen:I

    iget v1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->minLen:I

    iget v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->scale:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_new(Ljava/io/InputStream;IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public cutImage_new(Ljava/io/InputStream;IIF)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_common(Ljava/io/InputStream;IIFI)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public doCallBackForce(IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    if-eqz v0, :cond_0

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x5

    int-to-long v0, v0

    iget-object v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    invoke-interface {v2, v0, v1, p3}, Lcom/alipay/android/phone/falcon/img/CutCallBack;->onCalcMemSize(JZ)V

    iget-boolean v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->bDebug:Z

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x200000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string/jumbo v0, "BITMAP_SIZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tmp_w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";tmp_h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public registeCallBack(Lcom/alipay/android/phone/falcon/img/CutCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    return-void
.end method

.method public unregisteCallBack()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    return-void
.end method
