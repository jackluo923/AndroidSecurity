.class public Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->ajc$preClinit()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lorg/apache/http/client/HttpClient;
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-le v1, v3, :cond_2

    const-string/jumbo v1, "http.proxyHost"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string/jumbo v3, "http.proxyPort"

    invoke-static {v3, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v1, :cond_4

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string/jumbo v0, "http.route.default-proxy"

    invoke-interface {v1, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_1
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;

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

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final synthetic execute_aroundBody0(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/aspectj/lang/JoinPoint;)Lorg/apache/http/HttpResponse;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic execute_aroundBody1$advice(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 12

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v1, "n/a"

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    if-eqz v5, :cond_6

    const/4 v0, 0x0

    array-length v6, v5

    if-lez v6, :cond_3

    const/4 v6, 0x0

    aget-object v6, v5, v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    aget-object v6, v5, v6

    instance-of v6, v6, Lorg/apache/http/HttpRequest;

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    aget-object v0, v5, v0

    check-cast v0, Lorg/apache/http/HttpRequest;

    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "operationType"

    invoke-interface {v0, v5}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "#"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string/jumbo v5, "Host"

    invoke-interface {v0, v5}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    :cond_2
    instance-of v5, v0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v5, :cond_b

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    :goto_1
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v5, "Monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " HttpClient.execute(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v7

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "trafic beyond limit"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    const/4 v6, 0x1

    aget-object v6, v5, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    aget-object v6, v5, v6

    instance-of v6, v6, Lorg/apache/http/HttpRequest;

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    aget-object v0, v5, v0

    check-cast v0, Lorg/apache/http/HttpRequest;

    goto/16 :goto_0

    :cond_4
    const-wide/16 v3, -0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v5, "Monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unkown request type:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p5 .. p5}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v7

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_2

    :cond_7
    invoke-static {p0, p1, p2}, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->execute_aroundBody0(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/aspectj/lang/JoinPoint;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    const-wide/16 v5, -0x1

    if-eqz v7, :cond_8

    instance-of v0, v7, Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_a

    move-object v0, v7

    check-cast v0, Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    :cond_8
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v7

    :cond_9
    const-wide/16 v5, -0x1

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v8, "Monitor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "unkown response type:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_2
.end method

.method public static getReportTimeBridge(Ljava/lang/String;J)J
    .locals 3

    sget-object v1, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->a:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "DataReprot_Data"

    const-string/jumbo v2, ""

    invoke-static {v0, p0, v2}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide p1

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-wide p1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static initDataReportJniBridge(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->b:Landroid/content/Context;

    return-void
.end method

.method public static sendReportBridge(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->b:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "keyindex"

    invoke-virtual {v1, v2, p1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :try_start_0
    sget-object v2, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->execute_aroundBody1$advice(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    div-int/lit16 v1, v1, 0xc8
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v7, :cond_1

    move v1, v7

    :goto_1
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    :goto_2
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v6

    goto :goto_2

    :catch_2
    move-exception v0

    move v0, v6

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move v0, v6

    goto :goto_2

    :catch_4
    move-exception v0

    move v0, v6

    goto :goto_2

    :catch_5
    move-exception v1

    :try_start_4
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    move v0, v6

    goto :goto_2

    :catch_6
    move-exception v0

    move v0, v6

    goto :goto_2

    :catch_7
    move-exception v1

    :try_start_5
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    move v0, v6

    goto :goto_2

    :catch_8
    move-exception v0

    move v0, v6

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_6
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    :goto_3
    throw v1

    :catch_9
    move-exception v0

    goto :goto_3

    :cond_1
    move v1, v6

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2
.end method

.method public static setReportTimeBridge(Ljava/lang/String;J)Z
    .locals 3

    sget-object v1, Lcom/taobao/wireless/security/adapter/datareport/DataReportJniBridge;->a:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "DataReprot_Data"

    invoke-static {v2, p0, v0}, Lcom/taobao/wireless/security/adapter/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
