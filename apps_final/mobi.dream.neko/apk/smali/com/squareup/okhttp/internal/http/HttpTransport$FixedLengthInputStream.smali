.class Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;
.super Lcom/squareup/okhttp/internal/http/AbstractHttpInputStream;
.source "HttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedLengthInputStream"
.end annotation


# instance fields
.field private bytesRemaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/squareup/okhttp/internal/http/HttpEngine;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .param p3, "httpEngine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0, p1, p3, p2}, Lcom/squareup/okhttp/internal/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/net/CacheRequest;)V

    .line 366
    iput p4, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    .line 367
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->endOfInput(Z)V

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->checkNotClosed()V

    .line 393
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 400
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    # invokes: Lcom/squareup/okhttp/internal/http/HttpTransport;->discardStream(Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/io/InputStream;)Z
    invoke-static {v0, p0}, Lcom/squareup/okhttp/internal/http/HttpTransport;->access$200(Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->unexpectedEndOfInput()V

    .line 403
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->closed:Z

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 373
    array-length v2, p1

    invoke-static {v2, p2, p3}, Lcom/squareup/okhttp/internal/Util;->checkOffsetAndCount(III)V

    .line 374
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->checkNotClosed()V

    .line 375
    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v2, :cond_1

    move v0, v1

    .line 388
    :cond_0
    :goto_0
    return v0

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->in:Ljava/io/InputStream;

    iget v3, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 379
    .local v0, "read":I
    if-ne v0, v1, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->unexpectedEndOfInput()V

    .line 381
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "unexpected end of stream"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_2
    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    .line 384
    invoke-virtual {p0, p1, p2, v0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->cacheWrite([BII)V

    .line 385
    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v1, :cond_0

    .line 386
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthInputStream;->endOfInput(Z)V

    goto :goto_0
.end method
