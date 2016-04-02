.class public Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;
.super Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZSecurityFileInputStream"


# instance fields
.field private bytePos:I

.field private mBuffer:[B

.field private mContext:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mContext:Landroid/content/ContextWrapper;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mContext:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private initBuffer()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;->available()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-super {p0, v1, v2, v0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;->read([BII)I

    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;->close()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mContext:Landroid/content/ContextWrapper;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ZSecurityFileInputStream"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->initBuffer()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B

    array-length v0, v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->initBuffer()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "TaobaoSecurityEncryptor.decrypt = null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->bytePos:I

    if-lt v1, v0, :cond_2

    const/4 p3, -0x1

    :goto_0
    return p3

    :cond_2
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->bytePos:I

    add-int/2addr v1, p3

    if-le v1, v0, :cond_3

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->bytePos:I

    sub-int p3, v0, v1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->mBuffer:[B

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->bytePos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->bytePos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileInputStream;->bytePos:I

    goto :goto_0
.end method

.method public skip(J)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
