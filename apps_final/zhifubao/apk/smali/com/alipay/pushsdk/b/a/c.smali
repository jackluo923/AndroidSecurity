.class public Lcom/alipay/pushsdk/b/a/c;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static f:Lcom/alipay/pushsdk/b/a/a;

.field private static final synthetic g:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Ljava/lang/String;

.field e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "HttpClient.java"

    const-class v2, Lcom/alipay/pushsdk/b/a/c;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "com.alipay.pushsdk.net.http.AndroidHttpClient"

    const-string/jumbo v4, "org.apache.http.HttpHost:org.apache.http.HttpRequest"

    const-string/jumbo v5, "target:request"

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x9a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/b/a/c;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "com.alipay.pushsdk.net.http.AndroidHttpClient"

    const-string/jumbo v4, "org.apache.http.HttpHost:org.apache.http.HttpRequest"

    const-string/jumbo v5, "target:request"

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/b/a/c;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "com.alipay.pushsdk.net.http.AndroidHttpClient"

    const-string/jumbo v4, "org.apache.http.HttpHost:org.apache.http.HttpRequest"

    const-string/jumbo v5, "target:request"

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xde

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/b/a/c;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "execute"

    const-string/jumbo v3, "com.alipay.pushsdk.net.http.AndroidHttpClient"

    const-string/jumbo v4, "org.apache.http.HttpHost:org.apache.http.HttpRequest"

    const-string/jumbo v5, "target:request"

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "org.apache.http.HttpResponse"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xe8

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/b/a/c;->g:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alipay/pushsdk/b/a/c;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/alipay/pushsdk/b/a/c;->e:Landroid/content/Context;

    .line 51
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 52
    return-void
.end method

.method private b()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/b/a/c;->e:Landroid/content/Context;

    .line 281
    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 283
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 286
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const-string/jumbo v1, "HttpClient"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/net/URL;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 63
    const/4 v1, 0x0

    .line 66
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/pushsdk/b/a/c;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string/jumbo v2, "HttpClient"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/apache/http/HttpResponse;
    .locals 15

    .prologue
    .line 107
    const/4 v10, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/alipay/pushsdk/b/a/c;->a()Ljava/net/URL;

    move-result-object v4

    .line 110
    const/4 v3, 0x0

    .line 113
    const/4 v2, 0x0

    .line 115
    :try_start_0
    sget-object v1, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/alipay/pushsdk/b/a/c;->e:Landroid/content/Context;

    .line 117
    const-string/jumbo v1, "alipay"

    .line 116
    invoke-static {v1}, Lcom/alipay/pushsdk/b/a/a;->a(Ljava/lang/String;)Lcom/alipay/pushsdk/b/a/a;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    .line 121
    :cond_0
    sget-object v1, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/b/a/a;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 122
    const/16 v1, 0x4e20

    invoke-static {v5, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 123
    const/16 v1, 0x7530

    invoke-static {v5, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 124
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/pushsdk/b/a/c;->b()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v7

    if-eqz v6, :cond_1

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 125
    :cond_1
    const-string/jumbo v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 127
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    .line 128
    const/16 v1, 0x50

    .line 129
    const-string/jumbo v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    const/16 v1, 0x1bb

    .line 132
    :cond_2
    new-instance v11, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4, v1, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 134
    :try_start_1
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/alipay/pushsdk/b/a/c;->a:Ljava/lang/String;

    invoke-direct {v8, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 136
    :try_start_2
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v1, "utf-8"

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 137
    move-object v0, v8

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 139
    const-string/jumbo v1, "Content-type"

    .line 142
    const-string/jumbo v2, "application/x-www-form-urlencoded;charset=utf-8"

    .line 141
    invoke-interface {v8, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "Accept"

    .line 146
    const-string/jumbo v2, "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    .line 144
    invoke-interface {v8, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 149
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 154
    sget-object v7, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    sget-object v1, Lcom/alipay/pushsdk/b/a/c;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v7, v11, v8}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v3, "n/a"

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz v6, :cond_5

    const/4 v1, 0x0

    array-length v12, v6

    if-lez v12, :cond_b

    const/4 v12, 0x0

    aget-object v12, v6, v12

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    aget-object v12, v6, v12

    instance-of v12, v12, Lorg/apache/http/HttpRequest;

    if-eqz v12, :cond_b

    const/4 v1, 0x0

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    :cond_3
    :goto_1
    if-eqz v1, :cond_d

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "operationType"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

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

    :cond_4
    :goto_2
    const-string/jumbo v3, "Host"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_3
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_1d

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    :goto_4
    move-wide v4, v1

    move-object v2, v3

    move-object v3, v6

    :cond_5
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

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v9

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v6, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

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
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    :catch_0
    move-exception v1

    .line 157
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 158
    const/4 v2, 0x2

    const-string/jumbo v3, "HttpClient"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    .line 174
    :goto_6
    return-object v9

    .line 148
    :cond_6
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 150
    invoke-interface {v8, v1}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 160
    :catch_1
    move-exception v1

    move-object v6, v11

    .line 163
    :goto_7
    :try_start_4
    instance-of v2, v1, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_19

    .line 164
    sget-object v9, Lcom/alipay/pushsdk/b/a/c;->f:Lcom/alipay/pushsdk/b/a/a;

    .line 165
    sget-object v1, Lcom/alipay/pushsdk/b/a/c;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v9, v6, v8}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v11

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v11}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v3, "n/a"

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz v7, :cond_9

    const/4 v1, 0x0

    array-length v12, v7

    if-lez v12, :cond_12

    const/4 v12, 0x0

    aget-object v12, v7, v12

    if-eqz v12, :cond_12

    const/4 v12, 0x0

    aget-object v12, v7, v12

    instance-of v12, v12, Lorg/apache/http/HttpRequest;

    if-eqz v12, :cond_12

    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    :cond_7
    :goto_8
    if-eqz v1, :cond_14

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v3, "operationType"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_8
    :goto_9
    const-string/jumbo v3, "Host"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_a
    instance-of v2, v1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v2, :cond_1a

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    :goto_b
    move-wide v4, v1

    move-object v2, v3

    move-object v3, v7

    :cond_9
    :goto_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v7, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, " HttpClient.execute(): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " at: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v11}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v11

    invoke-interface {v11}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v7, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "trafic beyond limit"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 169
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    move-object v9, v10

    goto/16 :goto_6

    .line 154
    :cond_b
    :try_start_5
    array-length v12, v6

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    const/4 v12, 0x1

    aget-object v12, v6, v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    aget-object v12, v6, v12

    instance-of v12, v12, Lorg/apache/http/HttpRequest;

    if-eqz v12, :cond_3

    const/4 v1, 0x1

    aget-object v1, v6, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    goto/16 :goto_1

    :cond_c
    const-wide/16 v1, -0x1

    goto/16 :goto_4

    :cond_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "unkown request type:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v13

    invoke-interface {v13}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v6, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v7, v11, v8}, Lcom/alipay/pushsdk/b/a/a;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    const-wide/16 v6, -0x1

    if-eqz v9, :cond_f

    instance-of v1, v9, Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_11

    move-object v0, v9

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :cond_f
    :goto_d
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v9, Lorg/apache/http/HttpResponse;

    goto/16 :goto_6

    :cond_10
    const-wide/16 v6, -0x1

    goto :goto_d

    :cond_11
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v12, "Monitor"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "unkown response type:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v12, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_d

    .line 165
    :cond_12
    :try_start_6
    array-length v12, v7

    const/4 v13, 0x1

    if-le v12, v13, :cond_7

    const/4 v12, 0x1

    aget-object v12, v7, v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    aget-object v12, v7, v12

    instance-of v12, v12, Lorg/apache/http/HttpRequest;

    if-eqz v12, :cond_7

    const/4 v1, 0x1

    aget-object v1, v7, v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    goto/16 :goto_8

    :cond_13
    const-wide/16 v1, -0x1

    goto/16 :goto_b

    :cond_14
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v7, "Monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "unkown request type:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v13

    invoke-interface {v13}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v7, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_15
    invoke-virtual {v9, v6, v8}, Lcom/alipay/pushsdk/b/a/a;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    const-wide/16 v6, -0x1

    if-eqz v8, :cond_16

    instance-of v1, v8, Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_18

    move-object v0, v8

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :cond_16
    :goto_e
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v8, Lorg/apache/http/HttpResponse;

    move-object v9, v8

    .line 164
    goto/16 :goto_6

    .line 165
    :cond_17
    const-wide/16 v6, -0x1

    goto :goto_e

    :cond_18
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v9, "Monitor"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unkown response type:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v9, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 167
    :cond_19
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 160
    :catch_3
    move-exception v1

    move-object v6, v2

    move-object v8, v3

    goto/16 :goto_7

    :catch_4
    move-exception v1

    move-object v6, v11

    move-object v8, v3

    goto/16 :goto_7

    :cond_1a
    move-object v2, v3

    move-object v3, v7

    goto/16 :goto_c

    :cond_1b
    move-object v3, v2

    goto/16 :goto_a

    :cond_1c
    move-object v7, v3

    goto/16 :goto_9

    :cond_1d
    move-object v2, v3

    move-object v3, v6

    goto/16 :goto_5

    :cond_1e
    move-object v3, v2

    goto/16 :goto_3

    :cond_1f
    move-object v6, v3

    goto/16 :goto_2
.end method
