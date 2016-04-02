.class public final Lcom/appyet/manager/bl;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "esaza6apret"

    sput-object v0, Lcom/appyet/manager/bl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 1

    const v0, 0xb3b0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/manager/bl;->b:Lcom/appyet/context/ApplicationContext;

    iput v0, p0, Lcom/appyet/manager/bl;->c:I

    iput v0, p0, Lcom/appyet/manager/bl;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Lcom/appyet/a/f;)Z
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/appyet/a/f;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appyet/a/f;->f:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v1, Lcom/appyet/f/x;

    invoke-direct {v1, v0}, Lcom/appyet/f/x;-><init>(Ljava/security/KeyStore;)V

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    iget v0, p0, Lcom/appyet/manager/bl;->c:I

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget v0, p0, Lcom/appyet/manager/bl;->d:I

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    new-instance v1, Lcom/appyet/manager/bm;

    invoke-direct {v1, p0}, Lcom/appyet/manager/bm;-><init>(Lcom/appyet/manager/bl;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    new-instance v1, Lcom/appyet/manager/bn;

    invoke-direct {v1, p0}, Lcom/appyet/manager/bn;-><init>(Lcom/appyet/manager/bl;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method public static b(Lcom/appyet/a/f;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/appyet/a/f;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v0}, Lcom/appyet/manager/bl;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/appyet/a/d;)Lcom/appyet/a/f;
    .locals 10

    const/4 v1, 0x0

    new-instance v2, Lcom/appyet/a/f;

    invoke-direct {v2}, Lcom/appyet/a/f;-><init>()V

    :try_start_0
    iget-object v0, p1, Lcom/appyet/a/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/URI;

    iget-object v3, p1, Lcom/appyet/a/d;->a:Ljava/lang/String;

    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/appyet/a/d;->f:Lcom/appyet/a/e;

    sget-object v4, Lcom/appyet/a/e;->a:Lcom/appyet/a/e;

    if-ne v3, v4, :cond_f

    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iget-object v0, p1, Lcom/appyet/a/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/appyet/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/appyet/a/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/appyet/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/appyet/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appyet/f/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Basic "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Charset"

    const-string v3, "ISO-8859-1,utf-8;q=0.7,*;q=0.3"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v3, "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    iget-object v3, p0, Lcom/appyet/manager/bl;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/manager/bl;->b:Lcom/appyet/context/ApplicationContext;

    invoke-static {v0}, Lcom/appyet/manager/ar;->c(Lcom/appyet/context/ApplicationContext;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Accept-Language"

    invoke-virtual {v4, v3, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/appyet/a/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/appyet/a/d;->e:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "If-None-Match"

    iget-object v3, p1, Lcom/appyet/a/d;->e:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/appyet/a/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_3
    const/16 v5, 0x1f8

    iput v5, v2, Lcom/appyet/a/f;->f:I

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_4
    :goto_5
    invoke-static {v3}, Lcom/appyet/manager/bl;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    :try_start_3
    iget-object v0, p1, Lcom/appyet/a/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/appyet/a/d;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "If-Modified-Since"

    iget-object v3, p1, Lcom/appyet/a/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    :goto_6
    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    :try_start_5
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    :cond_7
    :goto_8
    invoke-static {v4}, Lcom/appyet/manager/bl;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    :try_start_6
    iget-object v0, p1, Lcom/appyet/a/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, ""

    iget-object v3, p1, Lcom/appyet/a/d;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v0

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_9

    :cond_9
    const-string v0, "Cookie"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/appyet/manager/bl;->b()Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_6
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v3

    :try_start_7
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    move-result-object v0

    move-object v4, v3

    move-object v3, v0

    :goto_a
    :try_start_8
    const-string v0, "Content-Encoding"

    invoke-interface {v3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    const-string v0, "Content-Length"

    invoke-interface {v3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_8
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v0

    if-eqz v0, :cond_13

    :try_start_9
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/appyet/a/f;->e:J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :goto_b
    :try_start_a
    const-string v0, "Location"

    invoke-interface {v3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-result v5

    if-nez v5, :cond_14

    :try_start_b
    new-instance v5, Ljava/net/URL;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/appyet/a/f;->i:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :goto_c
    :try_start_c
    const-string v0, "Content-Type"

    invoke-interface {v3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-interface {v5}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_18

    const/4 v7, 0x0

    aget-object v0, v0, v7

    const-string v7, "charset"

    invoke-interface {v0, v7}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_15

    iput-object v0, v2, Lcom/appyet/a/f;->d:Ljava/lang/String;

    :goto_e
    if-eqz v5, :cond_16

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/appyet/a/f;->c:Ljava/lang/String;

    :goto_f
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, v2, Lcom/appyet/a/f;->f:I

    :cond_b
    const-string v0, "Last-Modified"

    invoke-interface {v3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/appyet/a/f;->g:Ljava/lang/String;

    :cond_c
    const-string v0, "ETag"

    invoke-interface {v3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/appyet/a/f;->h:Ljava/lang/String;

    :cond_d
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_c
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    move-result-object v3

    if-eqz v3, :cond_17

    :try_start_d
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_d
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    move-result-object v5

    :goto_10
    if-eqz v6, :cond_e

    :try_start_e
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v6, "gzip"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    move-object v5, v0

    :cond_e
    :try_start_f
    iput-object v5, v2, Lcom/appyet/a/f;->b:Ljava/io/InputStream;

    iput-object v4, v2, Lcom/appyet/a/f;->a:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_f
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    move-object v0, v2

    goto/16 :goto_0

    :cond_f
    :try_start_10
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p1, Lcom/appyet/a/d;->a:Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Charset"

    const-string v3, "ISO-8859-1,utf-8"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v3, "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    iget-object v3, p0, Lcom/appyet/manager/bl;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/appyet/a/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_10
    iget-object v0, p1, Lcom/appyet/a/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    const-string v0, ""

    iget-object v3, p1, Lcom/appyet/a/d;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v0

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_12

    :cond_11
    const-string v0, "Cookie"

    invoke-virtual {v4, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v3, p1, Lcom/appyet/a/d;->i:Ljava/util/List;

    const-string v5, "UTF-8"

    invoke-direct {v0, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0}, Lcom/appyet/manager/bl;->b()Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_10
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    move-result-object v3

    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_11
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    move-result-object v0

    move-object v4, v3

    move-object v3, v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    :cond_13
    const-wide/16 v7, -0x1

    :try_start_12
    iput-wide v7, v2, Lcom/appyet/a/f;->e:J

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object v3, v4

    move-object v4, v1

    goto/16 :goto_3

    :catch_4
    move-exception v0

    :cond_14
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/appyet/a/f;->i:Ljava/lang/String;

    goto/16 :goto_c

    :catch_5
    move-exception v0

    move-object v3, v1

    move-object v5, v1

    goto/16 :goto_6

    :cond_15
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/appyet/a/f;->d:Ljava/lang/String;

    goto/16 :goto_e

    :cond_16
    const-string v0, "text/plain"

    iput-object v0, v2, Lcom/appyet/a/f;->c:Ljava/lang/String;
    :try_end_12
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_f

    :catch_6
    move-exception v4

    invoke-static {v4}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_4

    :catch_7
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_5

    :catch_8
    move-exception v2

    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_7

    :catch_9
    move-exception v2

    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_8

    :catch_a
    move-exception v0

    move-object v4, v3

    move-object v5, v1

    move-object v3, v1

    goto/16 :goto_6

    :catch_b
    move-exception v0

    move-object v5, v1

    goto/16 :goto_6

    :catch_c
    move-exception v0

    goto/16 :goto_6

    :catch_d
    move-exception v0

    move-object v4, v1

    goto/16 :goto_3

    :catch_e
    move-exception v0

    move-object v9, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v9

    goto/16 :goto_3

    :catch_f
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_3

    :catch_10
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_3

    :cond_17
    move-object v5, v1

    goto/16 :goto_10

    :cond_18
    move-object v0, v1

    goto/16 :goto_d
.end method

.method public final a()Lcom/appyet/manager/bo;
    .locals 3

    iget-object v0, p0, Lcom/appyet/manager/bl;->b:Lcom/appyet/context/ApplicationContext;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/appyet/manager/bo;->b:Lcom/appyet/manager/bo;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/appyet/manager/bo;->c:Lcom/appyet/manager/bo;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/appyet/manager/bo;->d:Lcom/appyet/manager/bo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    sget-object v0, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    goto :goto_0
.end method
