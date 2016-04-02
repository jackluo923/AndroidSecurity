.class public Lorg/apache/james/mime4j/util/ContentUtil;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "byteSequence"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;
    .locals 3
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "byteSequence"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 123
    instance-of v2, p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 124
    check-cast v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 125
    .local v0, "bab":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v2

    .line 128
    .end local v0    # "bab":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    :goto_0
    return-object v2

    .line 127
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->toByteArray()[B

    move-result-object v1

    .line 128
    .local v1, "bytes":[B
    invoke-static {p0, v1, p2, p3}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static decode(Ljava/nio/charset/Charset;[BII)Ljava/lang/String;
    .locals 1
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 134
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "byteSequence"    # Lorg/apache/james/mime4j/util/ByteSequence;

    .prologue
    .line 72
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;
    .locals 1
    .param p0, "byteSequence"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 104
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Ljava/nio/charset/Charset;Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 58
    .local v1, "encoded":Ljava/nio/ByteBuffer;
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 59
    .local v0, "bab":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 60
    return-object v0
.end method
