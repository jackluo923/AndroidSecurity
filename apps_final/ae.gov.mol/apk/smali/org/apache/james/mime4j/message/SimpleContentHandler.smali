.class public abstract Lorg/apache/james/mime4j/message/SimpleContentHandler;
.super Lorg/apache/james/mime4j/parser/AbstractContentHandler;
.source "SimpleContentHandler.java"


# instance fields
.field private currHeader:Lorg/apache/james/mime4j/message/Header;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "bd"    # Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public abstract bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final endHeader()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    .line 90
    .local v0, "tmp":Lorg/apache/james/mime4j/message/Header;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    .line 91
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->headers(Lorg/apache/james/mime4j/message/Header;)V

    .line 92
    return-void
.end method

.method public final field(Lorg/apache/james/mime4j/parser/Field;)V
    .locals 2
    .param p1, "field"    # Lorg/apache/james/mime4j/parser/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/AbstractField;->parse(Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v0

    .line 81
    .local v0, "parsedField":Lorg/apache/james/mime4j/parser/Field;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 82
    return-void
.end method

.method public abstract headers(Lorg/apache/james/mime4j/message/Header;)V
.end method

.method public final startHeader()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    .line 73
    return-void
.end method
