.class Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"


# instance fields
.field protected buffer:[B

.field protected head:I

.field protected tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-gtz p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    .line 78
    iput v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    .line 79
    iput v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    .line 80
    return-void
.end method

.method static synthetic access$000(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->increment(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 200
    add-int/lit8 p1, p1, -0x1

    .line 201
    if-gez p1, :cond_0

    .line 202
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 204
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 186
    add-int/lit8 p1, p1, 0x1

    .line 187
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 188
    const/4 p1, 0x0

    .line 190
    :cond_0
    return p1
.end method


# virtual methods
.method public add(B)Z
    .locals 6
    .param p1, "b"    # B

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 117
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 119
    .local v2, "tmp":[B
    const/4 v1, 0x0

    .line 120
    .local v1, "j":I
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    .local v0, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    if-eq v0, v3, :cond_1

    .line 121
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v1

    .line 122
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    aput-byte v5, v3, v0

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 127
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_1
    iput-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    .line 132
    iput v5, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    .line 133
    iput v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    .line 136
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":[B
    :cond_2
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    iget v4, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    aput-byte p1, v3, v4

    .line 137
    iget v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    .line 138
    iget v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    iget-object v4, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 139
    iput v5, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    .line 141
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public get()B
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;-><init>(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;)V

    return-object v0
.end method

.method public remove()B
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The buffer is already empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    aget-byte v0, v1, v2

    .line 171
    .local v0, "element":B
    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    .line 172
    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    .line 176
    :cond_1
    return v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "size":I
    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    iget v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    if-ge v1, v2, :cond_0

    .line 91
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    add-int v0, v1, v2

    .line 96
    :goto_0
    return v0

    .line 93
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    iget v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    sub-int v0, v1, v2

    goto :goto_0
.end method
