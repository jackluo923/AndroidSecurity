.class public Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;
.super Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;


# instance fields
.field private byteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private byteSize:I

.field private mContext:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->mContext:Landroid/content/ContextWrapper;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->mContext:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->mContext:Landroid/content/ContextWrapper;

    invoke-static {v0, v4}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    array-length v1, v0

    invoke-super {p0, v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;->write([BII)V

    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;->close()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v5, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    array-length v6, v0

    add-int/2addr v6, v3

    if-lt v5, v6, :cond_2

    array-length v5, v0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    array-length v0, v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZFileOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    return-void
.end method

.method public write([BII)V
    .locals 2

    array-length v0, p1

    if-le p3, v0, :cond_0

    array-length p3, p1

    :cond_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/file/ZSecurityFileOutputStream;->byteSize:I

    return-void
.end method
