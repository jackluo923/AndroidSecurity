.class public final Lcom/squareup/okhttp/internal/http/HttpTransport;
.super Ljava/lang/Object;
.source "HttpTransport.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/HttpTransport$1;,
        Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedInputStream;,
        Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;,
        Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;,
        Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHUNK_LENGTH:I = 0x400

.field private static final DISCARD_STREAM_TIMEOUT_MILLIS:I = 0x64


# instance fields
.field private final httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field private requestOut:Ljava/io/OutputStream;

.field private final socketIn:Ljava/io/InputStream;

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "httpEngine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 56
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->socketOut:Ljava/io/OutputStream;

    .line 57
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    .line 58
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    .line 59
    return-void
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/io/InputStream;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpTransport;->discardStream(Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/http/HttpTransport;)Lcom/squareup/okhttp/internal/http/HttpEngine;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpTransport;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/http/HttpTransport;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpTransport;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    return-object v0
.end method

.method private static discardStream(Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/io/InputStream;)Z
    .locals 6
    .param p0, "httpEngine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .param p1, "responseBodyIn"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 175
    .local v0, "connection":Lcom/squareup/okhttp/Connection;
    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v4

    .line 176
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    .line 177
    .local v2, "socket":Ljava/net/Socket;
    if-eqz v2, :cond_0

    .line 179
    :try_start_0
    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v3

    .line 180
    .local v3, "socketTimeout":I
    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    invoke-static {p1}, Lcom/squareup/okhttp/internal/Util;->skipAll(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    const/4 v5, 0x1

    .line 185
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v4, v5

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    .end local v3    # "socketTimeout":I
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public createRequestBody()Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 62
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->isChunked()Z

    move-result v1

    .line 63
    .local v1, "chunked":Z
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getChunkLength()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Connection;->getHttpMinorVersion()I

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setChunked()V

    .line 67
    const/4 v1, 0x1

    .line 71
    :cond_0
    if-eqz v1, :cond_2

    .line 72
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getChunkLength()I

    move-result v0

    .line 73
    .local v0, "chunkLength":I
    if-ne v0, v5, :cond_1

    .line 74
    const/16 v0, 0x400

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport;->writeRequestHeaders()V

    .line 77
    new-instance v4, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v4, v5, v0, v6}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;ILcom/squareup/okhttp/internal/http/HttpTransport$1;)V

    .line 98
    .end local v0    # "chunkLength":I
    :goto_0
    return-object v4

    .line 81
    :cond_2
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v3

    .line 82
    .local v3, "fixedContentLength":I
    if-eq v3, v5, :cond_3

    .line 83
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v4, v3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setContentLength(I)V

    .line 84
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport;->writeRequestHeaders()V

    .line 85
    new-instance v4, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v4, v5, v3, v6}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;ILcom/squareup/okhttp/internal/http/HttpTransport$1;)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getContentLength()I

    move-result v2

    .line 90
    .local v2, "contentLength":I
    if-eq v2, v5, :cond_4

    .line 91
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport;->writeRequestHeaders()V

    .line 92
    new-instance v4, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    invoke-direct {v4, v2}, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;-><init>(I)V

    goto :goto_0

    .line 98
    :cond_4
    new-instance v4, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;-><init>()V

    goto :goto_0
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 103
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->socketOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    .line 104
    return-void
.end method

.method public getTransferStream(Ljava/net/CacheRequest;)Ljava/io/InputStream;
    .locals 4
    .param p1, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/HttpEngine;I)V

    .line 209
    :goto_0
    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedInputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    invoke-direct {v0, v1, p1, p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/HttpTransport;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 202
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v3, v3, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/HttpEngine;I)V

    goto :goto_0

    .line 209
    :cond_2
    new-instance v0, Lcom/squareup/okhttp/internal/http/UnknownLengthHttpInputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-direct {v0, v1, p1, v2}, Lcom/squareup/okhttp/internal/http/UnknownLengthHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/HttpEngine;)V

    goto :goto_0
.end method

.method public makeReusable(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "streamCancelled"    # Z
    .param p2, "requestBodyOut"    # Ljava/io/OutputStream;
    .param p3, "responseBodyIn"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 138
    if-eqz p1, :cond_1

    .line 165
    .end local p2    # "requestBodyOut":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return v0

    .line 143
    .restart local p2    # "requestBodyOut":Ljava/io/OutputStream;
    :cond_1
    if-eqz p2, :cond_2

    check-cast p2, Lcom/squareup/okhttp/internal/AbstractOutputStream;

    .end local p2    # "requestBodyOut":Ljava/io/OutputStream;
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/AbstractOutputStream;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasConnectionClose()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->hasConnectionClose()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    :cond_3
    instance-of v1, p3, Lcom/squareup/okhttp/internal/http/UnknownLengthHttpInputStream;

    if-nez v1, :cond_0

    .line 161
    if-eqz p3, :cond_4

    .line 162
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/http/HttpTransport;->discardStream(Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    goto :goto_0

    .line 165
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->socketIn:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->fromBytes(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v0

    .line 131
    .local v0, "headers":Lcom/squareup/okhttp/internal/http/RawHeaders;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getHttpMinorVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Connection;->setHttpMinorVersion(I)V

    .line 132
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    .line 133
    new-instance v1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    return-object v1
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/squareup/okhttp/internal/http/RetryableOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;->writeToSocket(Ljava/io/OutputStream;)V

    .line 108
    return-void
.end method

.method public writeRequestHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 124
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v2, v2, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    .line 125
    .local v1, "headersToSend":Lcom/squareup/okhttp/internal/http/RawHeaders;
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toBytes()[B

    move-result-object v0

    .line 126
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 127
    return-void
.end method
