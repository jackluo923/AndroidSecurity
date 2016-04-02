.class final Lcom/squareup/okhttp/internal/spdy/SpdyReader;
.super Ljava/lang/Object;
.source "SpdyReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;
    }
.end annotation


# static fields
.field static final DICTIONARY:[B


# instance fields
.field private compressedLimit:I

.field private final in:Ljava/io/DataInputStream;

.field private final nameValueBlockIn:Ljava/io/DataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    const-string v1, "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\u000ccontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\u000ccontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\u0008if-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\u0008if-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\u0008location\u0000\u0000\u0000\u000cmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\u0008HTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0."

    sget-object v2, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->DICTIONARY:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    .line 82
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->newNameValueBlockStream()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->nameValueBlockIn:Ljava/io/DataInputStream;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/spdy/SpdyReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    .prologue
    .line 34
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$020(Lcom/squareup/okhttp/internal/spdy/SpdyReader;I)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->compressedLimit:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/spdy/SpdyReader;)Ljava/io/DataInputStream;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    return-object v0
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private newNameValueBlockStream()Ljava/io/DataInputStream;
    .locals 4

    .prologue
    .line 206
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyReader$1;

    invoke-direct {v1, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$1;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyReader;)V

    .line 224
    .local v1, "throttleStream":Ljava/io/InputStream;
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyReader$2;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$2;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyReader;)V

    .line 236
    .local v0, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v3, v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V
    .locals 6
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    const/16 v2, 0x8

    if-eq p3, v2, :cond_0

    const-string v2, "TYPE_GOAWAY length: %d != 8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int v0, v2, v3

    .line 283
    .local v0, "lastGoodStreamId":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 284
    .local v1, "statusCode":I
    invoke-interface {p1, p2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;->goAway(III)V

    .line 285
    return-void
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V
    .locals 4
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 190
    .local v2, "w1":I
    const v3, 0x7fffffff

    and-int v1, v2, v3

    .line 191
    .local v1, "streamId":I
    add-int/lit8 v3, p3, -0x4

    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, p2, v1, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;->headers(IILjava/util/List;)V

    .line 193
    return-void
.end method

.method private readNameValueBlock(I)Ljava/util/List;
    .locals 9
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->compressedLimit:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->compressedLimit:I

    .line 242
    :try_start_0
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 243
    .local v4, "numberOfPairs":I
    if-gez v4, :cond_0

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numberOfPairs < 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 245
    const-string v6, "numberOfPairs < 0"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v6

    throw v6
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v4    # "numberOfPairs":I
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 247
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .restart local v4    # "numberOfPairs":I
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v6, v4, 0x2

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "values":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "name.length == 0"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v6

    throw v6

    .line 252
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "values.length == 0"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v6

    throw v6

    .line 253
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "values":Ljava/lang/String;
    :cond_3
    iget v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->compressedLimit:I

    if-eqz v6, :cond_4

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compressedLimit > 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->compressedLimit:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    :cond_4
    return-object v1
.end method

.method private readPing(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V
    .locals 5
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    const-string v1, "TYPE_PING length: %d != 4"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 277
    .local v0, "id":I
    invoke-interface {p1, p2, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;->ping(II)V

    .line 278
    return-void
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V
    .locals 6
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/16 v2, 0x8

    if-eq p3, v2, :cond_0

    const-string v2, "TYPE_RST_STREAM length: %d != 8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int v1, v2, v3

    .line 184
    .local v1, "streamId":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 185
    .local v0, "statusCode":I
    invoke-interface {p1, p2, v1, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;->rstStream(III)V

    .line 186
    return-void
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V
    .locals 11
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 289
    .local v3, "numberOfEntries":I
    mul-int/lit8 v7, v3, 0x8

    add-int/lit8 v7, v7, 0x4

    if-eq p3, v7, :cond_0

    .line 290
    const-string v7, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 292
    :cond_0
    new-instance v4, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    .line 293
    .local v4, "settings":Lcom/squareup/okhttp/internal/spdy/Settings;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 294
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 295
    .local v6, "w1":I
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 296
    .local v5, "value":I
    const/high16 v7, -0x1000000

    and-int/2addr v7, v6

    ushr-int/lit8 v2, v7, 0x18

    .line 297
    .local v2, "idFlags":I
    const v7, 0xffffff

    and-int v1, v6, v7

    .line 298
    .local v1, "id":I
    invoke-virtual {v4, v1, v2, v5}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "id":I
    .end local v2    # "idFlags":I
    .end local v5    # "value":I
    .end local v6    # "w1":I
    :cond_1
    invoke-interface {p1, p2, v4}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;->settings(ILcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 301
    return-void
.end method

.method private readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 269
    .local v1, "length":I
    new-array v0, v1, [B

    .line 270
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/Util;->readFully(Ljava/io/InputStream;[B)V

    .line 271
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method private readSynReply(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V
    .locals 4
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 176
    .local v2, "w1":I
    const v3, 0x7fffffff

    and-int v1, v2, v3

    .line 177
    .local v1, "streamId":I
    add-int/lit8 v3, p3, -0x4

    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, p2, v1, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;->synReply(IILjava/util/List;)V

    .line 179
    return-void
.end method

.method private readSynStream(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V
    .locals 10
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0x7fffffff

    .line 163
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 164
    .local v8, "w1":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 165
    .local v9, "w2":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    .line 166
    .local v7, "s3":I
    and-int v2, v8, v1

    .line 167
    .local v2, "streamId":I
    and-int v3, v9, v1

    .line 168
    .local v3, "associatedStreamId":I
    const v0, 0xe000

    and-int/2addr v0, v7

    ushr-int/lit8 v4, v0, 0xd

    .line 169
    .local v4, "priority":I
    and-int/lit16 v5, v7, 0xff

    .line 170
    .local v5, "slot":I
    add-int/lit8 v0, p3, -0xa

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    .local v6, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p1

    move v1, p2

    .line 171
    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;->synStream(IIIIILjava/util/List;)V

    .line 172
    return-void
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V
    .locals 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    .line 196
    const/16 v4, 0x8

    if-eq p3, v4, :cond_0

    const-string v4, "TYPE_WINDOW_UPDATE length: %d != 8"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 197
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 198
    .local v2, "w1":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 199
    .local v3, "w2":I
    and-int v1, v2, v5

    .line 200
    .local v1, "streamId":I
    and-int v0, v3, v5

    .line 201
    .local v0, "deltaWindowSize":I
    invoke-interface {p1, p2, v1, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;->windowUpdate(III)V

    .line 202
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
    .line 308
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 309
    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;)Z
    .locals 13
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 92
    :try_start_0
    iget-object v11, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 96
    .local v7, "w1":I
    iget-object v11, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 98
    .local v8, "w2":I
    const/high16 v11, -0x80000000

    and-int/2addr v11, v7

    if-eqz v11, :cond_0

    move v0, v9

    .line 99
    .local v0, "control":Z
    :goto_0
    const/high16 v11, -0x1000000

    and-int/2addr v11, v8

    ushr-int/lit8 v2, v11, 0x18

    .line 100
    .local v2, "flags":I
    const v11, 0xffffff

    and-int v3, v8, v11

    .line 102
    .local v3, "length":I
    if-eqz v0, :cond_3

    .line 103
    const/high16 v11, 0x7fff0000

    and-int/2addr v11, v7

    ushr-int/lit8 v6, v11, 0x10

    .line 104
    .local v6, "version":I
    const v11, 0xffff

    and-int v5, v7, v11

    .line 106
    .local v5, "type":I
    const/4 v11, 0x3

    if-eq v6, v11, :cond_1

    .line 107
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "version != 3: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 93
    .end local v0    # "control":Z
    .end local v2    # "flags":I
    .end local v3    # "length":I
    .end local v5    # "type":I
    .end local v6    # "version":I
    .end local v7    # "w1":I
    .end local v8    # "w2":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move v9, v10

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return v9

    .restart local v7    # "w1":I
    .restart local v8    # "w2":I
    :cond_0
    move v0, v10

    .line 98
    goto :goto_0

    .line 110
    .restart local v0    # "control":Z
    .restart local v2    # "flags":I
    .restart local v3    # "length":I
    .restart local v5    # "type":I
    .restart local v6    # "version":I
    :cond_1
    packed-switch v5, :pswitch_data_0

    .line 153
    :pswitch_0
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Unexpected frame"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 112
    :pswitch_1
    invoke-direct {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readSynStream(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V

    goto :goto_1

    .line 116
    :pswitch_2
    invoke-direct {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readSynReply(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V

    goto :goto_1

    .line 120
    :pswitch_3
    invoke-direct {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readRstStream(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V

    goto :goto_1

    .line 124
    :pswitch_4
    invoke-direct {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readSettings(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V

    goto :goto_1

    .line 128
    :pswitch_5
    if-eqz v3, :cond_2

    const-string v11, "TYPE_NOOP length: %d != 0"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    invoke-static {v11, v9}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v9

    throw v9

    .line 129
    :cond_2
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;->noop()V

    goto :goto_1

    .line 133
    :pswitch_6
    invoke-direct {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readPing(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V

    goto :goto_1

    .line 137
    :pswitch_7
    invoke-direct {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readGoAway(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V

    goto :goto_1

    .line 141
    :pswitch_8
    invoke-direct {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readHeaders(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V

    goto :goto_1

    .line 145
    :pswitch_9
    invoke-direct {p0, p1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;II)V

    goto :goto_1

    .line 149
    :pswitch_a
    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    int-to-long v10, v3

    invoke-static {v9, v10, v11}, Lcom/squareup/okhttp/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    .line 150
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v10, "TODO"

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 156
    .end local v5    # "type":I
    .end local v6    # "version":I
    :cond_3
    const v10, 0x7fffffff

    and-int v4, v7, v10

    .line 157
    .local v4, "streamId":I
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;

    invoke-interface {p1, v2, v4, v10, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyReader$Handler;->data(IILjava/io/InputStream;I)V

    goto :goto_1

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method
