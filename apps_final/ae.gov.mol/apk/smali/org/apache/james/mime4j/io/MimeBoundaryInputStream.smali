.class public Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;
.source "MimeBoundaryInputStream.java"


# instance fields
.field private atBoundary:Z

.field private final boundary:[B

.field private boundaryLen:I

.field private buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private completed:Z

.field private eof:Z

.field private lastPart:Z

.field private limit:I


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "inbuffer"    # Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;
    .param p2, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2d

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    invoke-virtual {p1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->capacity()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Boundary is too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 58
    iput-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 59
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 60
    iput-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    .line 61
    iput v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 62
    iput-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    .line 63
    iput-boolean v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    .line 66
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    aput-byte v5, v2, v4

    .line 67
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    const/4 v3, 0x1

    aput-byte v5, v2, v3

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 69
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v0, v2

    .line 70
    .local v0, "ch":B
    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 71
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Boundary may not contain CR or LF"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_2
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    add-int/lit8 v3, v1, 0x2

    aput-byte v0, v2, v3

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "ch":B
    :cond_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    .line 76
    return-void
.end method

.method private calculateBoundaryLen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    array-length v1, v1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 229
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v2

    sub-int v0, v1, v2

    .line 230
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 231
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 232
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 233
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 236
    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 237
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 238
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    .line 239
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 242
    :cond_1
    return-void
.end method

.method private endOfStream()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillBuffer()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 191
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-eqz v2, :cond_0

    move v0, v4

    .line 224
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->fillBuffer()I

    move-result v0

    .line 200
    .local v0, "bytesRead":I
    :goto_1
    if-ne v0, v4, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 203
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf([B)I

    move-result v1

    .line 206
    .local v1, "i":I
    :goto_3
    if-lez v1, :cond_3

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_3

    .line 209
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 210
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    iget-object v6, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v2, v5, v1, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf([BII)I

    move-result v1

    goto :goto_3

    .line 198
    .end local v0    # "bytesRead":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bytesRead":I
    goto :goto_1

    .line 200
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 212
    .restart local v1    # "i":I
    :cond_3
    if-eq v1, v4, :cond_4

    .line 213
    iput v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    .line 214
    iput-boolean v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->atBoundary:Z

    .line 215
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->calculateBoundaryLen()V

    goto :goto_0

    .line 217
    :cond_4
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-eqz v2, :cond_5

    .line 218
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v2

    iput v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    goto :goto_0

    .line 220
    :cond_5
    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v2

    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    goto :goto_0
.end method

.method private hasData()Z
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->limit()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private skipBoundary()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2d

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 245
    iget-boolean v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-nez v3, :cond_1

    .line 246
    iput-boolean v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    .line 247
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundaryLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    .line 248
    const/4 v2, 0x1

    .line 250
    .local v2, "checkForLastPart":Z
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->length()I

    move-result v3

    if-le v3, v5, :cond_4

    .line 251
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v0

    .line 252
    .local v0, "ch1":I
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->charAt(I)B

    move-result v1

    .line 254
    .local v1, "ch2":I
    if-eqz v2, :cond_0

    if-ne v0, v8, :cond_0

    if-ne v1, v8, :cond_0

    .line 255
    iput-boolean v5, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    .line 256
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    .line 257
    const/4 v2, 0x0

    .line 258
    goto :goto_0

    .line 261
    :cond_0
    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    if-ne v1, v7, :cond_2

    .line 262
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3, v6}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    .line 280
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    .end local v2    # "checkForLastPart":Z
    :cond_1
    :goto_1
    return-void

    .line 264
    .restart local v0    # "ch1":I
    .restart local v1    # "ch2":I
    .restart local v2    # "checkForLastPart":Z
    :cond_2
    if-ne v0, v7, :cond_3

    .line 265
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    goto :goto_1

    .line 269
    :cond_3
    iget-object v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    goto :goto_0

    .line 273
    .end local v0    # "ch1":I
    .end local v1    # "ch2":I
    :cond_4
    iget-boolean v3, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-nez v3, :cond_1

    .line 276
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method public eof()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastPart()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 100
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-eqz v1, :cond_0

    .line 112
    :goto_0
    return v0

    .line 103
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    .line 108
    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read()I

    move-result v0

    goto :goto_0

    .line 110
    :cond_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

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
    const/4 v1, -0x1

    .line 120
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-eqz v2, :cond_0

    .line 132
    :goto_0
    return v1

    .line 123
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    .line 128
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 131
    :cond_2
    iget v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v2, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    .local v0, "chunk":I
    iget-object v1, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method public readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .locals 10
    .param p1, "dst"    # Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Destination buffer may not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 140
    :cond_0
    iget-boolean v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    if-eqz v7, :cond_2

    move v5, v6

    .line 178
    :cond_1
    :goto_0
    return v5

    .line 143
    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v7

    if-nez v7, :cond_3

    .line 144
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    move v5, v6

    .line 145
    goto :goto_0

    .line 148
    :cond_3
    const/4 v5, 0x0

    .line 149
    .local v5, "total":I
    const/4 v2, 0x0

    .line 150
    .local v2, "found":Z
    const/4 v0, 0x0

    .line 151
    .local v0, "bytesRead":I
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 152
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v7

    if-nez v7, :cond_6

    .line 153
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->fillBuffer()I

    move-result v0

    .line 154
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->hasData()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->endOfStream()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 155
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->skipBoundary()V

    .line 156
    const/4 v0, -0x1

    .line 175
    :cond_5
    if-nez v5, :cond_1

    if-ne v0, v6, :cond_1

    move v5, v6

    .line 176
    goto :goto_0

    .line 160
    :cond_6
    iget v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->limit:I

    iget-object v8, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v8

    sub-int v4, v7, v8

    .line 161
    .local v4, "len":I
    iget-object v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/16 v8, 0xa

    iget-object v9, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v9

    invoke-virtual {v7, v8, v9, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->indexOf(BII)I

    move-result v3

    .line 163
    .local v3, "i":I
    if-eq v3, v6, :cond_7

    .line 164
    const/4 v2, 0x1

    .line 165
    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v8

    sub-int v1, v7, v8

    .line 169
    .local v1, "chunk":I
    :goto_2
    if-lez v1, :cond_4

    .line 170
    iget-object v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->buf()[B

    move-result-object v7

    iget-object v8, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->pos()I

    move-result v8

    invoke-virtual {p1, v7, v8, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 171
    iget-object v7, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v7, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->skip(I)I

    .line 172
    add-int/2addr v5, v1

    goto :goto_1

    .line 167
    .end local v1    # "chunk":I
    :cond_7
    move v1, v4

    .restart local v1    # "chunk":I
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "MimeBoundaryInputStream, boundary "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v2, "buffer":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->boundary:[B

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 294
    .local v1, "b":B
    int-to-char v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
