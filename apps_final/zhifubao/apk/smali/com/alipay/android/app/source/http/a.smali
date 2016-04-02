.class Lcom/alipay/android/app/source/http/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/source/http/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/android/app/source/http/a;

.field private static final f:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private final b:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/source/http/a;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "11"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "org.apache.http.impl.client.DefaultHttpClient"

    const-string/jumbo v4, "org.apache.http.client.methods.HttpUriRequest"

    const-string/jumbo v5, "request"

    const-string/jumbo v6, "java.io.IOException:org.apache.http.client.ClientProtocolException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x106

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/source/http/a;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/source/http/a;->c:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/alipay/android/app/source/http/a;->d:Landroid/os/Handler;

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/alipay/android/app/source/http/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/alipay/android/app/source/http/a;->c()V

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/source/http/a;->c:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/alipay/android/app/source/http/a;->d:Landroid/os/Handler;

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/alipay/android/app/source/http/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lcom/alipay/android/app/source/http/a;->c()V

    return-void
.end method

.method public static a()Lcom/alipay/android/app/source/http/a;
    .locals 7

    const/16 v6, 0x4e20

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/android/app/source/http/a;->a:Lcom/alipay/android/app/source/http/a;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const-string/jumbo v0, "http.protocol.expect-continue"

    invoke-interface {v1, v0, v4}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    const/16 v0, 0x32

    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x1e

    invoke-direct {v0, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v0, 0x4000

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v1, v5}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v1, v4}, Lorg/apache/http/client/params/HttpClientParams;->setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V

    const-string/jumbo v0, "msp"

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-virtual {v3, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lcom/alipay/android/app/source/http/a;

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/source/http/a;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v0, "\u4e0d\u5e94\u8be5\u6267\u884c\u5230\u7684\u5730\u65b9"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/source/http/a;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/source/http/a;-><init>(Lorg/apache/http/params/HttpParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/source/http/a;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/source/http/a;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "timeout thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/app/source/http/a;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/alipay/android/app/source/http/a;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/alipay/android/app/source/http/b;

    iget-object v1, p0, Lcom/alipay/android/app/source/http/a;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/source/http/b;-><init>(Lcom/alipay/android/app/source/http/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/source/http/a;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    .locals 15

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/alipay/android/app/source/http/a;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    :goto_0
    const/4 v10, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/source/utils/UrlUtil;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    new-instance v1, Lcom/alipay/android/app/source/http/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/source/http/c;-><init>(Lcom/alipay/android/app/source/http/a;)V

    iget-object v2, p0, Lcom/alipay/android/app/source/http/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    const-string/jumbo v3, "MSP_Cookie"

    invoke-virtual {v2, v3, v1}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    iget-object v1, p0, Lcom/alipay/android/app/source/http/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string/jumbo v2, "http.protocol.cookie-policy"

    const-string/jumbo v3, "MSP_Cookie"

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-static {v9}, Lcom/alipay/android/app/source/utils/CookieManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v9}, Lcom/alipay/android/app/source/utils/CookieManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Get cookie:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    const-string/jumbo v2, "Cookie"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Cookie2"

    const-string/jumbo v2, "$Version=1"

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/source/http/a;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    iget-object v7, p0, Lcom/alipay/android/app/source/http/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v1, Lcom/alipay/android/app/source/http/a;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p1

    invoke-static {v1, p0, v7, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v8

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v3, "n/a"

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz v6, :cond_3

    const/4 v1, 0x0

    array-length v12, v6

    if-lez v12, :cond_5

    const/4 v12, 0x0

    aget-object v12, v6, v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    aget-object v12, v6, v12

    instance-of v12, v12, Lorg/apache/http/HttpRequest;

    if-eqz v12, :cond_5

    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    :cond_1
    :goto_1
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "operationType"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "#"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    :goto_2
    const-string/jumbo v3, "Host"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_3
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    :goto_4
    move-wide v4, v1

    move-object v2, v3

    move-object v3, v6

    :cond_3
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

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

    invoke-interface {v1, v6, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/source/http/a;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v1, p0, Lcom/alipay/android/app/source/http/a;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    move-object v8, v10

    :goto_6
    if-eqz v11, :cond_4

    iget-object v1, p0, Lcom/alipay/android/app/source/http/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/alipay/android/app/source/utils/CookieManager;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    return-object v8

    :cond_5
    :try_start_2
    array-length v12, v6

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    const/4 v12, 0x1

    aget-object v12, v6, v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    aget-object v12, v6, v12

    instance-of v12, v12, Lorg/apache/http/HttpRequest;

    if-eqz v12, :cond_1

    const/4 v1, 0x1

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    goto/16 :goto_1

    :cond_6
    const-wide/16 v1, -0x1

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "unkown request type:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v13

    invoke-interface {v13}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v6, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :catch_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/alipay/android/app/source/http/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/alipay/android/app/source/http/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_8

    const-wide/16 v4, 0x708

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    :cond_8
    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v2, 0x0

    sput-object v2, Lcom/alipay/android/app/source/http/a;->a:Lcom/alipay/android/app/source/http/a;

    :cond_9
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/android/app/source/http/a;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/alipay/android/app/source/http/a;->d:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    throw v1

    :cond_a
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    const-wide/16 v6, -0x1

    if-eqz v8, :cond_b

    instance-of v1, v8, Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_d

    move-object v0, v8

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :cond_b
    :goto_7
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v8, Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/source/http/a;->e:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v1, p0, Lcom/alipay/android/app/source/http/a;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_6

    :cond_c
    const-wide/16 v6, -0x1

    goto :goto_7

    :cond_d
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v12, "Monitor"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "unkown response type:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v12, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :cond_e
    move-object v2, v3

    move-object v3, v6

    goto/16 :goto_5

    :cond_f
    move-object v3, v2

    goto/16 :goto_3

    :cond_10
    move-object v6, v3

    goto/16 :goto_2

    :cond_11
    move-object v9, v1

    goto/16 :goto_0
.end method

.method public final b()Lorg/apache/http/params/HttpParams;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/source/http/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
