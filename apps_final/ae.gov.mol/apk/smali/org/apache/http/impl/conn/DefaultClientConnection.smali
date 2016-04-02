.class public Lorg/apache/http/impl/conn/DefaultClientConnection;
.super Lorg/apache/http/impl/SocketHttpClientConnection;
.source "DefaultClientConnection.java"

# interfaces
.implements Lorg/apache/http/conn/OperatedClientConnection;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private connSecure:Z

.field private final headerLog:Lorg/apache/commons/logging/Log;

.field private final log:Lorg/apache/commons/logging/Log;

.field private volatile shutdown:Z

.field private volatile socket:Ljava/net/Socket;

.field private targetHost:Lorg/apache/http/HttpHost;

.field private final wireLog:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;-><init>()V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    .line 71
    const-string v0, "org.apache.http.headers"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    .line 72
    const-string v0, "org.apache.http.wire"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    .line 88
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
    .line 153
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection closed"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 154
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->close()V

    .line 155
    return-void
.end method

.method protected createResponseParser(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageParser;
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 199
    new-instance v0, Lorg/apache/http/impl/conn/DefaultResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/http/impl/conn/DefaultResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 163
    const/16 p2, 0x2000

    .line 165
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;

    move-result-object v0

    .line 169
    .local v0, "inbuffer":Lorg/apache/http/io/SessionInputBuffer;
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    new-instance v1, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;

    new-instance v2, Lorg/apache/http/impl/conn/Wire;

    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/conn/Wire;-><init>(Lorg/apache/commons/logging/Log;)V

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/impl/conn/Wire;)V

    .end local v0    # "inbuffer":Lorg/apache/http/io/SessionInputBuffer;
    .local v1, "inbuffer":Lorg/apache/http/io/SessionInputBuffer;
    move-object v0, v1

    .line 172
    .end local v1    # "inbuffer":Lorg/apache/http/io/SessionInputBuffer;
    .restart local v0    # "inbuffer":Lorg/apache/http/io/SessionInputBuffer;
    :cond_1
    return-object v0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
    .locals 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 181
    const/16 p2, 0x2000

    .line 183
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;

    move-result-object v0

    .line 187
    .local v0, "outbuffer":Lorg/apache/http/io/SessionOutputBuffer;
    iget-object v2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    new-instance v1, Lorg/apache/http/impl/conn/LoggingSessionOutputBuffer;

    new-instance v2, Lorg/apache/http/impl/conn/Wire;

    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/conn/Wire;-><init>(Lorg/apache/commons/logging/Log;)V

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/LoggingSessionOutputBuffer;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/impl/conn/Wire;)V

    .end local v0    # "outbuffer":Lorg/apache/http/io/SessionOutputBuffer;
    .local v1, "outbuffer":Lorg/apache/http/io/SessionOutputBuffer;
    move-object v0, v1

    .line 190
    .end local v1    # "outbuffer":Lorg/apache/http/io/SessionOutputBuffer;
    .restart local v0    # "outbuffer":Lorg/apache/http/io/SessionOutputBuffer;
    :cond_1
    return-object v0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final getTargetHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public final isSecure()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    return v0
.end method

.method public openCompleted(ZLorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "secure"    # Z
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->assertNotOpen()V

    .line 118
    if-nez p2, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-boolean p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    .line 123
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v0, p2}, Lorg/apache/http/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 124
    return-void
.end method

.method public opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->assertNotOpen()V

    .line 105
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 106
    iput-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    .line 109
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->shutdown:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 112
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection already shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 228
    .local v5, "response":Lorg/apache/http/HttpResponse;
    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receiving response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 231
    :cond_0
    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 232
    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 233
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 234
    .local v2, "headers":[Lorg/apache/http/Header;
    move-object v0, v2

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 235
    .local v1, "header":Lorg/apache/http/Header;
    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v2    # "headers":[Lorg/apache/http/Header;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-object v5
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 8
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/http/impl/SocketHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 247
    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 249
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 250
    .local v2, "headers":[Lorg/apache/http/Header;
    move-object v0, v2

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 251
    .local v1, "header":Lorg/apache/http/Header;
    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v2    # "headers":[Lorg/apache/http/Header;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Connection shut down"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->shutdown:Z

    .line 144
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->shutdown()V

    .line 145
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 146
    .local v0, "sock":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 149
    :cond_0
    return-void
.end method

.method public update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "secure"    # Z
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->assertOpen()V

    .line 208
    if-nez p2, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    if-nez p4, :cond_1

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    if-eqz p1, :cond_2

    .line 218
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 219
    invoke-virtual {p0, p1, p4}, Lorg/apache/http/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 221
    :cond_2
    iput-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    .line 222
    iput-boolean p3, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    .line 223
    return-void
.end method
