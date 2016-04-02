.class Lcom/nostra13/universalimageloader/core/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# static fields
.field private static final LOG_IMAGE_SCALED:Ljava/lang/String; = "Subsampled image (%1$dx%2$d) was scaled to %3$dx%4$d"

.field private static final LOG_IMAGE_SUBSAMPLED:Ljava/lang/String; = "Original image (%1$dx%2$d) is going to be subsampled to %3$dx%4$d view. Computed scale size - %5$d"


# instance fields
.field private final displayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private final imageDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final imageUri:Ljava/net/URI;

.field private loggingEnabled:Z


# direct methods
.method constructor <init>(Ljava/net/URI;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/net/URI;
    .param p2, "imageDownloader"    # Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageUri:Ljava/net/URI;

    .line 47
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 48
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->displayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 49
    return-void
.end method

.method private computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)I
    .locals 14
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .param p3, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v8

    .line 112
    .local v8, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v7

    .line 115
    .local v7, "targetHeight":I
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 116
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    iget-object v10, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object v11, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageUri:Ljava/net/URI;

    invoke-virtual {v10, v11}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v3

    .line 119
    .local v3, "imageStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v3, v10, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 124
    const/4 v6, 0x1

    .line 125
    .local v6, "scale":I
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 126
    .local v4, "imageWidth":I
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 127
    .local v2, "imageHeight":I
    div-int v9, v4, v8

    .line 128
    .local v9, "widthScale":I
    div-int v1, v2, v7

    .line 130
    .local v1, "heightScale":I
    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-object/from16 v0, p3

    if-ne v0, v10, :cond_6

    .line 131
    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-object/from16 v0, p2

    if-eq v0, v10, :cond_0

    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_2

    .line 132
    :cond_0
    :goto_0
    div-int/lit8 v10, v4, 0x2

    if-ge v10, v8, :cond_1

    div-int/lit8 v10, v2, 0x2

    if-lt v10, v7, :cond_3

    .line 133
    :cond_1
    div-int/lit8 v4, v4, 0x2

    .line 134
    div-int/lit8 v2, v2, 0x2

    .line 135
    mul-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 121
    .end local v1    # "heightScale":I
    .end local v2    # "imageHeight":I
    .end local v4    # "imageWidth":I
    .end local v6    # "scale":I
    .end local v9    # "widthScale":I
    :catchall_0
    move-exception v10

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v10

    .line 138
    .restart local v1    # "heightScale":I
    .restart local v2    # "imageHeight":I
    .restart local v4    # "imageWidth":I
    .restart local v6    # "scale":I
    .restart local v9    # "widthScale":I
    :cond_2
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 152
    :cond_3
    :goto_1
    const/4 v10, 0x1

    if-ge v6, v10, :cond_4

    .line 153
    const/4 v6, 0x1

    .line 156
    :cond_4
    iget-boolean v10, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->loggingEnabled:Z

    if-eqz v10, :cond_5

    const-string v10, "Original image (%1$dx%2$d) is going to be subsampled to %3$dx%4$d view. Computed scale size - %5$d"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_5
    return v6

    .line 141
    :cond_6
    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-object/from16 v0, p2

    if-eq v0, v10, :cond_7

    sget-object v10, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_8

    .line 142
    :cond_7
    :goto_2
    div-int/lit8 v10, v4, 0x2

    if-lt v10, v8, :cond_3

    div-int/lit8 v10, v2, 0x2

    if-lt v10, v7, :cond_3

    .line 143
    div-int/lit8 v4, v4, 0x2

    .line 144
    div-int/lit8 v2, v2, 0x2

    .line 145
    mul-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 148
    :cond_8
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1
.end method

.method private getBitmapOptionsForImageDecoding(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .param p3, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 105
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->displayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 106
    return-object v0
.end method

.method private scaleImageExactly(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "subsampledBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p3, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .param p4, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 162
    .local v5, "srcWidth":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v4, v7

    .line 164
    .local v4, "srcHeight":F
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v6, v5, v7

    .line 165
    .local v6, "widthScale":F
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v4, v7

    .line 169
    .local v2, "heightScale":F
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p4, v7, :cond_0

    cmpl-float v7, v6, v2

    if-gez v7, :cond_1

    :cond_0
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p4, v7, :cond_6

    cmpg-float v7, v6, v2

    if-gez v7, :cond_6

    .line 170
    :cond_1
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    .line 171
    .local v1, "destWidth":I
    div-float v7, v4, v6

    float-to-int v0, v7

    .line 178
    .local v0, "destHeight":I
    :goto_0
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne p3, v7, :cond_2

    int-to-float v7, v1

    cmpg-float v7, v7, v5

    if-gez v7, :cond_2

    int-to-float v7, v0

    cmpg-float v7, v7, v4

    if-ltz v7, :cond_3

    :cond_2
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne p3, v7, :cond_7

    int-to-float v7, v1

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_7

    int-to-float v7, v0

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_7

    .line 180
    :cond_3
    const/4 v7, 0x1

    invoke-static {p1, v1, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 181
    .local v3, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eq v3, p1, :cond_4

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    :cond_4
    iget-boolean v7, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->loggingEnabled:Z

    if-eqz v7, :cond_5

    const-string v7, "Subsampled image (%1$dx%2$d) was scaled to %3$dx%4$d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    float-to-int v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    float-to-int v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_5
    :goto_1
    return-object v3

    .line 173
    .end local v0    # "destHeight":I
    .end local v1    # "destWidth":I
    .end local v3    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_6
    div-float v7, v5, v2

    float-to-int v1, v7

    .line 174
    .restart local v1    # "destWidth":I
    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    .restart local v0    # "destHeight":I
    goto :goto_0

    .line 186
    :cond_7
    move-object v3, p1

    .restart local v3    # "scaledBitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method


# virtual methods
.method public decode(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "scaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .param p3, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->getBitmapOptionsForImageDecoding(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 83
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageDownloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->imageUri:Ljava/net/URI;

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v1

    .line 86
    .local v1, "imageStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 88
    .local v2, "subsampledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 90
    if-nez v2, :cond_0

    .line 99
    :goto_0
    return-object v3

    .line 88
    .end local v2    # "subsampledBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3

    .line 95
    .restart local v2    # "subsampledBitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-eq p2, v3, :cond_1

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    if-ne p2, v3, :cond_2

    .line 96
    :cond_1
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->scaleImageExactly(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    move-object v3, v2

    .line 99
    goto :goto_0
.end method

.method setLoggingEnabled(Z)V
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/ImageDecoder;->loggingEnabled:Z

    .line 194
    return-void
.end method
