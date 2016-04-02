.class public Lorg/apache/james/mime4j/message/MessageWriter;
.super Ljava/lang/Object;
.source "MessageWriter.java"


# static fields
.field private static final CRLF:[B

.field private static final DASHES:[B

.field public static final DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 45
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->DASHES:[B

    .line 51
    new-instance v0, Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/MessageWriter;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;

    return-void

    .line 45
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 46
    nop

    :array_1
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private getBoundary(Lorg/apache/james/mime4j/field/ContentTypeField;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 3
    .param p1, "contentType"    # Lorg/apache/james/mime4j/field/ContentTypeField;

    .prologue
    .line 203
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "boundary":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multipart boundary not specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    return-object v1
.end method

.method private getContentType(Lorg/apache/james/mime4j/message/Multipart;)Lorg/apache/james/mime4j/field/ContentTypeField;
    .locals 5
    .param p1, "multipart"    # Lorg/apache/james/mime4j/message/Multipart;

    .prologue
    .line 183
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    .line 184
    .local v2, "parent":Lorg/apache/james/mime4j/message/Entity;
    if-nez v2, :cond_0

    .line 185
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing parent entity in multipart"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    .line 189
    .local v1, "header":Lorg/apache/james/mime4j/message/Header;
    if-nez v1, :cond_1

    .line 190
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing header in parent entity"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_1
    const-string v3, "Content-Type"

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 195
    .local v0, "contentType":Lorg/apache/james/mime4j/field/ContentTypeField;
    if-nez v0, :cond_2

    .line 196
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Content-Type field not specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_2
    return-object v0
.end method

.method private writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "byteSequence"    # Lorg/apache/james/mime4j/util/ByteSequence;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    instance-of v1, p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 215
    .local v0, "bab":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 219
    .end local v0    # "bab":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/util/ByteSequence;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method protected encodeStream(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "binaryBody"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {p2}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-static {p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->wrapBase64(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    .line 178
    .end local p1    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-object p1

    .line 175
    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_1
    invoke-static {p2}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p1, p3}, Lorg/apache/james/mime4j/codec/CodecUtil;->wrapQuotedPrintable(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_0
.end method

.method public writeBody(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "body"    # Lorg/apache/james/mime4j/message/Body;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    instance-of v0, p1, Lorg/apache/james/mime4j/message/Message;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lorg/apache/james/mime4j/message/Message;

    .end local p1    # "body":Lorg/apache/james/mime4j/message/Body;
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeEntity(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V

    .line 79
    :goto_0
    return-void

    .line 73
    .restart local p1    # "body":Lorg/apache/james/mime4j/message/Body;
    :cond_0
    instance-of v0, p1, Lorg/apache/james/mime4j/message/Multipart;

    if-eqz v0, :cond_1

    .line 74
    check-cast p1, Lorg/apache/james/mime4j/message/Multipart;

    .end local p1    # "body":Lorg/apache/james/mime4j/message/Body;
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeMultipart(Lorg/apache/james/mime4j/message/Multipart;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 75
    .restart local p1    # "body":Lorg/apache/james/mime4j/message/Body;
    :cond_1
    instance-of v0, p1, Lorg/apache/james/mime4j/message/SingleBody;

    if-eqz v0, :cond_2

    .line 76
    check-cast p1, Lorg/apache/james/mime4j/message/SingleBody;

    .end local p1    # "body":Lorg/apache/james/mime4j/message/Body;
    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/message/SingleBody;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 78
    .restart local p1    # "body":Lorg/apache/james/mime4j/message/Body;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported body class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeEntity(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "entity"    # Lorg/apache/james/mime4j/message/Entity;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v3

    .line 94
    .local v3, "header":Lorg/apache/james/mime4j/message/Header;
    if-nez v3, :cond_0

    .line 95
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Missing header"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    :cond_0
    invoke-virtual {p0, v3, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeHeader(Lorg/apache/james/mime4j/message/Header;Ljava/io/OutputStream;)V

    .line 99
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Entity;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v1

    .line 100
    .local v1, "body":Lorg/apache/james/mime4j/message/Body;
    if-nez v1, :cond_1

    .line 101
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Missing body"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_1
    instance-of v0, v1, Lorg/apache/james/mime4j/message/BinaryBody;

    .line 104
    .local v0, "binaryBody":Z
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Entity;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v4, v0}, Lorg/apache/james/mime4j/message/MessageWriter;->encodeStream(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v2

    .line 107
    .local v2, "encOut":Ljava/io/OutputStream;
    invoke-virtual {p0, v1, v2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBody(Lorg/apache/james/mime4j/message/Body;Ljava/io/OutputStream;)V

    .line 110
    if-eq v2, p2, :cond_2

    .line 111
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 112
    :cond_2
    return-void
.end method

.method public writeHeader(Lorg/apache/james/mime4j/message/Header;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "header"    # Lorg/apache/james/mime4j/message/Header;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Header;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/parser/Field;

    .line 164
    .local v0, "field":Lorg/apache/james/mime4j/parser/Field;
    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 165
    sget-object v2, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 168
    .end local v0    # "field":Lorg/apache/james/mime4j/parser/Field;
    :cond_0
    sget-object v2, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 169
    return-void
.end method

.method public writeMultipart(Lorg/apache/james/mime4j/message/Multipart;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "multipart"    # Lorg/apache/james/mime4j/message/Multipart;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/MessageWriter;->getContentType(Lorg/apache/james/mime4j/message/Multipart;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object v2

    .line 129
    .local v2, "contentType":Lorg/apache/james/mime4j/field/ContentTypeField;
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/message/MessageWriter;->getBoundary(Lorg/apache/james/mime4j/field/ContentTypeField;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    .line 131
    .local v1, "boundary":Lorg/apache/james/mime4j/util/ByteSequence;
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getPreambleRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 132
    sget-object v4, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 134
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 135
    .local v0, "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    sget-object v4, Lorg/apache/james/mime4j/message/MessageWriter;->DASHES:[B

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 136
    invoke-direct {p0, v1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 137
    sget-object v4, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 139
    invoke-virtual {p0, v0, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeEntity(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V

    .line 140
    sget-object v4, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 143
    .end local v0    # "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    :cond_0
    sget-object v4, Lorg/apache/james/mime4j/message/MessageWriter;->DASHES:[B

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 144
    invoke-direct {p0, v1, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 145
    sget-object v4, Lorg/apache/james/mime4j/message/MessageWriter;->DASHES:[B

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 146
    sget-object v4, Lorg/apache/james/mime4j/message/MessageWriter;->CRLF:[B

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getEpilogueRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/apache/james/mime4j/message/MessageWriter;->writeBytes(Lorg/apache/james/mime4j/util/ByteSequence;Ljava/io/OutputStream;)V

    .line 149
    return-void
.end method
