.class public final Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;
.super Ljava/lang/Object;


# static fields
.field public static CURRENT_WALLED_GARDEN_ADDRESS:Ljava/net/InetAddress; = null

.field private static final DBG:Z = false

.field private static final DEFAULT_WALLED_GARDEN_HOST_NAME:Ljava/lang/String; = "www.tmall.com"

.field private static final DEFAULT_WALLED_GARDEN_IP:Ljava/lang/String; = "115.238.23.241"

.field private static final DEFAULT_WALLED_GARDEN_PATH:Ljava/lang/String; = "/go/chn/common/network-status.php"

.field private static final TAG:Ljava/lang/String; = "nfdservice.CaptivePortalUtil"

.field public static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; Android 4.4.4; Nexus 5 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36"

.field public static final WALLED_GARDEN_SOCKET_TIMEOUT_MS:I = 0x2710

.field public static final WIFI_SUCCESS_TAG:Ljava/lang/String; = "AlipayWifiSuccess"

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "CaptivePortalUtil.java"

    const-class v2, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "android.net.http.AndroidHttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest"

    const-string/jumbo v5, "request"

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "android.net.http.AndroidHttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest"

    const-string/jumbo v5, "request"

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xbd

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;->CURRENT_WALLED_GARDEN_ADDRESS:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptiveRspCode()I
    .locals 16

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;->getWalledGardenIp()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string/jumbo v3, "android"

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    :try_start_1
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string/jumbo v3, "http.protocol.handle-redirects"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v9, v1}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x0

    invoke-static {v1, v3, v10, v9}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v8

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "n/a"

    if-eqz v1, :cond_7

    array-length v4, v1

    if-lez v4, :cond_4

    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    aget-object v4, v1, v4

    instance-of v4, v4, Lorg/apache/http/HttpRequest;

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    aget-object v1, v1, v4

    check-cast v1, Lorg/apache/http/HttpRequest;

    :goto_0
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "operationType"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "#"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_1
    const-string/jumbo v3, "Host"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_2
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_d

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    :goto_3
    move-wide v14, v1

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v14

    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v11, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, " HttpClient.execute(): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " at: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v8

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v11, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v1

    move-object v2, v9

    move-object v3, v10

    :goto_5
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "nfdservice.CaptivePortalUtil"

    const-string/jumbo v6, "getCaptiveRspCode Exception, maybe portal"

    invoke-interface {v4, v5, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_2
    const/4 v1, -0x1

    :cond_3
    :goto_6
    return v1

    :cond_4
    :try_start_4
    array-length v4, v1

    if-le v4, v5, :cond_10

    const/4 v4, 0x1

    aget-object v4, v1, v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    aget-object v4, v1, v4

    instance-of v4, v4, Lorg/apache/http/HttpRequest;

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    aget-object v1, v1, v4

    check-cast v1, Lorg/apache/http/HttpRequest;

    goto/16 :goto_0

    :cond_5
    move-wide v1, v6

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "Monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "unkown request type:"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v11

    invoke-interface {v11}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-wide v4, v6

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v10, v9}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    if-eqz v8, :cond_9

    instance-of v1, v8, Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_a

    move-object v0, v8

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :cond_9
    :goto_7
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v8, Lorg/apache/http/HttpResponse;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_6

    :cond_a
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v11, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "unkown response type:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v1

    :goto_8
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_c
    throw v1

    :catchall_1
    move-exception v1

    move-object v9, v2

    move-object v10, v2

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v9, v2

    goto :goto_8

    :catchall_3
    move-exception v1

    move-object v9, v2

    move-object v10, v3

    goto :goto_8

    :catch_1
    move-exception v1

    move-object v3, v2

    goto/16 :goto_5

    :catch_2
    move-exception v1

    move-object v3, v10

    goto/16 :goto_5

    :cond_d
    move-object v2, v3

    move-object v3, v4

    move-wide v4, v6

    goto/16 :goto_4

    :cond_e
    move-object v3, v2

    goto/16 :goto_2

    :cond_f
    move-object v4, v3

    goto/16 :goto_1

    :cond_10
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public static getWalledGardenIp()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "www.tmall.com/go/chn/common/network-status.php"

    return-object v0
.end method

.method public static isCaptivePortal()Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;->getWalledGardenIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;->isCaptivePortal(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "nfdservice.CaptivePortalUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mUrl=["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "] cost=["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "nfdservice.CaptivePortalUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mUrl=["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "] cost=["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public static isCaptivePortal(Ljava/lang/String;)Z
    .locals 16

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    const/4 v1, 0x3

    if-lt v12, v1, :cond_1

    :cond_0
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v1, "android"

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    :try_start_1
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const/16 v3, 0x2710

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const/16 v3, 0x2710

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "Mozilla/5.0 (Linux; Android 4.4.4; Nexus 5 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v10, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string/jumbo v2, "http.protocol.handle-redirects"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v10, v1}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v2, 0x0

    invoke-static {v1, v2, v11, v10}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v7

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v3, "n/a"

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz v6, :cond_4

    const/4 v1, 0x0

    array-length v8, v6

    if-lez v8, :cond_8

    const/4 v8, 0x0

    aget-object v8, v6, v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    aget-object v8, v6, v8

    instance-of v8, v8, Lorg/apache/http/HttpRequest;

    if-eqz v8, :cond_8

    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    :cond_2
    :goto_3
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    if-eqz v6, :cond_23

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "operationType"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "#"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_4
    const-string/jumbo v3, "Host"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_5
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_21

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    :goto_6
    move-wide v4, v1

    move-object v2, v3

    move-object v3, v6

    :cond_4
    :goto_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v13, " HttpClient.execute(): "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, " at: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v7

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v1

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    :goto_8
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "connection refused"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_9
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_8
    :try_start_5
    array-length v8, v6

    const/4 v13, 0x1

    if-le v8, v13, :cond_2

    const/4 v8, 0x1

    aget-object v8, v6, v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    aget-object v8, v6, v8

    instance-of v8, v8, Lorg/apache/http/HttpRequest;

    if-eqz v8, :cond_2

    const/4 v1, 0x1

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    goto/16 :goto_3

    :cond_9
    const-wide/16 v1, -0x1

    goto/16 :goto_6

    :cond_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "unkown request type:"

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v13

    invoke-interface {v13}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v1

    :goto_a
    if-eqz v9, :cond_b

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_b
    :goto_b
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_d
    throw v1

    :cond_e
    :try_start_7
    invoke-virtual {v11, v10}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    const-wide/16 v6, -0x1

    if-eqz v8, :cond_f

    instance-of v1, v8, Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_12

    move-object v0, v8

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :cond_f
    :goto_c
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v8, Lorg/apache/http/HttpResponse;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v1

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_13

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_11
    const-wide/16 v6, -0x1

    goto :goto_c

    :cond_12
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v13, "Monitor"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "unkown response type:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_18

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_14
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v1

    if-nez v1, :cond_16

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :goto_d
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_15
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_16
    :try_start_b
    const-string/jumbo v3, "AlipayWifiSuccess"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "nfdservice.CaptivePortalUtil"

    const-string/jumbo v4, "find WIFI_SUCCESS_TAG ==================="

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :goto_e
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    if-eqz v11, :cond_17

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "nfdservice.CaptivePortalUtil"

    const-string/jumbo v4, "close rd exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "nfdservice.CaptivePortalUtil"

    const-string/jumbo v4, "close rd exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_18
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v5, "nfdservice.CaptivePortalUtil"

    const-string/jumbo v6, "close rd exception"

    invoke-interface {v2, v5, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_19
    add-int/lit8 v5, v12, 0x1

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1c

    :try_start_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "nfdservice.CaptivePortalUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isCaptivePortal retry ,count = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const-wide/16 v6, 0x1f4

    :try_start_e
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_f
    if-eqz v2, :cond_1a

    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    :cond_1a
    :goto_10
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_1b
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    move v12, v5

    goto/16 :goto_0

    :catch_4
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v6, "nfdservice.CaptivePortalUtil"

    const-string/jumbo v7, "close rd exception"

    invoke-interface {v2, v6, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :cond_1c
    :try_start_10
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "nfdservice.CaptivePortalUtil"

    const-string/jumbo v7, "isCaptivePortal Exception, maybe portal"

    invoke-interface {v5, v6, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v2, :cond_1d

    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    :cond_1d
    :goto_11
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_1e
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1f
    const/4 v1, 0x1

    goto/16 :goto_2

    :catch_5
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v5, "nfdservice.CaptivePortalUtil"

    const-string/jumbo v6, "close rd exception"

    invoke-interface {v2, v5, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catch_6
    move-exception v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "nfdservice.CaptivePortalUtil"

    const-string/jumbo v5, "close rd exception"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_7
    move-exception v1

    goto :goto_f

    :catchall_1
    move-exception v1

    move-object v10, v2

    move-object v11, v3

    goto/16 :goto_a

    :catchall_2
    move-exception v1

    move-object v10, v2

    goto/16 :goto_a

    :catchall_3
    move-exception v1

    move-object v9, v2

    goto/16 :goto_a

    :catchall_4
    move-exception v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    goto/16 :goto_a

    :catch_8
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_8

    :catch_9
    move-exception v1

    move-object v3, v2

    move-object v4, v11

    move-object v2, v9

    goto/16 :goto_8

    :catch_a
    move-exception v1

    move-object v3, v10

    move-object v4, v11

    goto/16 :goto_8

    :cond_20
    move v12, v5

    goto/16 :goto_0

    :cond_21
    move-object v2, v3

    move-object v3, v6

    goto/16 :goto_7

    :cond_22
    move-object v3, v2

    goto/16 :goto_5

    :cond_23
    move-object v6, v3

    goto/16 :goto_4
.end method
