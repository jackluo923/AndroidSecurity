.class public Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 67
    iput-boolean p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    .line 68
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 7
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Exception parameter may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_0
    if-nez p3, :cond_1

    .line 88
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HTTP context may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_1
    iget v6, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    if-le p2, v6, :cond_3

    .line 133
    :cond_2
    :goto_0
    return v4

    .line 94
    :cond_3
    instance-of v6, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v6, :cond_4

    move v4, v5

    .line 96
    goto :goto_0

    .line 98
    :cond_4
    instance-of v6, p1, Ljava/io/InterruptedIOException;

    if-nez v6, :cond_2

    .line 102
    instance-of v6, p1, Ljava/net/UnknownHostException;

    if-nez v6, :cond_2

    .line 106
    instance-of v6, p1, Ljava/net/ConnectException;

    if-nez v6, :cond_2

    .line 110
    instance-of v6, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v6, :cond_2

    .line 115
    const-string v6, "http.request"

    invoke-interface {p3, v6}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpRequest;

    .line 117
    .local v2, "request":Lorg/apache/http/HttpRequest;
    instance-of v6, v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v6, :cond_5

    move v1, v5

    .line 118
    .local v1, "idempotent":Z
    :goto_1
    if-eqz v1, :cond_6

    move v4, v5

    .line 120
    goto :goto_0

    .end local v1    # "idempotent":Z
    :cond_5
    move v1, v4

    .line 117
    goto :goto_1

    .line 123
    .restart local v1    # "idempotent":Z
    :cond_6
    const-string v6, "http.request_sent"

    invoke-interface {p3, v6}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 125
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    move v3, v5

    .line 127
    .local v3, "sent":Z
    :goto_2
    if-eqz v3, :cond_7

    iget-boolean v6, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v6, :cond_2

    :cond_7
    move v4, v5

    .line 130
    goto :goto_0

    .end local v3    # "sent":Z
    :cond_8
    move v3, v4

    .line 125
    goto :goto_2
.end method
