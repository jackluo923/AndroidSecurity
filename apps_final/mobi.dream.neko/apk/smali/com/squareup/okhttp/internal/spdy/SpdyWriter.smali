.class final Lcom/squareup/okhttp/internal/spdy/SpdyWriter;
.super Ljava/lang/Object;
.source "SpdyWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

.field private final nameValueBlockOut:Ljava/io/DataOutputStream;

.field final out:Ljava/io/DataOutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    .line 38
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 39
    .local v0, "deflater":Ljava/util/zip/Deflater;
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 40
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    .line 41
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/squareup/okhttp/internal/Platform;->newDeflaterOutputStream(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockOut:Ljava/io/DataOutputStream;

    .line 43
    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 109
    .local v1, "numberOfPairs":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockOut:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 112
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockOut:Ljava/io/DataOutputStream;

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 114
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockOut:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 115
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockOut:Ljava/io/DataOutputStream;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 175
    return-void
.end method

.method public declared-synchronized data(II[B)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "streamId"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    array-length v0, p3

    .line 100
    .local v0, "length":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v2, 0x7fffffff

    and-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 101
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int/lit16 v2, p1, 0xff

    shl-int/lit8 v2, v2, 0x18

    const v3, 0xffffff

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 102
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 103
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 99
    .end local v0    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized goAway(III)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "lastGoodStreamId"    # I
    .param p3, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    monitor-enter p0

    const/4 v1, 0x7

    .line 154
    .local v1, "type":I
    const/16 v0, 0x8

    .line 155
    .local v0, "length":I
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v3, -0x7ffcfff9

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 156
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int/lit16 v3, p1, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 157
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 158
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 159
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized headers(IILjava/util/List;)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    .local p3, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 77
    const/16 v1, 0x8

    .line 78
    .local v1, "type":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/lit8 v0, v2, 0x4

    .line 80
    .local v0, "length":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v3, -0x7ffcfff8

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 81
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int/lit16 v3, p1, 0xff

    shl-int/lit8 v3, v3, 0x18

    const v4, 0xffffff

    and-int/2addr v4, v0

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 82
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v3, 0x7fffffff

    and-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 84
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 76
    .end local v0    # "length":I
    .end local v1    # "type":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized noop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    monitor-enter p0

    const/4 v2, 0x5

    .line 135
    .local v2, "type":I
    const/4 v1, 0x0

    .line 136
    .local v1, "length":I
    const/4 v0, 0x0

    .line 137
    .local v0, "flags":I
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v4, -0x7ffcfffb

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 138
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 139
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized ping(II)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    const/4 v1, 0x6

    .line 144
    .local v1, "type":I
    const/4 v0, 0x4

    .line 145
    .local v0, "length":I
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v3, -0x7ffcfffa

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 146
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int/lit16 v3, p1, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 147
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 148
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized rstStream(II)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    monitor-enter p0

    const/4 v0, 0x0

    .line 89
    .local v0, "flags":I
    const/4 v2, 0x3

    .line 90
    .local v2, "type":I
    const/16 v1, 0x8

    .line 91
    .local v1, "length":I
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v4, -0x7ffcfffd

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized settings(ILcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 9
    .param p1, "flags"    # I
    .param p2, "settings"    # Lcom/squareup/okhttp/internal/spdy/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0xffffff

    .line 118
    monitor-enter p0

    const/4 v4, 0x4

    .line 119
    .local v4, "type":I
    :try_start_0
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/spdy/Settings;->size()I

    move-result v3

    .line 120
    .local v3, "size":I
    mul-int/lit8 v5, v3, 0x8

    add-int/lit8 v1, v5, 0x4

    .line 121
    .local v1, "length":I
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v6, -0x7ffcfffc

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 122
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int/lit16 v6, p1, 0xff

    shl-int/lit8 v6, v6, 0x18

    and-int v7, v1, v8

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 123
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0x9

    if-gt v0, v5, :cond_1

    .line 125
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/internal/spdy/Settings;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/internal/spdy/Settings;->flags(I)I

    move-result v2

    .line 127
    .local v2, "settingsFlags":I
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x18

    and-int v7, v0, v8

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 128
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/internal/spdy/Settings;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 118
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "settingsFlags":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 130
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v3    # "size":I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synReply(IILjava/util/List;)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 64
    const/4 v1, 0x2

    .line 65
    .local v1, "type":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/lit8 v0, v2, 0x4

    .line 67
    .local v0, "length":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v3, -0x7ffcfffe

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 68
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int/lit16 v3, p1, 0xff

    shl-int/lit8 v3, v3, 0x18

    const v4, 0xffffff

    and-int/2addr v4, v0

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 69
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v3, 0x7fffffff

    and-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 71
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 63
    .end local v0    # "length":I
    .end local v1    # "type":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized synStream(IIIIILjava/util/List;)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .param p4, "priority"    # I
    .param p5, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p6, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v6, 0x7fffffff

    .line 47
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p6}, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 48
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/lit8 v0, v3, 0xa

    .line 49
    .local v0, "length":I
    const/4 v1, 0x1

    .line 51
    .local v1, "type":I
    const/4 v2, 0x0

    .line 52
    .local v2, "unused":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v4, -0x7ffcffff

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 53
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int/lit16 v4, p1, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 54
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int v4, p2, v6

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 55
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int v4, p3, v6

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 56
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    and-int/lit8 v4, p4, 0x7

    shl-int/lit8 v4, v4, 0xd

    or-int/lit8 v4, v4, 0x0

    and-int/lit16 v5, p5, 0xff

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 57
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 58
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 47
    .end local v0    # "length":I
    .end local v1    # "type":I
    .end local v2    # "unused":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized windowUpdate(II)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "deltaWindowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    monitor-enter p0

    const/16 v2, 0x9

    .line 164
    .local v2, "type":I
    const/4 v0, 0x0

    .line 165
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 166
    .local v1, "length":I
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const v4, -0x7ffcfff7

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 167
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 168
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 169
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 170
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
