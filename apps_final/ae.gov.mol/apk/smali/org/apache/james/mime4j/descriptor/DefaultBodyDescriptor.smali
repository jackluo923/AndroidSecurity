.class public Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;
.super Ljava/lang/Object;
.source "DefaultBodyDescriptor.java"

# interfaces
.implements Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;


# static fields
.field private static final DEFAULT_MEDIA_TYPE:Ljava/lang/String; = "text"

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field private static final DEFAULT_SUB_TYPE:Ljava/lang/String; = "plain"

.field private static final EMAIL_MESSAGE_MIME_TYPE:Ljava/lang/String; = "message/rfc822"

.field private static final MEDIA_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field private static final MEDIA_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final SUB_TYPE_EMAIL:Ljava/lang/String; = "rfc822"

.field private static final US_ASCII:Ljava/lang/String; = "us-ascii"

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private boundary:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private contentLength:J

.field private contentTransferEncSet:Z

.field private contentTypeSet:Z

.field private mediaType:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "text"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    .line 54
    const-string v0, "plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    .line 55
    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->boundary:Ljava/lang/String;

    .line 57
    const-string v0, "us-ascii"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    .line 58
    const-string v0, "7bit"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->transferEncoding:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J

    .line 78
    if-eqz p1, :cond_0

    const-string v0, "multipart/digest"

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "message/rfc822"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    .line 80
    const-string v0, "rfc822"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    .line 81
    const-string v0, "message"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "text/plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    .line 84
    const-string v0, "plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    .line 85
    const-string v0, "text"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseContentType(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTypeSet:Z

    .line 123
    invoke-static {p1}, Lorg/apache/james/mime4j/util/MimeUtil;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 125
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, ""

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 126
    .local v3, "main":Ljava/lang/String;
    const/4 v6, 0x0

    .line 127
    .local v6, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 128
    .local v5, "subtype":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 130
    const/16 v8, 0x2f

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 131
    .local v2, "index":I
    const/4 v7, 0x0

    .line 132
    .local v7, "valid":Z
    const/4 v8, -0x1

    if-eq v2, v8, :cond_0

    .line 133
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 134
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    const/4 v7, 0x1

    .line 141
    :cond_0
    if-nez v7, :cond_1

    .line 142
    const/4 v3, 0x0

    .line 143
    const/4 v6, 0x0

    .line 144
    const/4 v5, 0x0

    .line 147
    .end local v2    # "index":I
    .end local v7    # "valid":Z
    :cond_1
    const-string v8, "boundary"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    .local v0, "b":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v8, "multipart/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const-string v8, "multipart/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 153
    :cond_3
    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    .line 154
    iput-object v5, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    .line 155
    iput-object v6, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    .line 158
    :cond_4
    iget-object v8, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    invoke-static {v8}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 159
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->boundary:Ljava/lang/String;

    .line 162
    :cond_5
    const-string v8, "charset"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, "c":Ljava/lang/String;
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    .line 164
    if-eqz v1, :cond_6

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    .line 170
    :cond_6
    iget-object v8, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    if-nez v8, :cond_7

    const-string v8, "text"

    iget-object v9, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 171
    const-string v8, "us-ascii"

    iput-object v8, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    .line 177
    :cond_7
    iget-object v8, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 178
    iget-object v8, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    const-string v9, ""

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v8, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    const-string v9, "boundary"

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v8, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    const-string v9, "charset"

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/parser/Field;)V
    .locals 7
    .param p1, "field"    # Lorg/apache/james/mime4j/parser/Field;

    .prologue
    .line 96
    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v3, "content-transfer-encoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTransferEncSet:Z

    if-nez v3, :cond_1

    .line 102
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTransferEncSet:Z

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 106
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->transferEncoding:Ljava/lang/String;

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v3, "content-length"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 111
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid content-length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v3, "content-type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTypeSet:Z

    if-nez v3, :cond_0

    .line 116
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parseContentType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J

    return-wide v0
.end method

.method public getContentTypeParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method
