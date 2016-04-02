.class public final Lorg/apache/james/mime4j/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"

# interfaces
.implements Lorg/apache/james/mime4j/util/ByteSequence;


# instance fields
.field private buffer:[B

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-gez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    .line 37
    return-void
.end method

.method public constructor <init>([BIZ)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "len"    # I
    .param p3, "dontCopy"    # Z

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-le p2, v0, :cond_2

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 49
    :cond_2
    if-eqz p3, :cond_3

    .line 50
    iput-object p1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    .line 56
    :goto_0
    iput p2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 57
    return-void

    .line 52
    :cond_3
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    .line 53
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "dontCopy"    # Z

    .prologue
    .line 40
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>([BIZ)V

    .line 41
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newlen"    # I

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [B

    .line 61
    .local v0, "newbuffer":[B
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    .line 63
    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 4
    .param p1, "b"    # I

    .prologue
    .line 85
    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    add-int/lit8 v0, v1, 0x1

    .line 86
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 87
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->expand(I)V

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 90
    iput v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 91
    return-void
.end method

.method public append([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 66
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-ltz p2, :cond_2

    array-length v1, p1

    if-gt p2, v1, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 71
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 73
    :cond_3
    if-eqz p3, :cond_0

    .line 76
    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    add-int v0, v1, p3

    .line 77
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 78
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->expand(I)V

    .line 80
    :cond_4
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    goto :goto_0
.end method

.method public buffer()[B
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public byteAt(I)B
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 106
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-lt p1, v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 95
    return-void
.end method

.method public indexOf(B)I
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 125
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->indexOf(BII)I

    move-result v0

    return v0
.end method

.method public indexOf(BII)I
    .locals 3
    .param p1, "b"    # B
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 129
    if-gez p2, :cond_0

    .line 130
    const/4 p2, 0x0

    .line 132
    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-le p3, v2, :cond_1

    .line 133
    iget p3, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 135
    :cond_1
    if-le p2, p3, :cond_3

    move v0, v1

    .line 143
    :cond_2
    :goto_0
    return v0

    .line 138
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_4

    .line 139
    iget-object v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    aget-byte v2, v2, v0

    if-eq v2, p1, :cond_2

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 147
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 150
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 151
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    new-array v0, v1, [B

    .line 99
    .local v0, "b":[B
    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
