.class Lcom/alipay/android/app/down/FileDownloadService$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/down/FileDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# static fields
.field private static final b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/down/FileDownloadService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/down/FileDownloadService$b;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "601"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "org.apache.http.client.HttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, "java.io.IOException:org.apache.http.client.ClientProtocolException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/down/FileDownloadService$b;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/down/FileDownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/down/FileDownloadService$b;->a:Lcom/alipay/android/app/down/FileDownloadService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/down/FileDownloadService$b;->a:Lcom/alipay/android/app/down/FileDownloadService;

    invoke-static {v1}, Lcom/alipay/android/app/down/FileDownloadService;->a(Lcom/alipay/android/app/down/FileDownloadService;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/down/FileDownloadService$b;->a:Lcom/alipay/android/app/down/FileDownloadService;

    invoke-static {v1}, Lcom/alipay/android/app/down/FileDownloadService;->b(Lcom/alipay/android/app/down/FileDownloadService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/down/FileDownloadService$b;->a:Lcom/alipay/android/app/down/FileDownloadService;

    invoke-static {v1}, Lcom/alipay/android/app/down/FileDownloadService;->b(Lcom/alipay/android/app/down/FileDownloadService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/down/FileDownloadService$b;->a:Lcom/alipay/android/app/down/FileDownloadService;

    invoke-static {v1}, Lcom/alipay/android/app/down/FileDownloadService;->c(Lcom/alipay/android/app/down/FileDownloadService;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/down/FileDownloadService$b;->a:Lcom/alipay/android/app/down/FileDownloadService;

    invoke-static {v1}, Lcom/alipay/android/app/down/FileDownloadService;->d(Lcom/alipay/android/app/down/FileDownloadService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/down/FileDownloadService$b;->a:Lcom/alipay/android/app/down/FileDownloadService;

    invoke-static {v1}, Lcom/alipay/android/app/down/FileDownloadService;->e(Lcom/alipay/android/app/down/FileDownloadService;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/app/down/FileDownloadService$a;

    move-object v8, v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    :try_start_3
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, v8, Lcom/alipay/android/app/down/FileDownloadService$a;->a:Ljava/lang/String;

    invoke-direct {v7, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sget-object v1, Lcom/alipay/android/app/down/FileDownloadService$b;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    invoke-static {v1, v0, v9, v7}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v13

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v13}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v3, "n/a"

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz v6, :cond_4

    const/4 v1, 0x0

    array-length v14, v6

    if-lez v14, :cond_7

    const/4 v14, 0x0

    aget-object v14, v6, v14

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    aget-object v14, v6, v14

    instance-of v14, v14, Lorg/apache/http/HttpRequest;

    if-eqz v14, :cond_7

    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    :cond_2
    :goto_2
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "operationType"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "#"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_3
    const-string/jumbo v3, "Host"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_4
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_1a

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    :goto_5
    move-wide v4, v1

    move-object v2, v3

    move-object v3, v6

    :cond_4
    :goto_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, " HttpClient.execute(): "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " at: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v13}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v13

    invoke-interface {v13}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v6, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v1

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    :goto_7
    :try_start_4
    iget-object v4, v8, Lcom/alipay/android/app/down/FileDownloadService$a;->b:Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;

    invoke-interface {v4}, Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_6
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :catch_2
    move-exception v1

    :try_start_6
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_7
    :try_start_7
    array-length v14, v6

    const/4 v15, 0x1

    if-le v14, v15, :cond_2

    const/4 v14, 0x1

    aget-object v14, v6, v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    aget-object v14, v6, v14

    instance-of v14, v14, Lorg/apache/http/HttpRequest;

    if-eqz v14, :cond_2

    const/4 v1, 0x1

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    goto/16 :goto_2

    :cond_8
    const-wide/16 v1, -0x1

    goto/16 :goto_5

    :cond_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "unkown request type:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v15

    invoke-interface {v15}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v6, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_6

    :catch_3
    move-exception v1

    :goto_8
    :try_start_8
    iget-object v1, v8, Lcom/alipay/android/app/down/FileDownloadService$a;->b:Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;

    invoke-interface {v1}, Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v12, :cond_a

    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_b
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_1

    :cond_c
    :try_start_a
    invoke-interface {v9, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    const-wide/16 v6, -0x1

    if-eqz v9, :cond_d

    instance-of v1, v9, Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_f

    move-object v0, v9

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :cond_d
    :goto_9
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v9, Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v2

    const/4 v1, 0x0

    packed-switch v2, :pswitch_data_0

    move v5, v1

    move-object v3, v12

    :goto_a
    if-nez v3, :cond_13

    if-eqz v3, :cond_1

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v1

    goto/16 :goto_1

    :cond_e
    const-wide/16 v6, -0x1

    goto :goto_9

    :cond_f
    :try_start_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v13, "Monitor"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "unkown response type:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v1

    :goto_b
    if-eqz v12, :cond_10

    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    :cond_10
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_11
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :cond_12
    :goto_c
    throw v1

    :pswitch_0
    :try_start_e
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v1

    :try_start_f
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-result-wide v2

    long-to-int v2, v2

    move v5, v2

    move-object v3, v1

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x1000

    :try_start_10
    new-array v6, v2, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_14
    :goto_d
    int-to-float v7, v5

    cmpg-float v7, v4, v7

    if-gez v7, :cond_16

    :try_start_11
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_16

    int-to-float v9, v7

    add-float/2addr v4, v9

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v1, v7

    div-int v7, v5, v1

    const/16 v9, 0x64

    if-lt v7, v9, :cond_15

    int-to-float v7, v5

    cmpl-float v7, v4, v7

    if-nez v7, :cond_14

    :cond_15
    iget-object v1, v8, Lcom/alipay/android/app/down/FileDownloadService$a;->b:Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;

    int-to-float v7, v5

    div-float v7, v4, v7

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-interface {v1, v7}, Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;->a(I)V

    const/4 v1, 0x0

    goto :goto_d

    :cond_16
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    new-instance v4, Ljava/io/File;

    iget-object v1, v8, Lcom/alipay/android/app/down/FileDownloadService$a;->c:Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_17
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    iget-object v4, v8, Lcom/alipay/android/app/down/FileDownloadService$a;->b:Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;

    invoke-interface {v4}, Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;->a()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-eqz v3, :cond_18

    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_18
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v1

    goto/16 :goto_1

    :cond_19
    return-void

    :catch_7
    move-exception v2

    goto/16 :goto_c

    :catchall_3
    move-exception v2

    move-object v12, v1

    move-object v1, v2

    goto/16 :goto_b

    :catchall_4
    move-exception v1

    move-object v12, v3

    goto/16 :goto_b

    :catchall_5
    move-exception v1

    move-object v11, v2

    move-object v12, v3

    goto/16 :goto_b

    :catchall_6
    move-exception v4

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v1, v4

    goto/16 :goto_b

    :catch_8
    move-exception v2

    move-object v12, v1

    goto/16 :goto_8

    :catch_9
    move-exception v1

    move-object v12, v3

    goto/16 :goto_8

    :catch_a
    move-exception v1

    move-object v11, v2

    move-object v12, v3

    goto/16 :goto_8

    :catch_b
    move-exception v4

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    goto/16 :goto_8

    :catch_c
    move-exception v2

    move-object v2, v11

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_7

    :catch_d
    move-exception v1

    move-object v1, v10

    move-object v2, v11

    goto/16 :goto_7

    :catch_e
    move-exception v1

    move-object v1, v10

    goto/16 :goto_7

    :catch_f
    move-exception v4

    goto/16 :goto_7

    :cond_1a
    move-object v2, v3

    move-object v3, v6

    goto/16 :goto_6

    :cond_1b
    move-object v3, v2

    goto/16 :goto_4

    :cond_1c
    move-object v6, v3

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
