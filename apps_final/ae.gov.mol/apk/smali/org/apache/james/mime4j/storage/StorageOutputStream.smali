.class public abstract Lorg/apache/james/mime4j/storage/StorageOutputStream;
.super Ljava/io/OutputStream;
.source "StorageOutputStream.java"


# instance fields
.field private closed:Z

.field private singleByte:[B

.field private usedUp:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    .line 135
    return-void
.end method

.method public final toStorage()Lorg/apache/james/mime4j/storage/Storage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->usedUp:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "toStorage may be invoked only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    .line 74
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->usedUp:Z

    .line 75
    invoke-virtual {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->toStorage0()Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    return-object v0
.end method

.method protected abstract toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "StorageOutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    if-nez v0, :cond_1

    .line 84
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    .line 86
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 87
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write0([BII)V

    .line 88
    return-void
.end method

.method public final write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "StorageOutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    if-nez p1, :cond_1

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 98
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_2
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write0([BII)V

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "StorageOutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-nez p1, :cond_1

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 113
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 116
    :cond_3
    if-nez p3, :cond_4

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write0([BII)V

    goto :goto_0
.end method

.method protected abstract write0([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
