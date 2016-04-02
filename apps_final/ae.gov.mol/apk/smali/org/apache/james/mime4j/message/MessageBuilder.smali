.class public Lorg/apache/james/mime4j/message/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/ContentHandler;


# instance fields
.field private final bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

.field private final entity:Lorg/apache/james/mime4j/message/Entity;

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 1
    .param p1, "entity"    # Lorg/apache/james/mime4j/message/Entity;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    .line 50
    iput-object p1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->entity:Lorg/apache/james/mime4j/message/Entity;

    .line 51
    new-instance v0, Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/BodyFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/Entity;Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .locals 1
    .param p1, "entity"    # Lorg/apache/james/mime4j/message/Entity;
    .param p2, "storageProvider"    # Lorg/apache/james/mime4j/storage/StorageProvider;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    .line 55
    iput-object p1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->entity:Lorg/apache/james/mime4j/message/Entity;

    .line 56
    new-instance v0, Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/message/BodyFactory;-><init>(Lorg/apache/james/mime4j/storage/StorageProvider;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    .line 57
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method private static loadStream(Ljava/io/InputStream;)Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 213
    .local v1, "bab":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 214
    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    .line 217
    :cond_0
    return-object v1
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "bd"    # Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const-class v4, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 134
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "enc":Ljava/lang/String;
    const-string v4, "base64"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    new-instance v1, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    .local v1, "decodedStream":Ljava/io/InputStream;
    :goto_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    iget-object v4, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/apache/james/mime4j/message/BodyFactory;->textBody(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;

    move-result-object v0

    .line 153
    .local v0, "body":Lorg/apache/james/mime4j/message/Body;
    :goto_1
    iget-object v4, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/message/Entity;

    .line 154
    .local v3, "entity":Lorg/apache/james/mime4j/message/Entity;
    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 155
    return-void

    .line 141
    .end local v0    # "body":Lorg/apache/james/mime4j/message/Body;
    .end local v1    # "decodedStream":Ljava/io/InputStream;
    .end local v3    # "entity":Lorg/apache/james/mime4j/message/Entity;
    :cond_0
    const-string v4, "quoted-printable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    new-instance v1, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v1    # "decodedStream":Ljava/io/InputStream;
    goto :goto_0

    .line 144
    .end local v1    # "decodedStream":Ljava/io/InputStream;
    :cond_1
    move-object v1, p2

    .restart local v1    # "decodedStream":Ljava/io/InputStream;
    goto :goto_0

    .line 150
    :cond_2
    iget-object v4, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->bodyFactory:Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-virtual {v4, v1}, Lorg/apache/james/mime4j/message/BodyFactory;->binaryBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/message/BinaryBody;

    move-result-object v0

    .restart local v0    # "body":Lorg/apache/james/mime4j/message/Body;
    goto :goto_1
.end method

.method public endBodyPart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 179
    const-class v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 180
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public endHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 109
    const-class v1, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 110
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Header;

    .line 111
    .local v0, "h":Lorg/apache/james/mime4j/message/Header;
    const-class v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 112
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Entity;->setHeader(Lorg/apache/james/mime4j/message/Header;)V

    .line 113
    return-void
.end method

.method public endMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 85
    const-class v0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 86
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public endMultipart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const-class v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 188
    invoke-static {p1}, Lorg/apache/james/mime4j/message/MessageBuilder;->loadStream(Ljava/io/InputStream;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 189
    .local v0, "bytes":Lorg/apache/james/mime4j/util/ByteSequence;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Multipart;->setEpilogueRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 190
    return-void
.end method

.method public field(Lorg/apache/james/mime4j/parser/Field;)V
    .locals 2
    .param p1, "field"    # Lorg/apache/james/mime4j/parser/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 100
    const-class v1, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 101
    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/AbstractField;->parse(Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v0

    .line 102
    .local v0, "parsedField":Lorg/apache/james/mime4j/parser/Field;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Header;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 103
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const-class v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 197
    invoke-static {p1}, Lorg/apache/james/mime4j/message/MessageBuilder;->loadStream(Ljava/io/InputStream;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 198
    .local v0, "bytes":Lorg/apache/james/mime4j/util/ByteSequence;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Multipart;->setPreambleRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V

    .line 199
    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 168
    const-class v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 170
    new-instance v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 171
    .local v0, "bodyPart":Lorg/apache/james/mime4j/message/BodyPart;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Multipart;->addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V

    .line 172
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public startHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v1}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public startMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->entity:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    const-class v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 75
    new-instance v0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Message;-><init>()V

    .line 76
    .local v0, "m":Lorg/apache/james/mime4j/message/Message;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 77
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startMultipart(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .locals 4
    .param p1, "bd"    # Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 119
    const-class v3, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 121
    iget-object v3, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Entity;

    .line 122
    .local v0, "e":Lorg/apache/james/mime4j/message/Entity;
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getSubType()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "subType":Ljava/lang/String;
    new-instance v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/message/Multipart;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "multiPart":Lorg/apache/james/mime4j/message/Multipart;
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 125
    iget-object v3, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method
