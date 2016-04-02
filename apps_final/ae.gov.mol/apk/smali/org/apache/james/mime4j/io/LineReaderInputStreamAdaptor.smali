.class public Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;
.source "LineReaderInputStreamAdaptor.java"


# instance fields
.field private final bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

.field private eof:Z

.field private final maxLineLen:I

.field private used:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 54
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "maxLineLen"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    .line 38
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    .line 44
    instance-of v0, p1, Lorg/apache/james/mime4j/io/LineReaderInputStream;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lorg/apache/james/mime4j/io/LineReaderInputStream;

    .end local p1    # "is":Ljava/io/InputStream;
    iput-object p1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    .line 49
    :goto_0
    iput p2, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->maxLineLen:I

    .line 50
    return-void

    .line 47
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    goto :goto_0
.end method

.method private doReadLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .locals 5
    .param p1, "dst"    # Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "total":I
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "ch":I
    if-eq v0, v2, :cond_2

    .line 90
    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    iget v3, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->maxLineLen:I

    if-lez v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v3

    iget v4, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->maxLineLen:I

    if-lt v3, v4, :cond_1

    .line 93
    new-instance v2, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string v3, "Maximum line length limit exceeded"

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 99
    :cond_2
    if-nez v1, :cond_3

    if-ne v0, v2, :cond_3

    move v1, v2

    .line 102
    .end local v1    # "total":I
    :cond_3
    return v1
.end method


# virtual methods
.method public eof()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    return v0
.end method

.method public isUsed()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 60
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    .line 61
    iput-boolean v2, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    .line 62
    return v0

    .line 60
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 67
    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 68
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    .line 69
    iput-boolean v2, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    .line 70
    return v0

    .line 68
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .locals 3
    .param p1, "dst"    # Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v0

    .line 81
    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    .line 82
    iput-boolean v2, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    .line 83
    return v0

    .line 79
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->doReadLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v0

    .restart local v0    # "i":I
    goto :goto_0

    .line 81
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LineReaderInputStreamAdaptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
