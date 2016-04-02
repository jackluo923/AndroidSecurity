.class public Lcom/alipay/mobile/personalbase/share/APImageObject;
.super Ljava/lang/Object;
.source "APImageObject.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageData:[B

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageData:[B

    .line 23
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 5

    .prologue
    const/high16 v4, 0xa00000

    const/16 v3, 0x2800

    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageData:[B

    array-length v1, v1

    if-nez v1, :cond_3

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 84
    :cond_2
    :goto_0
    return v0

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageData:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageData:[B

    array-length v1, v1

    if-gt v1, v4, :cond_2

    .line 65
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_2

    .line 69
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 70
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imagePath:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imagePath:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 73
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 74
    :goto_1
    if-gt v1, v4, :cond_2

    .line 80
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_2

    .line 84
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    move v1, v0

    .line 74
    goto :goto_1
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_IMAGE_OBJECT_IMAGE_DATA:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 42
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_IMAGE_OBJECT_IMAGE_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_IMAGE_OBJECT_IMAGE_URL:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imagePath:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0xe

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_IMAGE_OBJECT_IMAGE_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageData:[B

    .line 48
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_IMAGE_OBJECT_IMAGE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imagePath:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_IMAGE_OBJECT_IMAGE_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APImageObject;->imageUrl:Ljava/lang/String;

    .line 50
    return-void
.end method
