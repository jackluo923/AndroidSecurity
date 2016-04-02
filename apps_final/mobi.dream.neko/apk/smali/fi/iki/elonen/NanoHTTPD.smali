.class public abstract Lfi/iki/elonen/NanoHTTPD;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$HTTPSession;,
        Lfi/iki/elonen/NanoHTTPD$Response;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$TempFile;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;,
        Lfi/iki/elonen/NanoHTTPD$AsyncRunner;,
        Lfi/iki/elonen/NanoHTTPD$Method;
    }
.end annotation


# static fields
.field public static final MIME_DEFAULT_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field private static final QUERY_STRING_PARAMETER:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"


# instance fields
.field private asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

.field private final hostname:Ljava/lang/String;

.field private final myPort:I

.field private myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;

.field private tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    .line 112
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    .line 113
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$1;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V

    .line 114
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;-><init>()V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V

    .line 115
    return-void
.end method

.method static synthetic access$100(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .prologue
    .line 78
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$200(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .prologue
    .line 78
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method static synthetic access$300(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$AsyncRunner;
    .locals 1
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .prologue
    .line 78
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    return-object v0
.end method


# virtual methods
.method protected decodeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_4

    .line 219
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "&"

    invoke-direct {v5, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v5, "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 221
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "e":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 223
    .local v4, "sep":I
    if-ltz v4, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "propertyName":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 225
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    if-ltz v4, :cond_3

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "propertyValue":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_0

    .line 229
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 227
    .restart local v2    # "propertyName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 233
    .end local v0    # "e":Ljava/lang/String;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v4    # "sep":I
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_4
    return-object v1
.end method

.method protected decodeParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->decodeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation
.end method

.method public setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V
    .locals 0
    .param p1, "asyncRunner"    # Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    .prologue
    .line 268
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    .line 269
    return-void
.end method

.method public setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V
    .locals 0
    .param p1, "tempFileManagerFactory"    # Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    .prologue
    .line 313
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    .line 314
    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    .line 123
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    iget v3, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfi/iki/elonen/NanoHTTPD$1;

    invoke-direct {v1, p0}, Lfi/iki/elonen/NanoHTTPD$1;-><init>(Lfi/iki/elonen/NanoHTTPD;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    .line 150
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 151
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const-string v1, "NanoHttpd Main Listener"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v2, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 161
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
