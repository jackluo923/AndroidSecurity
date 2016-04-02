.class public Lorg/apache/http/entity/mime/FormBodyPart;
.super Lorg/apache/james/mime4j/message/BodyPart;
.source "FormBodyPart.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Lorg/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Name may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    if-nez p2, :cond_1

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Body may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_1
    iput-object p1, p0, Lorg/apache/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    .line 60
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    .line 61
    .local v0, "header":Lorg/apache/james/mime4j/message/Header;
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->setHeader(Lorg/apache/james/mime4j/message/Header;)V

    .line 62
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 64
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateContentDisp(Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 65
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateContentType(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V

    .line 66
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateTransferEncoding(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V

    .line 67
    return-void
.end method

.method private addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected generateContentDisp(Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 3
    .param p1, "body"    # Lorg/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected generateContentType(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V
    .locals 3
    .param p1, "desc"    # Lorg/apache/james/mime4j/descriptor/ContentDescriptor;

    .prologue
    .line 87
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method protected generateTransferEncoding(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V
    .locals 2
    .param p1, "desc"    # Lorg/apache/james/mime4j/descriptor/ContentDescriptor;

    .prologue
    .line 99
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
