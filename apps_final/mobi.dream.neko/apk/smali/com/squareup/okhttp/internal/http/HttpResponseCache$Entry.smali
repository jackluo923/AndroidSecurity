.class final Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;
.super Ljava/lang/Object;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:[Ljava/security/cert/Certificate;

.field private final peerCertificates:[Ljava/security/cert/Certificate;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

.field private final uri:Ljava/lang/String;

.field private final varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    :try_start_0
    new-instance v2, Lcom/squareup/okhttp/internal/StrictLineReader;

    sget-object v5, Lcom/squareup/okhttp/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v5}, Lcom/squareup/okhttp/internal/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 391
    .local v2, "reader":Lcom/squareup/okhttp/internal/StrictLineReader;
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 392
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 393
    new-instance v5, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v5}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 394
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readInt()I

    move-result v4

    .line 395
    .local v4, "varyRequestHeaderLineCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 396
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_0
    new-instance v5, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v5}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 400
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readInt()I

    move-result v3

    .line 402
    .local v3, "responseHeaderLineCount":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 403
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 407
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "blank":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 409
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected \"\" but was \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    .end local v0    # "blank":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "reader":Lcom/squareup/okhttp/internal/StrictLineReader;
    .end local v3    # "responseHeaderLineCount":I
    .end local v4    # "varyRequestHeaderLineCount":I
    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v5

    .line 411
    .restart local v0    # "blank":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "reader":Lcom/squareup/okhttp/internal/StrictLineReader;
    .restart local v3    # "responseHeaderLineCount":I
    .restart local v4    # "varyRequestHeaderLineCount":I
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 412
    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->readCertArray(Lcom/squareup/okhttp/internal/StrictLineReader;)[Ljava/security/cert/Certificate;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 413
    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->readCertArray(Lcom/squareup/okhttp/internal/StrictLineReader;)[Ljava/security/cert/Certificate;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    .end local v0    # "blank":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 422
    return-void

    .line 415
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 416
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 417
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "varyHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p3, "httpConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    .line 427
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 428
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    .line 429
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->fromMultimap(Ljava/util/Map;Z)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 431
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p3

    .line 432
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 433
    .local v0, "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 434
    const/4 v1, 0x0

    .line 436
    .local v1, "peerCertificatesNonFinal":[Ljava/security/cert/Certificate;
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 439
    :goto_0
    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 440
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    .line 446
    .end local v0    # "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v1    # "peerCertificatesNonFinal":[Ljava/security/cert/Certificate;
    :goto_1
    return-void

    .line 442
    :cond_0
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    .line 443
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    .line 444
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    goto :goto_1

    .line 437
    .restart local v0    # "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v1    # "peerCertificatesNonFinal":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method private isHttps()Z
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertArray(Lcom/squareup/okhttp/internal/StrictLineReader;)[Ljava/security/cert/Certificate;
    .locals 8
    .param p1, "reader"    # Lcom/squareup/okhttp/internal/StrictLineReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/StrictLineReader;->readInt()I

    move-result v4

    .line 480
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    .line 481
    const/4 v6, 0x0

    .line 491
    :cond_0
    return-object v6

    .line 484
    :cond_1
    :try_start_0
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 485
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-array v6, v4, [Ljava/security/cert/Certificate;

    .line 486
    .local v6, "result":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_0

    .line 487
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, "line":Ljava/lang/String;
    const-string v7, "US-ASCII"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/okhttp/internal/Base64;->decode([B)[B

    move-result-object v0

    .line 489
    .local v0, "bytes":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "bytes":[B
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "result":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    .line 493
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 9
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "certificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    if-nez p2, :cond_1

    .line 499
    const-string v7, "-1\n"

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 512
    :cond_0
    return-void

    .line 503
    :cond_1
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 504
    move-object v0, p2

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 505
    .local v2, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    .line 506
    .local v1, "bytes":[B
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 507
    .local v6, "line":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v1    # "bytes":[B
    .end local v2    # "certificate":Ljava/security/cert/Certificate;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 510
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method


# virtual methods
.method public matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 516
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v1, p1, v2}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public writeTo(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 6
    .param p1, "editor"    # Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 449
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    .line 450
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 452
    .local v2, "writer":Ljava/io/Writer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->varyHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->responseHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 465
    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 466
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 468
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 469
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/internal/http/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 471
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 472
    return-void
.end method
