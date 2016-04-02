.class public Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private closed:Z

.field pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private state:B

.field private stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    new-instance v0, Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    .line 36
    new-instance v0, Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    .line 37
    iput-byte v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 38
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    .line 41
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    .line 42
    return-void
.end method

.method private asciiCharToNumericValue(B)B
    .locals 3
    .param p1, "c"    # B

    .prologue
    .line 214
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 215
    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    .line 219
    :goto_0
    return v0

    .line 216
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    .line 217
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 218
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    .line 219
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuffer()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    const/16 v9, 0xd

    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 119
    const/4 v3, 0x0

    .line 120
    .local v3, "msdChar":B
    :goto_0
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_0

    .line 121
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_1

    .line 122
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->populatePushbackQueue()V

    .line 123
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v4

    if-nez v4, :cond_1

    .line 206
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/codec/ByteQueue;->dequeue()B

    move-result v0

    .line 129
    .local v0, "b":B
    iget-byte v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    packed-switch v4, :pswitch_data_0

    .line 200
    sget-object v4, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 201
    iput-byte v7, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 202
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 131
    :pswitch_0
    if-eq v0, v8, :cond_2

    .line 132
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 135
    :cond_2
    const/4 v4, 0x1

    iput-byte v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    goto :goto_0

    .line 139
    :pswitch_1
    if-ne v0, v9, :cond_3

    .line 140
    const/4 v4, 0x2

    iput-byte v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    goto :goto_0

    .line 142
    :cond_3
    if-lt v0, v10, :cond_4

    if-le v0, v11, :cond_6

    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_5

    const/16 v4, 0x46

    if-le v0, v4, :cond_6

    :cond_5
    const/16 v4, 0x61

    if-lt v0, v4, :cond_7

    const/16 v4, 0x66

    if-gt v0, v4, :cond_7

    .line 143
    :cond_6
    const/4 v4, 0x3

    iput-byte v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 144
    move v3, v0

    .line 145
    goto :goto_0

    .line 146
    :cond_7
    if-ne v0, v8, :cond_9

    .line 151
    sget-object v4, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 152
    sget-object v4, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Malformed MIME; got =="

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 154
    :cond_8
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 157
    :cond_9
    sget-object v4, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 158
    sget-object v4, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 161
    :cond_a
    iput-byte v7, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 162
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 163
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 167
    :pswitch_2
    const/16 v4, 0xa

    if-ne v0, v4, :cond_b

    .line 168
    iput-byte v7, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    .line 171
    :cond_b
    sget-object v4, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 172
    sget-object v4, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected 10, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 175
    :cond_c
    iput-byte v7, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 176
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 177
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v9}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 178
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 182
    :pswitch_3
    if-lt v0, v10, :cond_d

    if-le v0, v11, :cond_f

    :cond_d
    const/16 v4, 0x41

    if-lt v0, v4, :cond_e

    const/16 v4, 0x46

    if-le v0, v4, :cond_f

    :cond_e
    const/16 v4, 0x61

    if-lt v0, v4, :cond_10

    const/16 v4, 0x66

    if-gt v0, v4, :cond_10

    .line 183
    :cond_f
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v2

    .line 184
    .local v2, "msd":B
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v1

    .line 185
    .local v1, "low":B
    iput-byte v7, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 186
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    shl-int/lit8 v5, v2, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 189
    .end local v1    # "low":B
    .end local v2    # "msd":B
    :cond_10
    sget-object v4, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 190
    sget-object v4, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed MIME; expected [0-9A-Z], got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 193
    :cond_11
    iput-byte v7, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 194
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 195
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 196
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populatePushbackQueue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    .local v0, "i":I
    :sswitch_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 88
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 89
    .restart local v0    # "i":I
    sparse-switch v0, :sswitch_data_0

    .line 104
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 92
    :sswitch_1
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->clear()V

    goto :goto_0

    .line 100
    :sswitch_2
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->clear()V

    .line 101
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    .line 53
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/io/IOException;

    const-string v2, "QuotedPrintableInputStream has been closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->fillBuffer()V

    .line 61
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v1

    if-nez v1, :cond_2

    .line 62
    const/4 v0, -0x1

    .line 68
    :cond_1
    :goto_0
    return v0

    .line 64
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->dequeue()B

    move-result v0

    .line 65
    .local v0, "val":B
    if-gez v0, :cond_1

    .line 68
    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method
