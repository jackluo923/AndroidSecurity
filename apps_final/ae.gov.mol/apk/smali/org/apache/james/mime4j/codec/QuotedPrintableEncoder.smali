.class final Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;
.super Ljava/lang/Object;
.source "QuotedPrintableEncoder.java"


# static fields
.field private static final CR:B = 0xdt

.field private static final EQUALS:B = 0x3dt

.field private static final HEX_DIGITS:[B

.field private static final LF:B = 0xat

.field private static final QUOTED_PRINTABLE_LAST_PLAIN:B = 0x7et

.field private static final QUOTED_PRINTABLE_MAX_LINE_LENGTH:I = 0x4c

.field private static final QUOTED_PRINTABLE_OCTETS_PER_ESCAPE:I = 0x3

.field private static final SPACE:B = 0x20t

.field private static final TAB:B = 0x9t


# instance fields
.field private final binary:Z

.field private final inBuffer:[B

.field private nextSoftBreak:I

.field private out:Ljava/io/OutputStream;

.field private final outBuffer:[B

.field private outputIndex:I

.field private pendingCR:Z

.field private pendingSpace:Z

.field private pendingTab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "bufferSize"    # I
    .param p2, "binary"    # Z

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->inBuffer:[B

    .line 51
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    .line 52
    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    .line 53
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    .line 55
    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    .line 56
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    .line 57
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    .line 58
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    .line 59
    return-void
.end method

.method private clearPending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    .line 102
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    .line 103
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    .line 104
    return-void
.end method

.method private encode(B)V
    .locals 4
    .param p1, "next"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    const/16 v2, 0x20

    const/4 v1, 0x1

    .line 107
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 108
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    .line 157
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    if-eqz v0, :cond_3

    .line 115
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    if-eqz v0, :cond_2

    .line 116
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    .line 120
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->lineBreak()V

    .line 121
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->clearPending()V

    goto :goto_0

    .line 117
    :cond_2
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_1

    .line 123
    :cond_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    .line 124
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0

    .line 127
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    .line 128
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_5

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    .line 131
    :cond_5
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    goto :goto_0

    .line 134
    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    .line 135
    if-ne p1, v2, :cond_8

    .line 136
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_7

    .line 137
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    .line 139
    :cond_7
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    goto :goto_0

    .line 141
    :cond_8
    if-ne p1, v3, :cond_a

    .line 142
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_9

    .line 143
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    .line 145
    :cond_9
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    goto :goto_0

    .line 147
    :cond_a
    if-ge p1, v2, :cond_b

    .line 148
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    .line 149
    :cond_b
    const/16 v0, 0x7e

    if-le p1, v0, :cond_c

    .line 150
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    .line 151
    :cond_c
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_d

    .line 152
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    .line 154
    :cond_d
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0
.end method

.method private escape(B)V
    .locals 3
    .param p1, "next"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 168
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->softBreak()V

    .line 171
    :cond_0
    and-int/lit16 v0, p1, 0xff

    .line 173
    .local v0, "nextUnsigned":I
    const/16 v1, 0x3d

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 174
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 175
    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 176
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 177
    sget-object v1, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    rem-int/lit8 v2, v0, 0x10

    aget-byte v1, v1, v2

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 178
    return-void
.end method

.method private lineBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 194
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 195
    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 196
    return-void
.end method

.method private plain(B)V
    .locals 2
    .param p1, "next"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->softBreak()V

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 164
    return-void
.end method

.method private softBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 189
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->lineBreak()V

    .line 190
    return-void
.end method

.method private write(B)V
    .locals 3
    .param p1, "next"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    aput-byte p1, v0, v1

    .line 182
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    .line 185
    :cond_0
    return-void
.end method

.method private writePending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    if-eqz v0, :cond_1

    .line 91
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    .line 97
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->clearPending()V

    .line 98
    return-void

    .line 92
    :cond_1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    if-eqz v0, :cond_2

    .line 93
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0

    .line 94
    :cond_2
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    if-eqz v0, :cond_0

    .line 95
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0
.end method


# virtual methods
.method completeEncoding()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    .line 77
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    .line 78
    return-void
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->initEncoding(Ljava/io/OutputStream;)V

    .line 83
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->inBuffer:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "inputLength":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->inBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encodeChunk([BII)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->completeEncoding()V

    .line 87
    return-void
.end method

.method encodeChunk([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move v0, p2

    .local v0, "inputIndex":I
    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_0

    .line 71
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encode(B)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method flushOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 199
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 204
    :goto_0
    iput v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    .line 205
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method initEncoding(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    .line 63
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    .line 64
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    .line 65
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    .line 66
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 67
    return-void
.end method
