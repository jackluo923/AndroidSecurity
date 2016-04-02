.class public Lorg/apache/http/entity/mime/MultipartEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final MULTIPART_CHARS:[C


# instance fields
.field private final contentType:Lorg/apache/http/Header;

.field private volatile dirty:Z

.field private length:J

.field private final message:Lorg/apache/james/mime4j/message/Message;

.field private final multipart:Lorg/apache/http/entity/mime/HttpMultipart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/MultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 1
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 4
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;
    .param p2, "boundary"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v1, Lorg/apache/http/entity/mime/HttpMultipart;

    const-string v2, "form-data"

    invoke-direct {v1, v2}, Lorg/apache/http/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    .line 78
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-virtual {p0, p2, p3}, Lorg/apache/http/entity/mime/MultipartEntity;->generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->contentType:Lorg/apache/http/Header;

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->dirty:Z

    .line 83
    new-instance v1, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {v1}, Lorg/apache/james/mime4j/message/Message;-><init>()V

    iput-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->message:Lorg/apache/james/mime4j/message/Message;

    .line 84
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    .line 86
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->message:Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Message;->setHeader(Lorg/apache/james/mime4j/message/Header;)V

    .line 87
    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    iget-object v2, p0, Lorg/apache/http/entity/mime/MultipartEntity;->message:Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/mime/HttpMultipart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 88
    if-nez p1, :cond_0

    .line 89
    sget-object p1, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 91
    :cond_0
    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v1, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 92
    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->message:Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/entity/mime/MultipartEntity;->contentType:Lorg/apache/http/Header;

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 93
    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentBody"    # Lorg/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    new-instance v1, Lorg/apache/http/entity/mime/FormBodyPart;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->dirty:Z

    .line 127
    return-void
.end method

.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    return-void
.end method

.method protected generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v4, "multipart/form-data; boundary="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    if-eqz p2, :cond_1

    .line 118
    const-string v4, "; charset="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 111
    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 112
    .local v3, "rand":Ljava/util/Random;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1e

    .line 113
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 114
    sget-object v4, Lorg/apache/http/entity/mime/MultipartEntity;->MULTIPART_CHARS:[C

    sget-object v5, Lorg/apache/http/entity/mime/MultipartEntity;->MULTIPART_CHARS:[C

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->dirty:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/HttpMultipart;->getTotalLength()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->length:J

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->dirty:Z

    .line 154
    :cond_0
    iget-wide v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->length:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 8

    .prologue
    .line 130
    iget-object v4, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v4}, Lorg/apache/http/entity/mime/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v3

    .line 131
    .local v3, "parts":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/entity/mime/FormBodyPart;

    .line 133
    .local v2, "part":Lorg/apache/http/entity/mime/FormBodyPart;
    invoke-virtual {v2}, Lorg/apache/http/entity/mime/FormBodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/mime/content/ContentBody;

    .line 134
    .local v0, "body":Lorg/apache/http/entity/mime/content/ContentBody;
    invoke-interface {v0}, Lorg/apache/http/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 135
    const/4 v4, 0x0

    .line 138
    .end local v0    # "body":Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v2    # "part":Lorg/apache/http/entity/mime/FormBodyPart;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeTo(Ljava/io/OutputStream;)V

    .line 180
    return-void
.end method
