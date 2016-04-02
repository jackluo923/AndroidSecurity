.class public Lorg/apache/james/mime4j/parser/MimeStreamParser;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# instance fields
.field private contentDecoding:Z

.field private handler:Lorg/apache/james/mime4j/parser/ContentHandler;

.field private final mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->clone()Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    move-result-object v0

    .line 57
    .local v0, "localConfig":Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    :goto_0
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    .line 59
    return-void

    .line 55
    .end local v0    # "localConfig":Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    .restart local v0    # "localConfig":Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    goto :goto_0
.end method


# virtual methods
.method public isContentDecoding()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    return v0
.end method

.method public isRaw()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->isRaw()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3, p1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->parse(Ljava/io/InputStream;)V

    .line 91
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getState()I

    move-result v2

    .line 92
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 142
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :pswitch_0
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v1

    .line 96
    .local v1, "desc":Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    iget-boolean v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getDecodedInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 101
    .local v0, "bodyContent":Ljava/io/InputStream;
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3, v1, v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    .line 144
    .end local v0    # "bodyContent":Ljava/io/InputStream;
    .end local v1    # "desc":Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    :goto_2
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->next()I

    goto :goto_0

    .line 99
    .restart local v1    # "desc":Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "bodyContent":Ljava/io/InputStream;
    goto :goto_1

    .line 104
    .end local v0    # "bodyContent":Ljava/io/InputStream;
    .end local v1    # "desc":Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    :pswitch_1
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->endBodyPart()V

    goto :goto_2

    .line 107
    :pswitch_2
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->endHeader()V

    goto :goto_2

    .line 110
    :pswitch_3
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->endMessage()V

    goto :goto_2

    .line 113
    :pswitch_4
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->endMultipart()V

    goto :goto_2

    .line 118
    :pswitch_5
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/parser/ContentHandler;->epilogue(Ljava/io/InputStream;)V

    goto :goto_2

    .line 121
    :pswitch_6
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getField()Lorg/apache/james/mime4j/parser/Field;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/parser/ContentHandler;->field(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_2

    .line 124
    :pswitch_7
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/parser/ContentHandler;->preamble(Ljava/io/InputStream;)V

    goto :goto_2

    .line 127
    :pswitch_8
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/parser/ContentHandler;->raw(Ljava/io/InputStream;)V

    goto :goto_2

    .line 130
    :pswitch_9
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->startBodyPart()V

    goto :goto_2

    .line 133
    :pswitch_a
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->startHeader()V

    goto :goto_2

    .line 136
    :pswitch_b
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->startMessage()V

    goto :goto_2

    .line 139
    :pswitch_c
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/parser/ContentHandler;->startMultipart(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    goto :goto_2

    .line 146
    :pswitch_d
    return-void

    .line 92
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_d
        :pswitch_b
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_6
        :pswitch_2
        :pswitch_c
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setContentDecoding(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    .line 79
    return-void
.end method

.method public setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V
    .locals 0
    .param p1, "h"    # Lorg/apache/james/mime4j/parser/ContentHandler;

    .prologue
    .line 196
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 197
    return-void
.end method

.method public setRaw(Z)V
    .locals 2
    .param p1, "raw"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->setRecursionMode(I)V

    .line 171
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->stop()V

    .line 187
    return-void
.end method
