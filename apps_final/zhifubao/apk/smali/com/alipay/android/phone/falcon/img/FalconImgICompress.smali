.class public Lcom/alipay/android/phone/falcon/img/FalconImgICompress;
.super Ljava/lang/Object;


# instance fields
.field private bDebug:Z

.field private callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

.field private maxLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->bDebug:Z

    const/16 v0, 0x500

    iput v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    return-void
.end method

.method private getScaleimg([I[III)I
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, v1

    :goto_0
    aget v2, p1, v3

    div-int/lit8 v2, v2, 0x2

    if-ge v2, p3, :cond_0

    aget v2, p2, v3

    div-int/lit8 v2, v2, 0x2

    if-lt v2, p4, :cond_1

    :cond_0
    aget v2, p1, v3

    div-int/lit8 v2, v2, 0x2

    aput v2, p1, v3

    aget v2, p2, v3

    div-int/lit8 v2, v2, 0x2

    aput v2, p2, v3

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_2

    aget v1, p1, v3

    if-ge v1, p3, :cond_2

    aget v1, p2, v3

    if-ge v1, p4, :cond_2

    div-int/lit8 v0, v0, 0x2

    :cond_2
    return v0
.end method

.method private reCalcDesSize(II[I)Z
    .locals 5

    const/16 v2, 0x14

    const/4 v4, 0x0

    const/4 v3, 0x1

    aget v0, p3, v4

    iget v1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    aput v0, p3, v4

    :cond_0
    aget v0, p3, v3

    iget v1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    aput v0, p3, v3

    :cond_1
    aget v0, p3, v4

    if-ge v0, v2, :cond_2

    aput v2, p3, v4

    :cond_2
    aget v0, p3, v3

    if-ge v0, v2, :cond_3

    aput v2, p3, v3

    :cond_3
    int-to-float v0, p1

    aget v1, p3, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    aget v2, p3, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    aget v1, p3, v4

    mul-int v0, v1, p2

    div-int/2addr v0, p1

    :goto_0
    aput v1, p3, v4

    aput v0, p3, v3

    return v3

    :cond_4
    aget v0, p3, v3

    mul-int v1, v0, p1

    div-int/2addr v1, p2

    goto :goto_0
.end method


# virtual methods
.method public GenerateCompressImage_common(Ljava/io/InputStream;II)Ljava/io/ByteArrayOutputStream;
    .locals 12

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->InputStreamToByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :try_start_1
    new-instance v9, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    invoke-static {v9, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v3, 0x0

    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x1

    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v3, 0x1

    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/4 v3, 0x1

    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    div-int/lit16 v3, v3, 0x400
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v5, 0x32

    if-ge v3, v5, :cond_5

    if-nez p3, :cond_2

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    invoke-virtual {v9}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    move-object v0, v8

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v9}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->doCallBack(IIZ)V

    const/4 v0, 0x0

    invoke-static {v9, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    :try_start_4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p3

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
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v2

    :try_start_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x62

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v9}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    move v3, v2

    move v2, v0

    move v0, v1

    :goto_1
    :try_start_7
    div-int/lit8 v5, v3, 0x2

    iget v6, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    if-ge v5, v6, :cond_6

    div-int/lit8 v5, v2, 0x2

    iget v6, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    if-lt v5, v6, :cond_7

    :cond_6
    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_7
    if-eq v0, v1, :cond_8

    iget v1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    if-ge v3, v1, :cond_8

    iget v1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    if-ge v2, v1, :cond_8

    div-int/lit8 v0, v0, 0x2

    :cond_8
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v9}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v2, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->doCallBack(IIZ)V

    const/4 v0, 0x0

    invoke-static {v9, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    :try_start_8
    invoke-virtual {v9}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    if-eqz p3, :cond_c

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p3

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v2

    const/4 v1, 0x0

    :try_start_9
    invoke-static {v2, p2, v1}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->CompressImageBitmapDefaultnew(Landroid/graphics/Bitmap;II)[B

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_9
    invoke-virtual {v9}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    :try_start_c
    invoke-static {v0, p2, v1}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->CompressImageBitmapDefaultnew(Landroid/graphics/Bitmap;II)[B

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :try_start_e
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_d
    invoke-virtual {v9}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v8, v7

    :goto_2
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_11
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_14
    move-object v0, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v3, v7

    move-object v2, v7

    move-object v9, v7

    move-object v8, v7

    :goto_3
    if-eqz v8, :cond_15

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_15
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    :cond_16
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_17
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_18
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_19
    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1a
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v7

    move-object v3, v7

    move-object v2, v7

    move-object v9, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v7

    move-object v3, v7

    move-object v2, v7

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v3, v7

    move-object v2, v7

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v3, v7

    move-object v10, v2

    move-object v2, v7

    move-object v7, v10

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3

    :catchall_5
    move-exception v3

    move-object v8, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v7

    move-object v10, v7

    move-object v7, v2

    move-object v2, v10

    goto :goto_3

    :catchall_6
    move-exception v3

    move-object v10, v3

    move-object v3, v7

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catchall_7
    move-exception v4

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catchall_8
    move-exception v2

    move-object v3, v7

    move-object v10, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_3

    :catchall_9
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    move-object v4, v9

    goto/16 :goto_2

    :catch_3
    move-exception v1

    move-object v1, v0

    move-object v2, v7

    move-object v3, v7

    move-object v4, v9

    move-object v0, v7

    goto/16 :goto_2

    :catch_4
    move-exception v1

    move-object v1, v0

    move-object v3, v7

    move-object v4, v9

    move-object v0, v2

    move-object v2, v7

    goto/16 :goto_2

    :catch_5
    move-exception v3

    move-object v3, v7

    move-object v4, v9

    move-object v8, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v7

    goto/16 :goto_2

    :catch_6
    move-exception v3

    move-object v3, v1

    move-object v4, v9

    move-object v1, v0

    move-object v0, v2

    move-object v2, v7

    goto/16 :goto_2

    :catch_7
    move-exception v4

    move-object v4, v9

    move-object v10, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_2

    :catch_8
    move-exception v2

    move-object v2, v7

    move-object v3, v1

    move-object v4, v9

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2

    :catch_9
    move-exception v3

    move-object v3, v1

    move-object v4, v9

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2
.end method

.method public GenerateCompressImage_common(Ljava/io/InputStream;IIII)Ljava/io/ByteArrayOutputStream;
    .locals 16

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x2

    new-array v5, v1, [I

    const/4 v1, 0x0

    aput p3, v5, v1

    const/4 v1, 0x1

    aput p4, v5, v1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->InputStreamToByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v8

    new-instance v12, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-static {v12, v2, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, 0x0

    iput-boolean v2, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x1

    iput-boolean v2, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v2, 0x1

    iput-boolean v2, v6, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    iput-boolean v2, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-virtual {v12}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->available()I

    move-result v2

    div-int/lit16 v2, v2, 0x400
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v7, 0x32

    if-ge v2, v7, :cond_6

    if-nez p5, :cond_3

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_2
    invoke-virtual {v12}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    move-object v1, v8

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v12}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->doCallBack(IIZ)V

    const/4 v2, 0x0

    invoke-static {v12, v2, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :try_start_3
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

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
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    :try_start_4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x62

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v12}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object v1, v2

    goto/16 :goto_0

    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v5}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->reCalcDesSize(II[I)Z

    const/4 v2, 0x0

    aget v14, v5, v2

    const/4 v2, 0x1

    aget v13, v5, v2

    const/4 v2, 0x1

    :goto_1
    div-int/lit8 v5, v4, 0x2

    if-ge v5, v14, :cond_7

    div-int/lit8 v5, v3, 0x2

    if-lt v5, v13, :cond_8

    :cond_7
    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_8
    const/4 v5, 0x1

    if-eq v2, v5, :cond_a

    if-lt v4, v14, :cond_9

    if-ge v3, v13, :cond_a

    :cond_9
    div-int/lit8 v2, v2, 0x2

    :cond_a
    iput v2, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v12}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->doCallBack(IIZ)V

    const/4 v2, 0x0

    invoke-static {v12, v2, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    :try_start_7
    invoke-virtual {v12}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    if-eqz p5, :cond_10

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

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
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v3

    const/16 v2, 0x5a

    move/from16 v0, p5

    if-eq v0, v2, :cond_b

    const/16 v2, 0x10e

    move/from16 v0, p5

    if-ne v0, v2, :cond_20

    :cond_b
    move v2, v14

    move v4, v13

    :goto_2
    :try_start_8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v5, v4, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v5, v2, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :cond_c
    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-static {v3, v4, v2, v0, v5}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->CompressImageBitmapSizenew(Landroid/graphics/Bitmap;IIII)[B

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_d
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v12}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    move-object v1, v2

    goto/16 :goto_0

    :cond_10
    :try_start_b
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v2, v14, :cond_1f

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v2, v13, :cond_1f

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :goto_3
    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v1, v3, v2, v0, v4}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->CompressImageBitmapSizenew(Landroid/graphics/Bitmap;IIII)[B

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :try_start_d
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_11
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v12}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    move-object v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object v3, v10

    move-object v4, v11

    move-object v5, v2

    move-object v2, v1

    move-object v1, v9

    :goto_4
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_13
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :cond_14
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    :cond_15
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_16
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_17
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    move-object v12, v2

    move-object v2, v1

    move-object v1, v3

    :goto_5
    if-eqz v8, :cond_19

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_19
    if-eqz v11, :cond_1a

    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    :cond_1a
    if-eqz v12, :cond_1b

    invoke-virtual {v12}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->close()V

    :cond_1b
    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1c
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1d
    if-eqz v9, :cond_1e

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1e
    throw v1

    :catchall_1
    move-exception v2

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object v9, v3

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    goto :goto_5

    :catchall_4
    move-exception v4

    move-object v9, v3

    move-object v8, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_5

    :catchall_5
    move-exception v4

    move-object v9, v3

    move-object v10, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_5

    :catchall_6
    move-exception v5

    move-object v9, v3

    move-object v10, v2

    move-object v11, v4

    move-object v2, v1

    move-object v1, v5

    goto :goto_5

    :catchall_7
    move-exception v3

    move-object v10, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_5

    :catchall_8
    move-exception v4

    move-object v10, v2

    move-object v11, v3

    move-object v2, v1

    move-object v1, v4

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v2, v1

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v1, v9

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v2, v1

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v1, v9

    goto/16 :goto_4

    :catch_3
    move-exception v2

    move-object v2, v1

    move-object v4, v11

    move-object v5, v12

    move-object v1, v3

    move-object v3, v10

    goto/16 :goto_4

    :catch_4
    move-exception v4

    move-object v4, v11

    move-object v5, v12

    move-object v8, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v10

    goto/16 :goto_4

    :catch_5
    move-exception v4

    move-object v4, v11

    move-object v5, v12

    move-object v15, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v15

    goto/16 :goto_4

    :catch_6
    move-exception v5

    move-object v5, v12

    move-object v15, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_4

    :catch_7
    move-exception v3

    move-object v3, v2

    move-object v4, v11

    move-object v5, v12

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_4

    :catch_8
    move-exception v4

    move-object v4, v3

    move-object v5, v12

    move-object v3, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_4

    :cond_1f
    move v2, v13

    move v3, v14

    goto/16 :goto_3

    :cond_20
    move v2, v13

    move v4, v14

    goto/16 :goto_2
.end method

.method public GenerateCompressImage_new(Ljava/io/File;I)Ljava/io/ByteArrayOutputStream;
    .locals 11

    const/4 v7, 0x0

    if-nez p1, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v8, v5, v6

    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    div-int/lit16 v2, v2, 0x400

    const/16 v6, 0x32

    if-ge v2, v6, :cond_5

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    aget v0, v4, v0

    const/4 v2, 0x0

    aget v2, v5, v2

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v2, v4}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->doCallBack(IIZ)V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    if-eqz v1, :cond_3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v1

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
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v2

    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x62

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    :try_start_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x62

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    :try_start_8
    iget v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    iget v6, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->maxLen:I

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->getScaleimg([I[III)I

    move-result v2

    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v0, 0x0

    :try_start_9
    aget v0, v4, v0

    const/4 v2, 0x0

    aget v2, v5, v2

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v2, v4}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->doCallBack(IIZ)V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v0

    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    if-eqz v1, :cond_8

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-object v2

    const/4 v1, 0x0

    :try_start_b
    invoke-static {v2, p2, v1}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->CompressImageBitmapDefaultnew(Landroid/graphics/Bitmap;II)[B

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :try_start_d
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    :try_start_e
    invoke-static {v0, p2, v1}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->CompressImageBitmapDefaultnew(Landroid/graphics/Bitmap;II)[B

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :try_start_10
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    :goto_1
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    move-object v0, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v3, v7

    move-object v2, v7

    move-object v4, v7

    move-object v8, v7

    :goto_2
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_15
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v7

    move-object v2, v7

    move-object v4, v7

    move-object v8, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v7

    move-object v3, v7

    move-object v2, v7

    move-object v4, v7

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v3, v7

    move-object v2, v7

    move-object v4, v7

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_2

    :catchall_4
    move-exception v1

    move-object v3, v7

    move-object v4, v7

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    move-object v10, v7

    move-object v7, v2

    move-object v2, v10

    goto :goto_2

    :catchall_5
    move-exception v3

    move-object v4, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v7

    move-object v9, v7

    move-object v7, v2

    move-object v2, v9

    goto :goto_2

    :catchall_6
    move-exception v2

    move-object v3, v7

    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_2

    :catchall_7
    move-exception v3

    move-object v4, v7

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v7

    move-object v7, v9

    goto :goto_2

    :catchall_8
    move-exception v4

    move-object v9, v4

    move-object v4, v7

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catchall_9
    move-exception v2

    move-object v3, v7

    move-object v4, v7

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catchall_a
    move-exception v3

    move-object v4, v7

    move-object v9, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v0, v7

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v8

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v1, v0

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v8

    move-object v0, v7

    goto/16 :goto_1

    :catch_4
    move-exception v1

    move-object v1, v0

    move-object v3, v7

    move-object v4, v7

    move-object v5, v8

    move-object v0, v2

    move-object v2, v7

    goto/16 :goto_1

    :catch_5
    move-exception v3

    move-object v3, v7

    move-object v4, v1

    move-object v5, v8

    move-object v1, v0

    move-object v0, v2

    move-object v2, v7

    goto/16 :goto_1

    :catch_6
    move-exception v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    move-object v5, v8

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_1

    :catch_7
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v8

    goto/16 :goto_1

    :catch_8
    move-exception v1

    move-object v1, v0

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v8

    move-object v0, v7

    goto/16 :goto_1

    :catch_9
    move-exception v1

    move-object v1, v0

    move-object v3, v7

    move-object v4, v7

    move-object v5, v8

    move-object v0, v2

    move-object v2, v7

    goto/16 :goto_1

    :catch_a
    move-exception v3

    move-object v3, v1

    move-object v4, v7

    move-object v5, v8

    move-object v1, v0

    move-object v0, v2

    move-object v2, v7

    goto/16 :goto_1

    :catch_b
    move-exception v4

    move-object v4, v7

    move-object v5, v8

    move-object v9, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v9

    goto/16 :goto_1

    :catch_c
    move-exception v2

    move-object v2, v7

    move-object v3, v1

    move-object v4, v7

    move-object v5, v8

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_1

    :catch_d
    move-exception v3

    move-object v3, v1

    move-object v4, v7

    move-object v5, v8

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_1
.end method

.method public GenerateCompressImage_new(Ljava/io/File;III)Ljava/io/ByteArrayOutputStream;
    .locals 22

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_0
    return-object v8

    :cond_2
    const/4 v5, 0x2

    new-array v15, v5, [I

    const/4 v5, 0x0

    aput p3, v15, v5

    const/4 v5, 0x1

    aput p4, v15, v5

    invoke-static/range {p1 .. p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v16

    const/4 v14, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    new-array v0, v9, [I

    move-object/from16 v17, v0

    const/4 v9, 0x1

    new-array v0, v9, [I

    move-object/from16 v18, v0

    const/4 v9, 0x1

    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->available()I

    move-result v10

    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x2

    :try_start_2
    new-array v5, v5, [I

    move-object/from16 v0, p1

    invoke-static {v11, v0, v5}, Lcom/alipay/android/phone/falcon/img/dataFormat;->DecodeWidthHeight(Landroid/graphics/BitmapFactory$Options;Ljava/io/File;[I)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, v5, v20

    aput v20, v17, v19

    const/16 v19, 0x0

    const/16 v20, 0x1

    aget v20, v5, v20

    aput v20, v18, v19

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v19

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/lit16 v10, v10, 0x400

    const/16 v19, 0x32

    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v15, 0x1

    aget v5, v5, v15

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5, v15}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->doCallBack(IIZ)V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v5, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v6, v5, v0}, Lcom/alipay/android/phone/falcon/img/dataFormat;->ScaleRotateImg(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    :try_start_4
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x62

    invoke-virtual {v5, v10, v12, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_5
    const/4 v14, 0x0

    const/4 v5, 0x0

    :try_start_6
    aget v5, v17, v5

    const/4 v10, 0x0

    aget v10, v18, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v15}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->reCalcDesSize(II[I)Z

    const/4 v5, 0x0

    aget p3, v15, v5

    const/4 v5, 0x1

    aget p4, v15, v5

    const/16 v5, 0x5a

    move/from16 v0, v16

    if-eq v0, v5, :cond_6

    const/16 v5, 0x10e

    move/from16 v0, v16

    if-ne v0, v5, :cond_7

    :cond_6
    move/from16 v21, p3

    move/from16 p3, p4

    move/from16 p4, v21

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->getScaleimg([I[III)I

    move-result v10

    iput v10, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v5, 0x0

    :try_start_7
    aget v5, v17, v5

    const/4 v9, 0x0

    aget v9, v18, v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9, v15}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->doCallBack(IIZ)V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v5, v9, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v6

    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v6, v5, v0}, Lcom/alipay/android/phone/falcon/img/dataFormat;->ScaleRotateImg(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v5

    :try_start_9
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move/from16 v0, p3

    if-ge v8, v0, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move/from16 v0, p4

    if-ge v8, v0, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    :cond_8
    const/4 v8, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p2

    invoke-static {v5, v0, v1, v2, v8}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->CompressImageBitmapSizenew(Landroid/graphics/Bitmap;IIII)[B

    move-result-object v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_1

    :catch_0
    move-exception v11

    move-object v11, v10

    move-object v10, v12

    move v12, v14

    move-object/from16 v21, v6

    move-object v6, v5

    move v5, v9

    move-object v9, v7

    move-object v7, v8

    move-object/from16 v8, v21

    :goto_2
    :try_start_c
    const-string/jumbo v13, "falcon"

    const-string/jumbo v14, "compress with file out of memory"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    mul-int/lit8 v5, v5, 0x2

    :try_start_e
    iput v5, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    aget v5, v17, v5

    div-int/lit8 v5, v5, 0x2

    const/4 v11, 0x0

    aget v11, v18, v11

    div-int/lit8 v11, v11, 0x2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11, v14}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->doCallBack(IIZ)V

    :cond_9
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v11, 0x0

    invoke-static {v5, v11, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-static {v8, v5, v0}, Lcom/alipay/android/phone/falcon/img/dataFormat;->ScaleRotateImg(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move/from16 v0, p3

    if-ge v5, v0, :cond_a

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, p4

    if-ge v5, v0, :cond_a

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    :cond_a
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p2

    invoke-static {v7, v0, v1, v2, v12}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->CompressImageBitmapSizenew(Landroid/graphics/Bitmap;IIII)[B

    move-result-object v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object v9, v5

    move-object v5, v8

    move-object v8, v6

    :goto_3
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    :goto_4
    move-object v5, v8

    move-object v13, v11

    move-object v8, v10

    goto :goto_3

    :catchall_0
    move-exception v5

    move-object v13, v10

    :goto_5
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    :cond_f
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    :cond_11
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    throw v5

    :catchall_1
    move-exception v5

    goto :goto_5

    :catchall_2
    move-exception v8

    move-object/from16 v21, v8

    move-object v8, v5

    move-object/from16 v5, v21

    goto :goto_5

    :catchall_3
    move-exception v9

    move-object v12, v8

    move-object v8, v5

    move-object v5, v9

    goto :goto_5

    :catchall_4
    move-exception v8

    move-object v12, v9

    move-object/from16 v21, v5

    move-object v5, v8

    move-object/from16 v8, v21

    goto :goto_5

    :catchall_5
    move-exception v7

    move-object v12, v9

    move-object/from16 v21, v5

    move-object v5, v7

    move-object v7, v8

    move-object/from16 v8, v21

    goto :goto_5

    :catchall_6
    move-exception v5

    move-object v6, v8

    move-object v12, v10

    move-object v13, v11

    move-object v8, v7

    move-object v7, v9

    goto :goto_5

    :catchall_7
    move-exception v5

    move-object v6, v8

    move-object v12, v10

    move-object v8, v7

    move-object v7, v9

    goto :goto_5

    :catchall_8
    move-exception v5

    move-object v12, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    goto :goto_5

    :catchall_9
    move-exception v9

    move-object v12, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v5

    move-object v5, v9

    goto :goto_5

    :catch_2
    move-exception v5

    move-object v11, v13

    goto :goto_4

    :catch_3
    move-exception v5

    move-object v10, v6

    move-object v11, v13

    goto :goto_4

    :catch_4
    move-exception v9

    move-object v9, v5

    move-object v10, v6

    move-object v11, v13

    goto :goto_4

    :catch_5
    move-exception v10

    move-object v10, v12

    move-object v11, v13

    move v12, v14

    move-object/from16 v21, v6

    move-object v6, v5

    move v5, v9

    move-object v9, v7

    move-object v7, v8

    move-object/from16 v8, v21

    goto/16 :goto_2

    :catch_6
    move-exception v5

    move v5, v9

    move-object v10, v12

    move-object v9, v7

    move v12, v14

    move-object v7, v8

    move-object v8, v6

    move-object v6, v11

    move-object v11, v13

    goto/16 :goto_2

    :catch_7
    move-exception v5

    move v5, v9

    move-object v10, v12

    move-object v9, v7

    move v12, v14

    move-object v7, v8

    move-object v8, v6

    move-object v6, v11

    move-object v11, v13

    goto/16 :goto_2

    :catch_8
    move-exception v8

    move-object v8, v6

    move-object v10, v12

    move-object v6, v11

    move v12, v14

    move-object v11, v13

    move-object/from16 v21, v5

    move v5, v9

    move-object v9, v7

    move-object/from16 v7, v21

    goto/16 :goto_2

    :catch_9
    move-exception v10

    move-object v10, v8

    move v12, v14

    move-object v8, v6

    move-object v6, v11

    move-object v11, v13

    move/from16 v21, v9

    move-object v9, v7

    move-object v7, v5

    move/from16 v5, v21

    goto/16 :goto_2

    :catch_a
    move-exception v5

    move v5, v10

    move-object v9, v7

    move-object v7, v8

    move-object v10, v12

    move-object v8, v6

    move v12, v14

    move-object v6, v11

    move-object v11, v13

    goto/16 :goto_2

    :catch_b
    move-exception v5

    move v5, v10

    move-object v9, v7

    move-object v7, v8

    move-object v10, v12

    move-object v8, v6

    move v12, v14

    move-object v6, v11

    move-object v11, v13

    goto/16 :goto_2

    :catch_c
    move-exception v8

    move-object v8, v6

    move-object v9, v7

    move-object v7, v5

    move-object v6, v11

    move v5, v10

    move-object v11, v13

    move-object v10, v12

    move v12, v14

    goto/16 :goto_2

    :catch_d
    move-exception v8

    move-object v8, v6

    move v12, v14

    move-object v6, v11

    move-object v11, v13

    move-object/from16 v21, v7

    move-object v7, v5

    move v5, v10

    move-object v10, v9

    move-object/from16 v9, v21

    goto/16 :goto_2

    :catch_e
    move-exception v7

    move-object v7, v5

    move v12, v14

    move v5, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v6

    move-object v6, v11

    move-object v11, v13

    goto/16 :goto_2
.end method

.method public GenerateCompressImage_new(Ljava/io/InputStream;I)Ljava/io/ByteArrayOutputStream;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->GenerateCompressImage_common(Ljava/io/InputStream;II)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public GenerateCompressImage_new(Ljava/io/InputStream;III)Ljava/io/ByteArrayOutputStream;
    .locals 6

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->GenerateCompressImage_common(Ljava/io/InputStream;IIII)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public doCallBack(IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    if-eqz v0, :cond_0

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x5

    int-to-long v0, v0

    iget-object v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    invoke-interface {v2, v0, v1, p3}, Lcom/alipay/android/phone/falcon/img/CutCallBack;->onCalcMemSize(JZ)V

    iget-boolean v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->bDebug:Z

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

    iput-object p1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    return-void
.end method

.method public unregisteCallBack()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgICompress;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    return-void
.end method
