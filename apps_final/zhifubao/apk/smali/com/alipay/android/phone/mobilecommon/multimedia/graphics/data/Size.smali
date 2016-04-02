.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;
.super Ljava/lang/Object;


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mWidth:I

    iput p2, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mHeight:I

    return-void
.end method

.method private static checkNotNull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid Size: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseSize(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;
    .locals 3

    const-string/jumbo v0, "string must not be null"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->checkNotNull(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    iget v2, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mWidth:I

    iget v3, p1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mWidth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mHeight:I

    iget v3, p1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mHeight:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mHeight:I

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mWidth:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mWidth:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
