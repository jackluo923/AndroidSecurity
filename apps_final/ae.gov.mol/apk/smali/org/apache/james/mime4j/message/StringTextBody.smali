.class Lorg/apache/james/mime4j/message/StringTextBody;
.super Lorg/apache/james/mime4j/message/TextBody;
.source "StringTextBody.java"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/TextBody;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/james/mime4j/message/SingleBody;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/StringTextBody;->copy()Lorg/apache/james/mime4j/message/StringTextBody;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/james/mime4j/message/StringTextBody;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lorg/apache/james/mime4j/message/StringTextBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/message/StringTextBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getMimeCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 60
    :cond_0
    new-instance v2, Ljava/io/StringReader;

    iget-object v4, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "reader":Ljava/io/Reader;
    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 63
    .local v3, "writer":Ljava/io/Writer;
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 65
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 66
    .local v1, "nChars":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 72
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 73
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 74
    return-void

    .line 69
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method
