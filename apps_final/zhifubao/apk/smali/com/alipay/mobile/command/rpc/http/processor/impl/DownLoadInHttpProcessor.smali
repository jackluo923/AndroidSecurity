.class public Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;
.super Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;


# static fields
.field private static final synthetic f:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/alipay/mobile/command/model/DownloadInHttpRequest;

.field private b:Ljava/lang/String;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "DownLoadInHttpProcessor.java"

    const-class v2, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "openConnection"

    const-string/jumbo v3, "java.net.URL"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.net.URLConnection"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x109

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/command/model/DownloadInHttpRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;-><init>(Lcom/alipay/mobile/command/model/HttpUrlRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a:Lcom/alipay/mobile/command/model/DownloadInHttpRequest;

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/DownloadInHttpRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->d:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/DownloadInHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->c:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->c:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/command/model/Response;
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->b()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    sget-object v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "n/a"

    instance-of v5, v0, Ljava/net/URL;

    if-eqz v5, :cond_6

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v5, "Monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " URL.open(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v0, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_1
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->delFile(Ljava/io/File;Z)V

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download failed! code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v1

    invoke-virtual {p4}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download failed! code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/alipay/mobile/command/model/HttpUrlResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/alipay/mobile/command/model/HttpUrlResponse;-><init>(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V

    invoke-static {v1, p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "Last-Modified"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DownLoadInHttpProcessor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setLastModified error"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;
    .locals 18

    const/16 v4, 0x130

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    new-instance v4, Lcom/alipay/mobile/command/model/HttpUrlResponse;

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/command/model/HttpUrlHeader;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/alipay/mobile/command/model/HttpUrlResponse;-><init>(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V

    :goto_0
    return-object v4

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string/jumbo v4, "DownLoadInHttpProcessor"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "resCode:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", file len:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a:Lcom/alipay/mobile/command/model/DownloadInHttpRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/command/model/DownloadInHttpRequest;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1a0

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/command/model/Response;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/16 v4, 0xc8

    move/from16 v0, p2

    if-ne v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    const/16 v4, 0xc8

    move/from16 v0, p2

    if-eq v0, v4, :cond_6

    const/16 v4, 0xce

    move/from16 v0, p2

    if-eq v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_5
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "download failed! code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v9, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    const/4 v10, 0x1

    invoke-direct {v8, v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v4, p0

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-virtual {v4, v12, v13}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->addSocketTime(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a:Lcom/alipay/mobile/command/model/DownloadInHttpRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/command/model/DownloadInHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v9, v14, v10

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchConnectedNetType()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v14, "phone"

    invoke-virtual {v4, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v14

    const-string/jumbo v15, "monitor"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "url: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v16, " socketSpend: "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " size: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " netDetail: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v15, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long v5, v9, v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->addDataSize(J)V

    new-instance v4, Lcom/alipay/mobile/command/model/HttpUrlResponse;

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/command/model/HttpUrlHeader;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/alipay/mobile/command/model/HttpUrlResponse;-><init>(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->d:Ljava/io/File;

    invoke-static {v5, v6}, Lcom/alipay/mobile/command/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "ArrayOutputStream close error!"

    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v4

    move-object v8, v9

    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "save file failed!"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v8, :cond_7

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    throw v4

    :catch_2
    move-exception v4

    move-object v8, v9

    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "download failed!"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    move-exception v4

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "ArrayOutputStream close error!"

    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    move-object v8, v9

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_3

    :catch_5
    move-exception v4

    goto :goto_1
.end method

.method protected final a()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    cmp-long v3, v1, v6

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->c:Ljava/text/SimpleDateFormat;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "If-Modified-Since"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "DownLoadInHttpProcessor"

    new-array v3, v10, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "If-Modified-Since:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getClientId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "clientId"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "mac"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v5, v1, v6

    if-lez v5, :cond_0

    cmp-long v5, v3, v6

    if-lez v5, :cond_0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "DownLoadInHttpProcessor"

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Range:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->c:Ljava/text/SimpleDateFormat;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "If-Range"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "DownLoadInHttpProcessor"

    new-array v3, v10, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "If-Range:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method protected final a(I)Z
    .locals 1

    const/16 v0, 0xce

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
