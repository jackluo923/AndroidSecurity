.class public Lcom/alipay/android/phone/falcon/img/ImageProperty;
.super Ljava/lang/Object;


# instance fields
.field private height:I

.field private imageData:[I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public InitImage(Ljava/io/File;)V
    .locals 8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->height:I

    iget v1, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->width:I

    iget v3, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->height:I

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->imageData:[I

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->imageData:[I

    iget v3, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->width:I

    iget v6, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->width:I

    iget v7, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->height:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->height:I

    return v0
.end method

.method public getImageData()[I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->imageData:[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/falcon/img/ImageProperty;->width:I

    return v0
.end method
