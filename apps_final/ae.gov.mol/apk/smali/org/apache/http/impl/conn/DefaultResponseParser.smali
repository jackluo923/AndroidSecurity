.class public Lorg/apache/http/impl/conn/DefaultResponseParser;
.super Lorg/apache/http/impl/io/AbstractMessageParser;
.source "DefaultResponseParser.java"


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final lineBuf:Lorg/apache/http/util/CharArrayBuffer;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final maxGarbageLines:I

.field private final responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "parser"    # Lorg/apache/http/message/LineParser;
    .param p3, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->log:Lorg/apache/commons/logging/Log;

    .line 78
    if-nez p3, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p3, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 83
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    .line 84
    const-string v0, "http.connection.max-status-line-garbage"

    const v1, 0x7fffffff

    invoke-interface {p4, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    .line 86
    return-void
.end method


# virtual methods
.method protected parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .locals 8
    .param p1, "sessionBuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "count":I
    const/4 v1, 0x0

    .line 97
    .local v1, "cursor":Lorg/apache/http/message/ParserCursor;
    :goto_0
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 98
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v4}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v2

    .line 99
    .local v2, "i":I
    if-ne v2, v7, :cond_0

    if-nez v0, :cond_0

    .line 101
    new-instance v4, Lorg/apache/http/NoHttpResponseException;

    const-string v5, "The target server failed to respond"

    invoke-direct {v4, v5}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_0
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    .end local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 104
    .restart local v1    # "cursor":Lorg/apache/http/message/ParserCursor;
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v4, v5, v1}, Lorg/apache/http/message/LineParser;->hasProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v5, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v4, v5, v1}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 119
    .local v3, "statusline":Lorg/apache/http/StatusLine;
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/StatusLine;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    return-object v4

    .line 107
    .end local v3    # "statusline":Lorg/apache/http/StatusLine;
    :cond_1
    if-eq v2, v7, :cond_2

    iget v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    if-lt v0, v4, :cond_3

    .line 109
    :cond_2
    new-instance v4, Lorg/apache/http/ProtocolException;

    const-string v5, "The server failed to respond with a valid HTTP response"

    invoke-direct {v4, v5}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :cond_3
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Garbage in response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultResponseParser;->lineBuf:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 115
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 116
    goto :goto_0
.end method
