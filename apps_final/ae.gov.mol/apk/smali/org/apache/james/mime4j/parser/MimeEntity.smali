.class public Lorg/apache/james/mime4j/parser/MimeEntity;
.super Lorg/apache/james/mime4j/parser/AbstractEntity;
.source "MimeEntity.java"


# static fields
.field private static final T_IN_BODYPART:I = -0x2

.field private static final T_IN_MESSAGE:I = -0x3


# instance fields
.field private dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

.field private final inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private final lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

.field private mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

.field private recursionMode:I

.field private skipHeader:Z

.field private tmpbuf:[B


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;II)V
    .locals 7
    .param p1, "lineSource"    # Lorg/apache/james/mime4j/io/LineNumberSource;
    .param p2, "inbuffer"    # Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;
    .param p3, "parent"    # Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .param p4, "startState"    # I
    .param p5, "endState"    # I

    .prologue
    .line 82
    new-instance v6, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v6}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 2
    .param p1, "lineSource"    # Lorg/apache/james/mime4j/io/LineNumberSource;
    .param p2, "inbuffer"    # Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;
    .param p3, "parent"    # Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .param p4, "startState"    # I
    .param p5, "endState"    # I
    .param p6, "config"    # Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    .prologue
    .line 67
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/apache/james/mime4j/parser/AbstractEntity;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 68
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    .line 69
    iput-object p2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 70
    new-instance v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {p6}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader:Z

    .line 74
    return-void
.end method

.method private advanceToBoundary()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof()Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->tmpbuf:[B

    if-nez v1, :cond_0

    .line 238
    const/16 v1, 0x800

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->tmpbuf:[B

    .line 240
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->getLimitedContentStream()Ljava/io/InputStream;

    move-result-object v0

    .line 241
    .local v0, "instream":Ljava/io/InputStream;
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->tmpbuf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 244
    .end local v0    # "instream":Ljava/io/InputStream;
    :cond_2
    return-void
.end method

.method private clearMimeStream()V
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 230
    new-instance v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 233
    return-void
.end method

.method private createMimeStream()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v3}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "boundary":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    .line 204
    .local v1, "bufferSize":I
    const/16 v3, 0x1000

    if-ge v1, v3, :cond_0

    .line 205
    const/16 v1, 0x1000

    .line 208
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    if-eqz v3, :cond_1

    .line 209
    new-instance v3, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    new-instance v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v6

    invoke-direct {v4, v5, v1, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    invoke-direct {v3, v4, v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;-><init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    new-instance v3, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 226
    return-void

    .line 216
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->ensureCapacity(I)V

    .line 217
    new-instance v3, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-direct {v3, v4, v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;-><init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/apache/james/mime4j/MimeException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getLimitedContentStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 300
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxContentLen()J

    move-result-wide v0

    .line 301
    .local v0, "maxContentLimit":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 302
    new-instance v2, Lorg/apache/james/mime4j/io/LimitedInputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/james/mime4j/io/LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 304
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    goto :goto_0
.end method

.method private nextMessage()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .locals 9

    .prologue
    .line 247
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, "transferEncoding":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "base64 encoded message/rfc822 detected"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 251
    new-instance v7, Lorg/apache/james/mime4j/codec/Base64InputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-direct {v7, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 259
    .local v7, "instream":Ljava/io/InputStream;
    :goto_0
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 260
    new-instance v0, Lorg/apache/james/mime4j/parser/RawEntity;

    invoke-direct {v0, v7}, Lorg/apache/james/mime4j/parser/RawEntity;-><init>(Ljava/io/InputStream;)V

    .line 274
    :goto_1
    return-object v0

    .line 252
    .end local v7    # "instream":Ljava/io/InputStream;
    :cond_0
    invoke-static {v8}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "quoted-printable encoded message/rfc822 detected"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 254
    new-instance v7, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-direct {v7, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_0

    .line 256
    .end local v7    # "instream":Ljava/io/InputStream;
    :cond_1
    iget-object v7, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_0

    .line 263
    :cond_2
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    new-instance v2, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/16 v3, 0x1000

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v4

    invoke-direct {v2, v7, v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 273
    .local v0, "message":Lorg/apache/james/mime4j/parser/MimeEntity;
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntity;->setRecursionMode(I)V

    goto :goto_1
.end method

.method private nextMimeEntity()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .locals 8

    .prologue
    .line 279
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 280
    new-instance v7, Lorg/apache/james/mime4j/parser/RawEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-direct {v7, v1}, Lorg/apache/james/mime4j/parser/RawEntity;-><init>(Ljava/io/InputStream;)V

    .line 295
    :goto_0
    return-object v7

    .line 283
    :cond_0
    new-instance v2, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    const/16 v3, 0x1000

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 287
    .local v2, "stream":Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    const/16 v4, 0xa

    const/16 v5, 0xb

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 294
    .local v0, "mimeentity":Lorg/apache/james/mime4j/parser/MimeEntity;
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntity;->setRecursionMode(I)V

    move-object v7, v0

    .line 295
    goto :goto_0
.end method


# virtual methods
.method public advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc

    const/4 v1, 0x5

    const/4 v5, -0x2

    const/4 v4, 0x7

    const/4 v3, 0x3

    .line 117
    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    packed-switch v2, :pswitch_data_0

    .line 192
    :pswitch_0
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->endState:I

    if-ne v1, v2, :cond_9

    .line 193
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    .line 198
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 119
    :pswitch_1
    iget-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader:Z

    if-eqz v2, :cond_0

    .line 120
    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_0

    .line 122
    :cond_0
    iput v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_0

    .line 126
    :pswitch_2
    iput v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_0

    .line 130
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->parseField()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    :cond_1
    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "mimeType":Ljava/lang/String;
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    if-ne v1, v3, :cond_2

    .line 135
    iput v6, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    const/4 v1, 0x6

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    .line 138
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    goto :goto_0

    .line 139
    :cond_3
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isMessage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    const/4 v1, -0x3

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    .line 142
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->nextMessage()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v1

    goto :goto_1

    .line 144
    :cond_4
    iput v6, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_0

    .line 148
    .end local v0    # "mimeType":Ljava/lang/String;
    :pswitch_5
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->advanceToBoundary()V

    .line 150
    iput v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_0

    .line 152
    :cond_5
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->createMimeStream()V

    .line 153
    const/16 v1, 0x8

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_0

    .line 157
    :pswitch_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->advanceToBoundary()V

    .line 158
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    .line 160
    iput v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_0

    .line 162
    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    .line 163
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->createMimeStream()V

    .line 164
    iput v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    .line 165
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->nextMimeEntity()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v1

    goto :goto_1

    .line 169
    :pswitch_7
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->advanceToBoundary()V

    .line 170
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v1

    if-nez v1, :cond_8

    .line 171
    sget-object v1, Lorg/apache/james/mime4j/parser/Event;->MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/parser/MimeEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    .line 180
    :cond_7
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    .line 181
    const/16 v1, 0x9

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_0

    .line 173
    :cond_8
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v1

    if-nez v1, :cond_7

    .line 174
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    .line 175
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->createMimeStream()V

    .line 176
    iput v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    .line 177
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->nextMimeEntity()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v1

    goto/16 :goto_1

    .line 184
    :pswitch_8
    iput v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_0

    .line 189
    :pswitch_9
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->endState:I

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_0

    .line 196
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-static {v3}, Lorg/apache/james/mime4j/parser/MimeEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 309
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    packed-switch v0, :pswitch_data_0

    .line 316
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/MimeEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->getLimitedContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-object v0
.end method

.method protected getLineNumber()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, -0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    invoke-interface {v0}, Lorg/apache/james/mime4j/io/LineNumberSource;->getLineNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getRecursionMode()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    return v0
.end method

.method public setRecursionMode(I)V
    .locals 0
    .param p1, "recursionMode"    # I

    .prologue
    .line 91
    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    .line 92
    return-void
.end method

.method public skipHeader(Ljava/lang/String;)V
    .locals 4
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 95
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    if-eqz v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-static {v3}, Lorg/apache/james/mime4j/parser/MimeEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader:Z

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 100
    .local v0, "raw":Lorg/apache/james/mime4j/util/ByteSequence;
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    new-instance v2, Lorg/apache/james/mime4j/parser/RawField;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lorg/apache/james/mime4j/parser/RawField;-><init>(Lorg/apache/james/mime4j/util/ByteSequence;I)V

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 101
    return-void
.end method
