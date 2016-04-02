.class public Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->b:Ljava/lang/String;

    iput p2, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->c:I

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    :goto_0
    iput-object p4, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->d:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method private a(Ljava/net/Socket;Ljava/lang/String;I)V
    .locals 9

    const/16 v8, 0xc8

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CONNECT "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " HTTP/1.1\nUser-Agent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\nHost:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\r\n\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v3, "ASCII7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    new-array v4, v8, [B

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move v3, v1

    move v0, v1

    move v2, v1

    :cond_0
    :goto_1
    const/4 v6, 0x2

    if-ge v0, v6, :cond_3

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    if-gez v6, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unexpected EOF from proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    const/4 v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v7, 0xd

    if-eq v6, v7, :cond_0

    if-nez v3, :cond_5

    if-ge v2, v8, :cond_5

    add-int/lit8 v0, v2, 0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "ASCII7"

    invoke-direct {v0, v4, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "200 connection established"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to tunnel through "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".  Proxy returns \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 3

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->b:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->c:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->a(Ljava/net/Socket;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v0, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    new-instance v1, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory$1;

    invoke-direct {v1, p0}, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory$1;-><init>(Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/httpscer/SSLTunnelSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
