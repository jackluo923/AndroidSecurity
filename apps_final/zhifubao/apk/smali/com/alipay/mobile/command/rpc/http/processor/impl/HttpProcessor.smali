.class public Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;
.super Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;


# static fields
.field private static final a:Lorg/apache/http/client/HttpRequestRetryHandler;

.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "HttpProcessor.java"

    const-class v2, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "11"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "com.alipay.mobile.command.rpc.http.AndroidHttpClientExt"

    const-string/jumbo v4, "org.apache.http.HttpHost:org.apache.http.HttpRequest:org.apache.http.protocol.HttpContext"

    const-string/jumbo v5, "target:request:context"

    const-string/jumbo v6, "java.io.IOException:org.apache.http.client.ClientProtocolException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xc2

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-instance v0, Lcom/alipay/mobile/command/rpc/http/ZHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/command/rpc/http/ZHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/command/model/HttpUrlRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->c:I

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->setCallback(Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V

    return-void
.end method

.method protected static a(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/command/model/HttpUrlHeader;
    .locals 6

    new-instance v1, Lcom/alipay/mobile/command/model/HttpUrlHeader;

    invoke-direct {v1}, Lcom/alipay/mobile/command/model/HttpUrlHeader;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/command/model/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static a(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b(Lorg/apache/http/HttpResponse;)J

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v1, v2

    :goto_0
    if-lt v1, v7, :cond_0

    const-string/jumbo v0, "charset"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/command/model/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/command/model/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/command/model/HttpUrlResponse;->setCreateTime(J)V

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/command/model/HttpUrlResponse;->setPeriod(J)V

    return-void

    :cond_0
    aget-object v8, v6, v1

    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v9, "Content-Type"

    aput-object v9, v0, v2

    aput-object v8, v0, v10

    :goto_2
    aget-object v8, v0, v2

    aget-object v0, v0, v10

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "="

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static b(Lorg/apache/http/HttpResponse;)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const-string/jumbo v2, "Cache-Control"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v2, v4

    const/4 v5, 0x2

    if-lt v2, v5, :cond_4

    if-eqz v4, :cond_0

    :try_start_0
    array-length v2, v4

    const/4 v5, 0x1

    if-gt v2, v5, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    move v2, v3

    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget-object v5, v4, v2

    const-string/jumbo v6, "max-age"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v4, v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v4, "RpcProcess"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    const-string/jumbo v2, "Expires"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;
    .locals 8

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->addSocketTime(J)V

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v0

    array-length v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->addDataSize(J)V

    new-instance v0, Lcom/alipay/mobile/command/model/HttpUrlResponse;

    invoke-static {p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/command/model/HttpUrlHeader;

    move-result-object v2

    invoke-direct {v0, v2, p2, p3, v1}, Lcom/alipay/mobile/command/model/HttpUrlResponse;-><init>(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V

    invoke-static {v0, p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_1
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x130

    if-eq v1, v2, :cond_0

    :cond_3
    const-string/jumbo v1, "RpcProcess"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "begin parse response,UNKONW, step6"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V
    .locals 12

    invoke-static {p1}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const/16 v1, 0x800

    :try_start_0
    new-array v6, v1, [B

    move-wide v1, p2

    :cond_0
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    iget-object v8, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v8}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lcom/alipay/mobile/command/util/CommandUtil;->closeStream(Ljava/io/Closeable;)V

    return-void

    :cond_2
    const/4 v8, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v7

    add-long/2addr v1, v7

    if-eqz p5, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    long-to-double v8, v1

    add-long v10, v4, p2

    long-to-double v10, v10

    div-double/2addr v8, v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v8, v9}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/command/model/Request;D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "RpcProcess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "read ResponseData Error."

    aput-object v6, v4, v5

    invoke-static {v2, v1, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "HttpWorker Request Error!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v3}, Lcom/alipay/mobile/command/util/CommandUtil;->closeStream(Ljava/io/Closeable;)V

    throw v1
.end method

.method protected a(I)Z
    .locals 1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public call()Lcom/alipay/mobile/command/model/Response;
    .locals 19

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    move-result-object v8

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->getCallback()Lcom/alipay/mobile/command/rpc/http/TransportCallback;

    move-result-object v11

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->isNetConnected()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "The network is not available"

    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v2

    :goto_0
    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/util/exception/HttpException;->getCode()I

    move-result v4

    invoke-virtual {v2}, Lcom/alipay/mobile/command/util/exception/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_1
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Rpc process httpException error."

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "HttpWorker finish request: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_2
    if-eqz v11, :cond_3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v11, v2}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onPreExecute(Lcom/alipay/mobile/command/model/Request;)V

    :cond_3
    invoke-virtual {v8}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getProxy()Lorg/apache/http/HttpHost;

    move-result-object v4

    const-string/jumbo v5, "http.route.default-proxy"

    invoke-interface {v2, v5, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    invoke-virtual {v4}, Ljava/net/URL;->getDefaultPort()I

    move-result v2

    :goto_1
    new-instance v9, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v5, v2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getReqData()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v2, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_a

    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b()Ljava/net/URI;

    move-result-object v4

    invoke-direct {v10, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-virtual {v10, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_4
    invoke-static {v10}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    invoke-static {v10}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    new-instance v12, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v12}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "cookie"

    invoke-interface {v10, v3, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v13}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    const-string/jumbo v2, "http.cookie-store"

    invoke-interface {v12, v2, v13}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v8, v2}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v2, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v12, v3, v4

    move-object/from16 v0, p0

    invoke-static {v2, v0, v8, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v16

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface/range {v16 .. v16}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v4, "n/a"

    const-wide/16 v5, -0x1

    const/4 v3, 0x0

    if-eqz v7, :cond_7

    const/4 v2, 0x0

    array-length v0, v7

    move/from16 v17, v0

    if-lez v17, :cond_d

    const/16 v17, 0x0

    aget-object v17, v7, v17

    if-eqz v17, :cond_d

    const/16 v17, 0x0

    aget-object v17, v7, v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/http/HttpRequest;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    const/4 v2, 0x0

    aget-object v2, v7, v2

    check-cast v2, Lorg/apache/http/HttpRequest;

    :cond_5
    :goto_5
    if-eqz v2, :cond_f

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v7

    if-eqz v7, :cond_26

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "operationType"

    invoke-interface {v2, v4}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    :goto_6
    const-string/jumbo v4, "Host"

    invoke-interface {v2, v4}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    :goto_7
    instance-of v3, v2, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_24

    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    :goto_8
    move-wide v5, v2

    move-object v3, v4

    move-object v4, v7

    :cond_7
    :goto_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v7, "Monitor"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, " HttpClient.execute(): "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " at: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {v16 .. v16}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Ljava/io/InterruptedIOException;

    const-string/jumbo v3, "trafic beyond limit"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v2

    move-object v3, v10

    goto/16 :goto_0

    :cond_8
    :try_start_4
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v2

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_a
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    :try_end_4
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catch_2
    move-exception v2

    :try_start_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Url parser error!"

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    :try_start_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    invoke-interface {v10, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_6
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    :catch_3
    move-exception v2

    :goto_a
    :try_start_7
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "----SSLHandshakeException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_c
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "sslHandshake"

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_d
    :try_start_8
    array-length v0, v7

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    const/16 v17, 0x1

    aget-object v17, v7, v17

    if-eqz v17, :cond_5

    const/16 v17, 0x1

    aget-object v17, v7, v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/http/HttpRequest;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Lorg/apache/http/HttpRequest;

    goto/16 :goto_5

    :cond_e
    const-wide/16 v2, -0x1

    goto/16 :goto_8

    :cond_f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v7, "Monitor"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "unkown request type:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_9

    :catch_4
    move-exception v2

    :goto_b
    :try_start_9
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-----SSLPeerUnverifiedException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_10
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "sslPeer"

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_11
    :try_start_a
    invoke-virtual {v8, v9, v10, v12}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    const-wide/16 v7, -0x1

    if-eqz v9, :cond_12

    instance-of v2, v9, Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_15

    move-object v0, v9

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v2, v0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    :cond_12
    :goto_c
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v9, Lorg/apache/http/HttpResponse;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v4

    sub-long/2addr v2, v14

    invoke-virtual {v4, v2, v3}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->addConnectTime(J)V

    const-string/jumbo v2, "RpcProcess"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "HttpWorker finish execute request: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v5}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v13}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_17

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v11}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/command/model/HttpUrlRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;
    :try_end_a
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_15
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_a .. :try_end_a} :catch_14
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v2

    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "HttpWorker finish request: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_e
    return-object v2

    :cond_14
    const-wide/16 v7, -0x1

    goto :goto_c

    :cond_15
    :try_start_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v12, "Monitor"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "unkown response type:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v2, v12, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_15
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_b .. :try_end_b} :catch_14
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_c

    :catch_5
    move-exception v2

    :goto_f
    :try_start_c
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "----SSLException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_16
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "sslEx"

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_17
    :try_start_d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    const-string/jumbo v3, "alipay.com"

    :goto_10
    const-string/jumbo v6, "alipay.com"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1b

    const-string/jumbo v3, "alipay.com"

    :cond_18
    :goto_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "; domain="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_d
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_d .. :try_end_d} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_15
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_d .. :try_end_d} :catch_14
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_d

    :catch_6
    move-exception v2

    :goto_12
    :try_start_e
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "----ConnectionPoolTimeoutException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_19
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ConnectionPoolTimeoutException"

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_1a
    :try_start_f
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_10

    :cond_1b
    const-string/jumbo v6, "alipay.net"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_18

    const-string/jumbo v3, "alipay.net"
    :try_end_f
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_15
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_f .. :try_end_f} :catch_14
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_11

    :catch_7
    move-exception v2

    move-object v10, v3

    :goto_13
    :try_start_10
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "----ConnectTimeoutException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_1c
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ConnectTimeoutException"

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2

    :catch_8
    move-exception v2

    move-object v10, v3

    :goto_14
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "----SocketTimeoutException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_1d
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "SocketTimeoutException"

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2

    :catch_9
    move-exception v2

    move-object v10, v3

    :goto_15
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "----NoHttpResponseException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_1e
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "NoHttpResponseException"

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2

    :catch_a
    move-exception v2

    move-object v10, v3

    :goto_16
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "----HttpHostConnectException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_1f
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2

    :catch_b
    move-exception v2

    move-object v10, v3

    :goto_17
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "----UnknownHostException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_20
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2

    :catch_c
    move-exception v2

    move-object v10, v3

    :goto_18
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "----IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_21
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2

    :catch_d
    move-exception v2

    move-object v10, v3

    :goto_19
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->c:I

    if-gtz v3, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->c:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->c:I

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->call()Lcom/alipay/mobile/command/model/Response;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v2

    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "HttpWorker finish request: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_22
    :try_start_11
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2

    :catch_e
    move-exception v2

    move-object v10, v3

    :goto_1a
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v11, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v4, v5}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_23
    const-string/jumbo v3, "RpcProcess"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v2, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :catch_f
    move-exception v2

    goto :goto_1a

    :catch_10
    move-exception v2

    goto :goto_19

    :catch_11
    move-exception v2

    goto/16 :goto_18

    :catch_12
    move-exception v2

    goto/16 :goto_17

    :catch_13
    move-exception v2

    goto/16 :goto_16

    :catch_14
    move-exception v2

    goto/16 :goto_15

    :catch_15
    move-exception v2

    goto/16 :goto_14

    :catch_16
    move-exception v2

    goto/16 :goto_13

    :catch_17
    move-exception v2

    move-object v10, v3

    goto/16 :goto_12

    :catch_18
    move-exception v2

    move-object v10, v3

    goto/16 :goto_f

    :catch_19
    move-exception v2

    move-object v10, v3

    goto/16 :goto_b

    :catch_1a
    move-exception v2

    move-object v10, v3

    goto/16 :goto_a

    :cond_24
    move-object v3, v4

    move-object v4, v7

    goto/16 :goto_9

    :cond_25
    move-object v4, v3

    goto/16 :goto_7

    :cond_26
    move-object v7, v4

    goto/16 :goto_6
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->call()Lcom/alipay/mobile/command/model/Response;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/alipay/mobile/command/model/HttpUrlRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    return-object v0
.end method

.method public bridge synthetic getRequest()Lcom/alipay/mobile/command/model/Request;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->getRequest()Lcom/alipay/mobile/command/model/HttpUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/command/model/HttpUrlRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;
    .locals 5

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const-string/jumbo v1, "RpcProcess"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "begin parse Response check status,"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "status:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;

    move-result-object v0

    return-object v0
.end method
