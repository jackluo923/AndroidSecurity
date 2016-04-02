.class public Lorg/apache/james/mime4j/codec/CodecUtil;
.super Ljava/lang/Object;
.source "CodecUtil.java"


# static fields
.field static final DEFAULT_ENCODING_BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 42
    .local v0, "buffer":[B
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "inputLength":I
    if-eq v2, v1, :cond_0

    .line 43
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public static encodeBase64(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/codec/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 83
    .local v0, "b64Out":Lorg/apache/james/mime4j/codec/Base64OutputStream;
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/codec/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 84
    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;->close()V

    .line 85
    return-void
.end method

.method public static encodeQuotedPrintable(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    const/16 v1, 0x400

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;-><init>(IZ)V

    .line 71
    .local v0, "encoder":Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;
    invoke-virtual {v0, p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 72
    return-void
.end method

.method public static encodeQuotedPrintableBinary(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    const/16 v1, 0x400

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;-><init>(IZ)V

    .line 58
    .local v0, "encoder":Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;
    invoke-virtual {v0, p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 59
    return-void
.end method

.method public static wrapBase64(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/codec/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static wrapQuotedPrintable(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "binary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method
