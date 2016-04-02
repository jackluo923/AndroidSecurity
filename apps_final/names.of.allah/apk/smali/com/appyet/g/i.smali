.class final Lcom/appyet/g/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/appyet/g/g;

.field private b:Lcom/appyet/g/f;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/Object;

.field private volatile f:Z

.field private g:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/appyet/g/g;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private a(Ljava/net/URLConnection;)Ljava/net/HttpURLConnection;
    .locals 7

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The URL is not valid for a http connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_2

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/appyet/g/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/appyet/g/j;

    invoke-direct {v1, p0}, Lcom/appyet/g/j;-><init>(Lcom/appyet/g/i;)V

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v1, v1, Lcom/appyet/g/g;->g:[Ljavax/net/ssl/TrustManager;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TLS"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "SSL"

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v4, v4, Lcom/appyet/g/g;->h:[Ljavax/net/ssl/KeyManager;

    iget-object v5, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v5, v5, Lcom/appyet/g/g;->g:[Ljavax/net/ssl/TrustManager;

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/appyet/g/l;

    invoke-direct {v1, v0}, Lcom/appyet/g/l;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_2
    check-cast p1, Ljava/net/HttpURLConnection;

    :cond_3
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/16 v10, 0x12e

    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/appyet/g/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "^[A-Za-z0-9\\._:/]*$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/appyet/g/n;

    const-string v2, "Method name must only contain A-Z a-z . : _ / "

    invoke-direct {v1, v2}, Lcom/appyet/g/n;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    new-instance v1, Lcom/appyet/g/q;

    const-string v2, "The XMLRPC call timed out."

    invoke-direct {v1, v2}, Lcom/appyet/g/q;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    new-instance v5, Lcom/appyet/g/b;

    invoke-direct {v5, p1, p2}, Lcom/appyet/g/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v1, v1, Lcom/appyet/g/g;->i:Ljava/net/Proxy;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v1, v1, Lcom/appyet/g/g;->a:Ljava/net/URL;

    iget-object v2, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v2, v2, Lcom/appyet/g/g;->i:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    move-object v6, v1

    :goto_0
    invoke-direct {p0, v6}, Lcom/appyet/g/i;->a(Ljava/net/URLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget v1, v1, Lcom/appyet/g/g;->j:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget v2, v2, Lcom/appyet/g/g;->j:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget v2, v2, Lcom/appyet/g/g;->j:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_1
    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v1, v1, Lcom/appyet/g/g;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    iget-object v8, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    iget-boolean v2, p0, Lcom/appyet/g/i;->f:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/appyet/g/i;->c:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-gtz v2, :cond_13

    :cond_2
    new-instance v2, Lcom/appyet/g/l;

    invoke-direct {v2, v1}, Lcom/appyet/g/l;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v1, v1, Lcom/appyet/g/g;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v6, v1

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v1, v1, Lcom/appyet/g/g;->f:Lcom/appyet/g/a;

    iget-object v2, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    iget-object v7, v1, Lcom/appyet/g/a;->a:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/appyet/g/a;->b:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/appyet/g/a;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, v1, Lcom/appyet/g/a;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_b

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v1, v1, Lcom/appyet/g/g;->e:Lcom/appyet/g/c;

    iget-object v2, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v2}, Lcom/appyet/g/c;->b(Ljava/net/HttpURLConnection;)V

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Lcom/appyet/g/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    move v5, v1

    :goto_3
    const/16 v1, 0x193

    if-eq v5, v1, :cond_6

    const/16 v1, 0x191

    if-ne v5, v1, :cond_d

    :cond_6
    :try_start_4
    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/appyet/g/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_4
    const/16 v2, 0x12d

    if-eq v5, v2, :cond_7

    if-ne v5, v10, :cond_10

    :cond_7
    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/appyet/g/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_f

    if-ne v5, v10, :cond_e

    move v2, v3

    :goto_5
    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    const-string v3, "location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    iget-object v3, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v3, v3, Lcom/appyet/g/g;->a:Ljava/net/URL;

    iget-object v5, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/appyet/g/g;->a:Ljava/net/URL;

    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p0, p1, p2}, Lcom/appyet/g/i;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iput-object v3, v2, Lcom/appyet/g/g;->a:Ljava/net/URL;

    :cond_a
    :goto_6
    return-object v1

    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/appyet/g/a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v1, v1, Lcom/appyet/g/a;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/g/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "Authorization"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Basic "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    move v5, v1

    goto/16 :goto_3

    :cond_c
    new-instance v1, Lcom/appyet/g/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid status code \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' returned from server."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/appyet/g/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v1, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v1, "gzip"

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto/16 :goto_4

    :cond_e
    move v2, v4

    goto/16 :goto_5

    :cond_f
    new-instance v1, Lcom/appyet/g/l;

    const-string v2, "The server responded with a http 301 or 302 status code, but forwarding has not been enabled (FLAGS_FORWARD)."

    invoke-direct {v1, v2}, Lcom/appyet/g/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    iget-object v2, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/appyet/g/g;->a(I)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0xc8

    if-eq v5, v2, :cond_11

    new-instance v1, Lcom/appyet/g/l;

    const-string v2, "The status code of the http response must be 200."

    invoke-direct {v1, v2}, Lcom/appyet/g/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    iget-object v2, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/appyet/g/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/xml; charset=utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v1, Lcom/appyet/g/l;

    const-string v2, "The Content-Type of the response must be text/xml."

    invoke-direct {v1, v2}, Lcom/appyet/g/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-object v2, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v2, v2, Lcom/appyet/g/g;->e:Lcom/appyet/g/c;

    iget-object v3, p0, Lcom/appyet/g/i;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Lcom/appyet/g/c;->a(Ljava/net/HttpURLConnection;)V

    iget-object v2, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v2, v2, Lcom/appyet/g/g;->d:Lcom/appyet/g/e;

    invoke-virtual {v2, v1}, Lcom/appyet/g/e;->a(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    goto/16 :goto_6

    :cond_13
    new-instance v1, Lcom/appyet/g/k;

    iget-object v2, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    invoke-direct {v1, v2, v4}, Lcom/appyet/g/k;-><init>(Lcom/appyet/g/g;B)V

    throw v1

    :cond_14
    move-object v1, v2

    goto/16 :goto_4
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/appyet/g/i;->b:Lcom/appyet/g/f;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v0, v0, Lcom/appyet/g/g;->c:Ljava/util/Map;

    iget-wide v1, p0, Lcom/appyet/g/i;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appyet/g/i;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/g/i;->e:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/appyet/g/i;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appyet/g/i;->b:Lcom/appyet/g/f;

    iget-wide v0, p0, Lcom/appyet/g/i;->c:J
    :try_end_0
    .catch Lcom/appyet/g/k; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/appyet/g/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v0, v0, Lcom/appyet/g/g;->c:Ljava/util/Map;

    iget-wide v1, p0, Lcom/appyet/g/i;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/appyet/g/i;->b:Lcom/appyet/g/f;

    iget-wide v0, p0, Lcom/appyet/g/i;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v0, v0, Lcom/appyet/g/g;->c:Ljava/util/Map;

    iget-wide v1, p0, Lcom/appyet/g/i;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/appyet/g/i;->b:Lcom/appyet/g/f;

    iget-wide v0, p0, Lcom/appyet/g/i;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v0, v0, Lcom/appyet/g/g;->c:Ljava/util/Map;

    iget-wide v1, p0, Lcom/appyet/g/i;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v1, v1, Lcom/appyet/g/g;->c:Ljava/util/Map;

    iget-wide v2, p0, Lcom/appyet/g/i;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/appyet/g/i;->a:Lcom/appyet/g/g;

    iget-object v0, v0, Lcom/appyet/g/g;->c:Ljava/util/Map;

    iget-wide v1, p0, Lcom/appyet/g/i;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1
.end method
