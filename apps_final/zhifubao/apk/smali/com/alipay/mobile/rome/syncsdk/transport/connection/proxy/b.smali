.class public Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;
.super Ljavax/net/SocketFactory;
.source "HttpProxySocketFactory.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 31
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->c:I

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;II)Ljava/net/Socket;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->a()Ljava/lang/String;

    move-result-object v2

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->b()I

    move-result v3

    .line 90
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "socketOverHttpProxy: [ proxyHost="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ proxyPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v0, v4}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v0, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 98
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 99
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    mul-int/lit16 v2, p3, 0x3e8

    invoke-virtual {v0, v4, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 101
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 102
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CONNECT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " HTTP/1.1\r\nHost: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 105
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\nProxy-Connection: Keep-Alive\r\n\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 111
    mul-int/lit16 v3, p3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 112
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 117
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 120
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 122
    if-eqz v3, :cond_2

    const-string/jumbo v2, "200"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "socketOverHttpProxy: connect success [ result="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 124
    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_1
    return-object v0

    .line 116
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 126
    :cond_2
    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "socketOverHttpProxy: connect failed [ result="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 127
    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 130
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :goto_2
    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 139
    :cond_3
    throw v0

    .line 135
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 46
    if-lez p1, :cond_0

    .line 47
    iput p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->c:I

    .line 49
    :cond_0
    return-void
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->c:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->c:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->c:I

    invoke-direct {p0, v0, p2, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->c:I

    invoke-direct {p0, v0, p2, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/b;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
