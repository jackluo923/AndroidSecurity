.class public final Lcom/squareup/okhttp/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final HTTP_11:[B

.field private static final NPN_PROTOCOLS:[B

.field private static final SPDY3:[B


# instance fields
.field private connected:Z

.field private httpMinorVersion:I

.field private idleStartTimeNs:J

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private final route:Lcom/squareup/okhttp/Route;

.field private socket:Ljava/net/Socket;

.field private spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/okhttp/Connection;->NPN_PROTOCOLS:[B

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/squareup/okhttp/Connection;->SPDY3:[B

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/squareup/okhttp/Connection;->HTTP_11:[B

    return-void

    .line 68
    nop

    :array_0
    .array-data 1
        0x6t
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
        0x8t
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data

    .line 72
    :array_1
    .array-data 1
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
    .end array-data

    .line 75
    nop

    :array_2
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data
.end method

.method public constructor <init>(Lcom/squareup/okhttp/Route;)V
    .locals 1
    .param p1, "route"    # Lcom/squareup/okhttp/Route;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/Connection;->httpMinorVersion:I

    .line 90
    iput-object p1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    .line 91
    return-void
.end method

.method private makeTunnel(Lcom/squareup/okhttp/TunnelRequest;)V
    .locals 9
    .param p1, "tunnelRequest"    # Lcom/squareup/okhttp/TunnelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/squareup/okhttp/TunnelRequest;->getRequestHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    .line 269
    .local v1, "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :goto_0
    iget-object v5, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 270
    iget-object v5, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/http/RawHeaders;->fromBytes(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v3

    .line 272
    .local v3, "responseHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 286
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected response code for CONNECT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    :sswitch_0
    new-instance v2, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v2, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>(Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    .line 277
    .end local v1    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    .local v2, "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    new-instance v4, Ljava/net/URL;

    const-string v5, "https"

    iget-object v6, p1, Lcom/squareup/okhttp/TunnelRequest;->host:Ljava/lang/String;

    iget v7, p1, Lcom/squareup/okhttp/TunnelRequest;->port:I

    const-string v8, "/"

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    .local v4, "url":Ljava/net/URL;
    const/16 v5, 0x197

    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v6, v6, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-static {v5, v3, v2, v6, v4}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator;->processAuthHeader(ILcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z

    move-result v0

    .line 280
    .local v0, "credentialsFound":Z
    if-eqz v0, :cond_0

    move-object v1, v2

    .line 281
    .end local v2    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    .restart local v1    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    goto :goto_0

    .line 283
    .end local v1    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    .restart local v2    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to authenticate with proxy"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 274
    .end local v0    # "credentialsFound":Z
    .end local v2    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v1    # "requestHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :sswitch_1
    return-void

    .line 272
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method private upgradeToTls(Lcom/squareup/okhttp/TunnelRequest;)V
    .locals 8
    .param p1, "tunnelRequest"    # Lcom/squareup/okhttp/TunnelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 120
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    .line 123
    .local v0, "platform":Lcom/squareup/okhttp/internal/Platform;
    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->requiresTunnel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Connection;->makeTunnel(Lcom/squareup/okhttp/TunnelRequest;)V

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v3, v3, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v3, v3, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v4, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    iget-object v5, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v5, v5, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v5, v5, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v6, v6, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget v6, v6, Lcom/squareup/okhttp/Address;->uriPort:I

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 130
    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 131
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v3, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-boolean v3, v3, Lcom/squareup/okhttp/Route;->modernTls:Z

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v3, v3, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v3, v3, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/internal/Platform;->enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 137
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-boolean v3, v3, Lcom/squareup/okhttp/Route;->modernTls:Z

    if-eqz v3, :cond_1

    .line 138
    sget-object v3, Lcom/squareup/okhttp/Connection;->NPN_PROTOCOLS:[B

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/internal/Platform;->setNpnProtocols(Ljavax/net/ssl/SSLSocket;[B)V

    .line 142
    :cond_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 145
    iget-object v3, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v3, v3, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v3, v3, Lcom/squareup/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v4, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v4, v4, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v4, v4, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hostname \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v5, v5, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v5, v5, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' was not verified"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_2
    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/Platform;->supportTlsIntolerantServer(Ljavax/net/ssl/SSLSocket;)V

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    .line 150
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    .line 153
    iget-object v3, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-boolean v3, v3, Lcom/squareup/okhttp/Route;->modernTls:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/Platform;->getNpnSelectedProtocol(Ljavax/net/ssl/SSLSocket;)[B

    move-result-object v1

    .local v1, "selectedProtocol":[B
    if-eqz v1, :cond_4

    .line 155
    sget-object v3, Lcom/squareup/okhttp/Connection;->SPDY3:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 156
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 157
    new-instance v3, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;

    iget-object v4, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v4, v4, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    invoke-direct {v3, v4, v7, v5, v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->build()Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .line 164
    .end local v1    # "selectedProtocol":[B
    :cond_4
    return-void

    .line 159
    .restart local v1    # "selectedProtocol":[B
    :cond_5
    sget-object v3, Lcom/squareup/okhttp/Connection;->HTTP_11:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    .line 160
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected NPN transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .line 172
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 173
    return-void
.end method

.method public connect(IILcom/squareup/okhttp/TunnelRequest;)V
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "tunnelRequest"    # Lcom/squareup/okhttp/TunnelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-boolean v1, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    if-eqz v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    .line 99
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v2, v2, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    :goto_0
    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    .line 100
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v2, v2, Lcom/squareup/okhttp/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 101
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 102
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    .line 103
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    .line 105
    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v1, v1, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v1, v1, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    .line 106
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/Connection;->upgradeToTls(Lcom/squareup/okhttp/TunnelRequest;)V

    .line 110
    :cond_1
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/Platform;->getMtu(Ljava/net/Socket;)I

    move-result v0

    .line 111
    .local v0, "mtu":I
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    .line 112
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    .line 113
    return-void

    .line 99
    .end local v0    # "mtu":I
    :cond_2
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    goto :goto_0
.end method

.method public getHttpMinorVersion()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/squareup/okhttp/Connection;->httpMinorVersion:I

    return v0
.end method

.method public getIdleStartTimeNs()J
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/squareup/okhttp/Connection;->idleStartTimeNs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getIdleStartTimeNs()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getRoute()Lcom/squareup/okhttp/Route;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getSpdyConnection()Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/squareup/okhttp/Connection;->connected:Z

    return v0
.end method

.method public isExpired(J)Z
    .locals 4
    .param p1, "keepAliveDurationNs"    # J

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->getIdleStartTimeNs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpdy()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTransport(Lcom/squareup/okhttp/internal/http/HttpEngine;)Ljava/lang/Object;
    .locals 3
    .param p1, "httpEngine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/internal/http/SpdyTransport;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/SpdyTransport;-><init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpTransport;

    iget-object v1, p0, Lcom/squareup/okhttp/Connection;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/Connection;->in:Ljava/io/InputStream;

    invoke-direct {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/http/HttpTransport;-><init>(Lcom/squareup/okhttp/internal/http/HttpEngine;Ljava/io/OutputStream;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public requiresTunnel()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->route:Lcom/squareup/okhttp/Route;

    iget-object v0, v0, Lcom/squareup/okhttp/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetIdleStartTime()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/squareup/okhttp/Connection;->spdyConnection:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/Connection;->idleStartTimeNs:J

    .line 198
    return-void
.end method

.method public setHttpMinorVersion(I)V
    .locals 0
    .param p1, "httpMinorVersion"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/squareup/okhttp/Connection;->httpMinorVersion:I

    .line 250
    return-void
.end method
