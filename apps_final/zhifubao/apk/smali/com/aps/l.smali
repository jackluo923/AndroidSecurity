.class public Lcom/aps/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/aps/l;

.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "NetManager.java"

    const-class v2, Lcom/aps/l;

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

    const/16 v2, 0x77

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/aps/l;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    const/16 v2, 0x203

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/aps/l;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    const/16 v2, 0x3f6

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/aps/l;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v0, 0x0

    sput-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static a()Lcom/aps/l;
    .locals 1

    sget-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aps/l;

    invoke-direct {v0}, Lcom/aps/l;-><init>()V

    sput-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    :cond_0
    sget-object v0, Lcom/aps/l;->a:Lcom/aps/l;

    return-object v0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    :cond_0
    sget-object v1, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    .locals 12

    const/4 v8, -0x1

    const/16 v7, 0x50

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_11

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "nm|found apn:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/aps/t;->a([Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_4

    const-string/jumbo v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/aps/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_12

    move v2, v9

    :goto_0
    if-nez v2, :cond_1

    :try_start_2
    const-string/jumbo v0, "10.0.0.200"
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    move-object v6, v0

    move v0, v7

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v0

    :goto_2
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    if-eq v1, v8, :cond_c

    move v0, v9

    :goto_3
    if-eqz v0, :cond_3

    const-string/jumbo v0, "http"

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v6, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "http.route.default-proxy"

    invoke-interface {v11, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_3
    const/16 v0, 0x7530

    invoke-static {v11, v0}, Lcom/aps/t;->a(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v11, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-direct {v2, v3, v1, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v11, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v0

    :cond_4
    if-eqz v0, :cond_11

    :try_start_3
    const-string/jumbo v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/aps/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-nez v2, :cond_10

    move v2, v9

    :goto_4
    if-nez v2, :cond_5

    :try_start_4
    const-string/jumbo v0, "10.0.0.172"
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    move-object v6, v0

    move v0, v7

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_5
    :try_start_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aps/l;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v9

    :goto_6
    if-nez v2, :cond_6

    const-string/jumbo v0, "10.0.0.200"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    move-object v6, v0

    move v0, v7

    :goto_7
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move v1, v0

    goto/16 :goto_2

    :cond_8
    :try_start_6
    const-string/jumbo v3, "wap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v9

    :goto_8
    if-nez v2, :cond_9

    const-string/jumbo v0, "10.0.0.200"

    :cond_9
    move-object v6, v0

    move v0, v7

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_9
    invoke-static {v0}, Lcom/aps/t;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    move v1, v8

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_a
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :cond_c
    move v0, v10

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v6, v0

    goto/16 :goto_5

    :cond_d
    move v2, v10

    move-object v0, v6

    goto :goto_8

    :cond_e
    move v0, v8

    goto :goto_7

    :cond_f
    move v2, v10

    move-object v0, v6

    goto :goto_6

    :cond_10
    move v2, v10

    move-object v0, v6

    goto/16 :goto_4

    :cond_11
    move v0, v8

    goto/16 :goto_1

    :cond_12
    move v2, v10

    move-object v0, v6

    goto/16 :goto_0

    :cond_13
    move v1, v8

    goto/16 :goto_2
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    const-string/jumbo v0, "Content-Encoding"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 8

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v7

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x4

    aput-object v2, v0, v1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v1, "false"

    aput-object v1, v0, v7

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    const-string/jumbo v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "X-INFO"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "X-BIZ"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "User-Agent"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    const-string/jumbo v6, "true"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    aget-object v1, v0, v7

    if-eqz v1, :cond_4

    aget-object v1, v0, v7

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    const-string/jumbo v1, "true"

    aput-object v1, v0, v7

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 21

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/aps/t;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v16, ""

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/aps/l;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v15

    :try_start_1
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_28
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-virtual {v14, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "User-Agent"

    const-string/jumbo v4, "AMAP Location SDK Android 1.3.1"

    invoke-virtual {v14, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    invoke-virtual {v14, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    invoke-virtual {v14, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "X-INFO"

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ia"

    const-string/jumbo v4, "1"

    invoke-virtual {v14, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "key"

    invoke-static {}, Lcom/amap/api/location/core/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v2, Lcom/aps/l;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    invoke-static {v2, v0, v15, v14}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v8

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v4, "n/a"

    const-wide/16 v5, -0x1

    const/4 v3, 0x0

    if-eqz v7, :cond_6

    const/4 v2, 0x0

    array-length v9, v7

    if-lez v9, :cond_d

    const/4 v9, 0x0

    aget-object v9, v7, v9

    if-eqz v9, :cond_d

    const/4 v9, 0x0

    aget-object v9, v7, v9

    instance-of v9, v9, Lorg/apache/http/HttpRequest;

    if-eqz v9, :cond_d

    const/4 v2, 0x0

    aget-object v2, v7, v2

    check-cast v2, Lorg/apache/http/HttpRequest;

    :cond_4
    :goto_1
    if-eqz v2, :cond_f

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v7

    if-eqz v7, :cond_23

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "operationType"

    invoke-interface {v2, v4}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_5
    :goto_2
    const-string/jumbo v4, "Host"

    invoke-interface {v2, v4}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    :goto_3
    instance-of v3, v2, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_21

    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    :goto_4
    move-wide v5, v2

    move-object v3, v4

    move-object v4, v7

    :cond_6
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v7, "Monitor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v18, " HttpClient.execute(): "

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v18, " at: "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v8

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/io/InterruptedIOException;

    const-string/jumbo v3, "trafic beyond limit"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v2

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    :goto_6
    :try_start_3
    new-instance v8, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v9, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v8, v9}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v8

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object v2, v8

    :goto_7
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_7
    if-eqz v15, :cond_8

    invoke-interface {v15}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_8
    if-eqz v12, :cond_9

    :try_start_4
    invoke-virtual {v12}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    :cond_9
    :goto_8
    if-eqz v13, :cond_a

    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    :cond_a
    :goto_9
    if-eqz v11, :cond_b

    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    :cond_b
    :goto_a
    if-eqz v10, :cond_c

    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a

    :cond_c
    :goto_b
    throw v2

    :cond_d
    :try_start_8
    array-length v9, v7

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v9, v0, :cond_4

    const/4 v9, 0x1

    aget-object v9, v7, v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    aget-object v9, v7, v9

    instance-of v9, v9, Lorg/apache/http/HttpRequest;

    if-eqz v9, :cond_4

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Lorg/apache/http/HttpRequest;

    goto/16 :goto_1

    :cond_e
    const-wide/16 v2, -0x1

    goto/16 :goto_4

    :cond_f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v7, "Monitor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "unkown request type:"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v7, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_5

    :catch_1
    move-exception v2

    :goto_c
    :try_start_9
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_7

    :cond_10
    :try_start_a
    invoke-interface {v15, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    const-wide/16 v7, -0x1

    if-eqz v9, :cond_11

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

    :cond_11
    :goto_d
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v9, Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1e

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v5

    :try_start_b
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, ""

    const-string/jumbo v4, "charset="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_12

    add-int/lit8 v2, v4, 0x8

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo v2, "UTF-8"

    :cond_13
    invoke-static {v9}, Lcom/aps/l;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v3

    if-eqz v3, :cond_20

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_29
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_23
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_1d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_e
    if-eqz v4, :cond_16

    :try_start_c
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_1e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_f
    :try_start_d
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v6, 0x800

    invoke-direct {v2, v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_2a
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_25
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_1f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_13
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :goto_10
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_26
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_20
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e .. :try_end_e} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_14
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_10

    :catch_2
    move-exception v6

    move-object v6, v14

    move-object v7, v15

    goto/16 :goto_6

    :cond_14
    const-wide/16 v7, -0x1

    goto :goto_d

    :cond_15
    :try_start_f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v18, "Monitor"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "unkown response type:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_10
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_d

    :catch_3
    move-exception v2

    :goto_11
    :try_start_10
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_16
    :try_start_11
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_1e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_f

    :catch_4
    move-exception v2

    move-object v2, v10

    move-object v3, v11

    move-object v6, v14

    move-object v7, v15

    goto/16 :goto_6

    :cond_17
    :try_start_12
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_26
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_20
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_14
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move-object v10, v2

    move-object v2, v6

    :goto_12
    if-eqz v14, :cond_18

    invoke-virtual {v14}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_18
    if-eqz v15, :cond_19

    invoke-interface {v15}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_19
    if-eqz v4, :cond_1a

    :try_start_13
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_b

    :cond_1a
    :goto_13
    if-eqz v5, :cond_1b

    :try_start_14
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_c

    :cond_1b
    :goto_14
    if-eqz v3, :cond_1c

    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_d

    :cond_1c
    :goto_15
    if-eqz v10, :cond_1d

    :try_start_16
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_e

    :cond_1d
    :goto_16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x194

    if-ne v2, v3, :cond_1f

    :try_start_17
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_17
    .catch Ljava/net/UnknownHostException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/net/SocketException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_10
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :catch_5
    move-exception v2

    :goto_17
    :try_start_18
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_6
    move-exception v4

    move-object v14, v2

    move-object v15, v3

    move-object v2, v4

    :goto_18
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :catch_7
    move-exception v3

    goto/16 :goto_8

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    :catch_9
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    :catch_a
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    :catch_b
    move-exception v4

    goto :goto_13

    :catch_c
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    :catch_d
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15

    :catch_e
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16

    :catchall_2
    move-exception v4

    move-object v14, v2

    move-object v15, v3

    move-object v2, v4

    goto/16 :goto_7

    :catchall_3
    move-exception v3

    move-object v14, v2

    move-object v2, v3

    goto/16 :goto_7

    :catchall_4
    move-exception v2

    move-object v13, v5

    goto/16 :goto_7

    :catchall_5
    move-exception v2

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_7

    :catchall_6
    move-exception v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_7

    :catchall_7
    move-exception v6

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v2, v6

    goto/16 :goto_7

    :catch_f
    move-exception v3

    move-object v14, v2

    move-object v2, v3

    goto :goto_18

    :catch_10
    move-exception v2

    goto :goto_18

    :catch_11
    move-exception v2

    move-object v13, v5

    goto :goto_18

    :catch_12
    move-exception v2

    move-object v12, v4

    move-object v13, v5

    goto :goto_18

    :catch_13
    move-exception v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    goto :goto_18

    :catch_14
    move-exception v6

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v2, v6

    goto :goto_18

    :catch_15
    move-exception v4

    move-object v14, v2

    move-object v15, v3

    goto :goto_17

    :catch_16
    move-exception v3

    move-object v14, v2

    goto :goto_17

    :catch_17
    move-exception v2

    move-object v13, v5

    goto/16 :goto_17

    :catch_18
    move-exception v2

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_17

    :catch_19
    move-exception v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_17

    :catch_1a
    move-exception v6

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_17

    :catch_1b
    move-exception v4

    move-object v14, v2

    move-object v15, v3

    goto/16 :goto_11

    :catch_1c
    move-exception v3

    move-object v14, v2

    goto/16 :goto_11

    :catch_1d
    move-exception v2

    move-object v13, v5

    goto/16 :goto_11

    :catch_1e
    move-exception v2

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_11

    :catch_1f
    move-exception v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_11

    :catch_20
    move-exception v6

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_11

    :catch_21
    move-exception v4

    move-object v14, v2

    move-object v15, v3

    goto/16 :goto_c

    :catch_22
    move-exception v3

    move-object v14, v2

    goto/16 :goto_c

    :catch_23
    move-exception v2

    move-object v13, v5

    goto/16 :goto_c

    :catch_24
    move-exception v2

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_c

    :catch_25
    move-exception v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_c

    :catch_26
    move-exception v6

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    goto/16 :goto_c

    :catch_27
    move-exception v4

    move-object v4, v12

    move-object v5, v13

    move-object v6, v2

    move-object v7, v3

    move-object v2, v10

    move-object v3, v11

    goto/16 :goto_6

    :catch_28
    move-exception v3

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v2

    move-object v7, v15

    move-object v2, v10

    goto/16 :goto_6

    :catch_29
    move-exception v2

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v6, v14

    move-object v7, v15

    goto/16 :goto_6

    :catch_2a
    move-exception v2

    move-object v2, v10

    move-object v6, v14

    move-object v7, v15

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v2, v16

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    goto/16 :goto_12

    :cond_20
    move-object v4, v12

    goto/16 :goto_e

    :cond_21
    move-object v3, v4

    move-object v4, v7

    goto/16 :goto_5

    :cond_22
    move-object v4, v3

    goto/16 :goto_3

    :cond_23
    move-object v7, v4

    goto/16 :goto_2
.end method

.method public a([BLandroid/content/Context;)Ljava/lang/String;
    .locals 25

    const-string/jumbo v13, ""

    invoke-static/range {p2 .. p2}, Lcom/aps/t;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "zei="

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v5, Lcom/aps/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "&zsi="

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v5, Lcom/aps/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v11, 0x0

    const/4 v3, 0x0

    move/from16 v19, v3

    move-object v3, v8

    :goto_1
    if-gtz v19, :cond_17

    if-nez v11, :cond_17

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/aps/l;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v18

    :try_start_1
    new-instance v17, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "application/soap+xml;charset="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string/jumbo v3, "gzipped"

    const-string/jumbo v4, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/aps/t;->a([B)[B

    move-result-object v3

    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v3, "application/octet-stream"

    invoke-virtual {v4, v3}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v3, Lcom/aps/l;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v3, v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v5, "n/a"

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    array-length v10, v8

    if-lez v10, :cond_a

    const/4 v10, 0x0

    aget-object v10, v8, v10

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    aget-object v10, v8, v10

    instance-of v10, v10, Lorg/apache/http/HttpRequest;

    if-eqz v10, :cond_a

    const/4 v3, 0x0

    aget-object v3, v8, v3

    check-cast v3, Lorg/apache/http/HttpRequest;

    :cond_1
    :goto_2
    if-eqz v3, :cond_c

    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v8

    if-eqz v8, :cond_2f

    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v5, "operationType"

    invoke-interface {v3, v5}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "#"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    :goto_3
    const-string/jumbo v5, "Host"

    invoke-interface {v3, v5}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    :goto_4
    instance-of v4, v3, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v4, :cond_2d

    check-cast v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    :goto_5
    move-wide v6, v3

    move-object v4, v5

    move-object v5, v8

    :cond_3
    :goto_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v8, "Monitor"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v22, " HttpClient.execute(): "

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v22, " at: "

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v9

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Ljava/io/InterruptedIOException;

    const-string/jumbo v4, "trafic beyond limit"

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :catch_0
    move-exception v3

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v8, v13

    :goto_7
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v7, 0x0

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :cond_8
    move-object v9, v7

    move-object v10, v8

    move-object v7, v5

    move-object v8, v6

    move-object v5, v3

    move-object v6, v4

    move v3, v11

    move-object v4, v12

    :cond_9
    :goto_8
    add-int/lit8 v11, v19, 0x1

    move/from16 v19, v11

    move-object v12, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object v13, v10

    move-object v4, v9

    move v11, v3

    move-object v3, v8

    goto/16 :goto_1

    :cond_a
    :try_start_3
    array-length v10, v8

    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v10, v0, :cond_1

    const/4 v10, 0x1

    aget-object v10, v8, v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    aget-object v10, v8, v10

    instance-of v10, v10, Lorg/apache/http/HttpRequest;

    if-eqz v10, :cond_1

    const/4 v3, 0x1

    aget-object v3, v8, v3

    check-cast v3, Lorg/apache/http/HttpRequest;

    goto/16 :goto_2

    :cond_b
    const-wide/16 v3, -0x1

    goto/16 :goto_5

    :cond_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v8, "Monitor"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "unkown request type:"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_6

    :catch_1
    move-exception v3

    move-object v8, v13

    :goto_9
    if-eqz v17, :cond_2b

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    :goto_a
    if-eqz v18, :cond_2a

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v7, 0x0

    :goto_b
    if-eqz v16, :cond_29

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    :goto_c
    if-eqz v15, :cond_28

    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    :goto_d
    if-eqz v14, :cond_27

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :goto_e
    move-object v9, v7

    move-object v10, v8

    move-object v7, v5

    move-object v8, v6

    move-object v5, v3

    move-object v6, v4

    move v3, v11

    move-object v4, v12

    goto/16 :goto_8

    :cond_d
    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    const-wide/16 v8, -0x1

    if-eqz v10, :cond_e

    instance-of v3, v10, Lorg/apache/http/HttpResponse;

    if-eqz v3, :cond_10

    move-object v0, v10

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v3, v0

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    :cond_e
    :goto_f
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v3

    invoke-virtual/range {v3 .. v9}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v10, Lorg/apache/http/HttpResponse;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2c

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v5

    :try_start_5
    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v4, v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v6, 0x800

    invoke-direct {v3, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_10
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_10

    :catch_2
    move-exception v6

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v8, v13

    goto/16 :goto_7

    :cond_f
    const-wide/16 v8, -0x1

    goto :goto_f

    :cond_10
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v22, "Monitor"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "unkown response type:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_f

    :catch_3
    move-exception v3

    move-object v8, v13

    :goto_11
    if-eqz v17, :cond_26

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    :goto_12
    if-eqz v18, :cond_25

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v7, 0x0

    :goto_13
    if-eqz v16, :cond_24

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    :goto_14
    if-eqz v15, :cond_23

    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    :goto_15
    if-eqz v14, :cond_22

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :goto_16
    move-object v9, v7

    move-object v10, v8

    move-object v7, v5

    move-object v8, v6

    move-object v5, v3

    move-object v6, v4

    move v3, v11

    move-object v4, v12

    goto/16 :goto_8

    :cond_11
    :try_start_9
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v6, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v12, 0x0

    const/4 v11, 0x1

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v10, v13

    move-object v4, v12

    move-object v5, v3

    move v3, v11

    :goto_17
    if-eqz v17, :cond_1c

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v8, 0x0

    :goto_18
    if-eqz v18, :cond_1b

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v9, 0x0

    :goto_19
    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    const/4 v7, 0x0

    :goto_1a
    if-eqz v15, :cond_19

    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    const/4 v6, 0x0

    :goto_1b
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    const/4 v5, 0x0

    goto/16 :goto_8

    :catch_4
    move-exception v6

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v8, v13

    :goto_1c
    if-eqz v17, :cond_21

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v6, 0x0

    :goto_1d
    if-eqz v18, :cond_20

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v7, 0x0

    :goto_1e
    if-eqz v16, :cond_1f

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    :goto_1f
    if-eqz v15, :cond_1e

    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    const/4 v4, 0x0

    :goto_20
    if-eqz v14, :cond_1d

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    const/4 v3, 0x0

    :goto_21
    move-object v9, v7

    move-object v10, v8

    move-object v7, v5

    move-object v8, v6

    move-object v5, v3

    move-object v6, v4

    move v3, v11

    move-object v4, v12

    goto/16 :goto_8

    :catchall_0
    move-exception v6

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v3, v6

    :goto_22
    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_12
    if-eqz v18, :cond_13

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_13
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    :cond_14
    if-eqz v15, :cond_15

    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V

    :cond_15
    if-eqz v14, :cond_16

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    :cond_16
    throw v3

    :cond_17
    const/4 v3, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string/jumbo v3, ""

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_18
    move-object v3, v13

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v3, v5

    goto :goto_22

    :catchall_2
    move-exception v4

    move-object/from16 v17, v3

    move-object v3, v4

    goto :goto_22

    :catchall_3
    move-exception v3

    goto :goto_22

    :catchall_4
    move-exception v3

    move-object/from16 v16, v5

    goto :goto_22

    :catchall_5
    move-exception v3

    move-object v15, v4

    move-object/from16 v16, v5

    goto :goto_22

    :catch_5
    move-exception v5

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v8, v13

    goto/16 :goto_1c

    :catch_6
    move-exception v4

    move-object/from16 v17, v3

    move-object v8, v13

    goto/16 :goto_1c

    :catch_7
    move-exception v3

    move-object v8, v13

    goto/16 :goto_1c

    :catch_8
    move-exception v3

    move-object/from16 v16, v5

    move-object v8, v13

    goto/16 :goto_1c

    :catch_9
    move-exception v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v8, v13

    goto/16 :goto_1c

    :catch_a
    move-exception v6

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v8, v13

    goto/16 :goto_11

    :catch_b
    move-exception v5

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v8, v13

    goto/16 :goto_11

    :catch_c
    move-exception v4

    move-object/from16 v17, v3

    move-object v8, v13

    goto/16 :goto_11

    :catch_d
    move-exception v3

    move-object/from16 v16, v5

    move-object v8, v13

    goto/16 :goto_11

    :catch_e
    move-exception v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v8, v13

    goto/16 :goto_11

    :catch_f
    move-exception v6

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v8, v13

    goto/16 :goto_9

    :catch_10
    move-exception v5

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v8, v13

    goto/16 :goto_9

    :catch_11
    move-exception v4

    move-object/from16 v17, v3

    move-object v8, v13

    goto/16 :goto_9

    :catch_12
    move-exception v3

    move-object/from16 v16, v5

    move-object v8, v13

    goto/16 :goto_9

    :catch_13
    move-exception v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v8, v13

    goto/16 :goto_9

    :catch_14
    move-exception v5

    move-object/from16 v5, v16

    move-object v6, v3

    move-object v7, v4

    move-object v8, v13

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_7

    :catch_15
    move-exception v4

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v3

    move-object/from16 v7, v18

    move-object v8, v13

    move-object v3, v14

    goto/16 :goto_7

    :catch_16
    move-exception v3

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v8, v13

    goto/16 :goto_7

    :catch_17
    move-exception v3

    move-object v3, v14

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v8, v13

    goto/16 :goto_7

    :cond_19
    move-object v6, v15

    goto/16 :goto_1b

    :cond_1a
    move-object/from16 v7, v16

    goto/16 :goto_1a

    :cond_1b
    move-object/from16 v9, v18

    goto/16 :goto_19

    :cond_1c
    move-object/from16 v8, v17

    goto/16 :goto_18

    :cond_1d
    move-object v3, v14

    goto/16 :goto_21

    :cond_1e
    move-object v4, v15

    goto/16 :goto_20

    :cond_1f
    move-object/from16 v5, v16

    goto/16 :goto_1f

    :cond_20
    move-object/from16 v7, v18

    goto/16 :goto_1e

    :cond_21
    move-object/from16 v6, v17

    goto/16 :goto_1d

    :cond_22
    move-object v3, v14

    goto/16 :goto_16

    :cond_23
    move-object v4, v15

    goto/16 :goto_15

    :cond_24
    move-object/from16 v5, v16

    goto/16 :goto_14

    :cond_25
    move-object/from16 v7, v18

    goto/16 :goto_13

    :cond_26
    move-object/from16 v6, v17

    goto/16 :goto_12

    :cond_27
    move-object v3, v14

    goto/16 :goto_e

    :cond_28
    move-object v4, v15

    goto/16 :goto_d

    :cond_29
    move-object/from16 v5, v16

    goto/16 :goto_c

    :cond_2a
    move-object/from16 v7, v18

    goto/16 :goto_b

    :cond_2b
    move-object/from16 v6, v17

    goto/16 :goto_a

    :cond_2c
    move v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v10, v13

    goto/16 :goto_17

    :cond_2d
    move-object v4, v5

    move-object v5, v8

    goto/16 :goto_6

    :cond_2e
    move-object v5, v4

    goto/16 :goto_4

    :cond_2f
    move-object v8, v5

    goto/16 :goto_3
.end method

.method public a([BLandroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 25

    invoke-static/range {p2 .. p2}, Lcom/aps/t;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/aps/l;->a(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v3, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, ""

    const/16 v17, 0x0

    const/4 v2, 0x0

    move/from16 v20, v2

    move-object v2, v15

    :goto_0
    if-gtz v20, :cond_1d

    if-nez v17, :cond_1d

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/aps/l;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_23
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1e
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v16

    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/aps/l;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v3

    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lcom/amap/api/location/core/c;->j()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    const-string/jumbo v19, "UTF-8"

    invoke-static/range {p1 .. p1}, Lcom/aps/t;->a([B)[B

    move-result-object v2

    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v2, "application/octet-stream"

    invoke-virtual {v4, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    const-string/jumbo v2, "Accept-Encoding"

    const-string/jumbo v5, "gzip"

    invoke-virtual {v15, v2, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "gzipped"

    const-string/jumbo v5, "1"

    invoke-virtual {v15, v2, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "X-INFO"

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v15, v2, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "X-BIZ"

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-virtual {v15, v2, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KEY"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v15, v2, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ec"

    const-string/jumbo v5, "1"

    invoke-virtual {v15, v2, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "enginever"

    const-string/jumbo v5, "4.2"

    invoke-virtual {v15, v2, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aget-object v2, v3, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string/jumbo v2, "User-Agent"

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-virtual {v15, v2, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/amap/api/location/core/d;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "key="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/location/core/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "ts"

    invoke-virtual {v15, v5, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "scode"

    invoke-virtual {v15, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v2, Lcom/aps/l;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v2, v0, v1, v15}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v8

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v7

    const-string/jumbo v4, "n/a"

    const-wide/16 v5, -0x1

    const/4 v3, 0x0

    if-eqz v7, :cond_4

    const/4 v2, 0x0

    array-length v9, v7

    if-lez v9, :cond_b

    const/4 v9, 0x0

    aget-object v9, v7, v9

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    aget-object v9, v7, v9

    instance-of v9, v9, Lorg/apache/http/HttpRequest;

    if-eqz v9, :cond_b

    const/4 v2, 0x0

    aget-object v2, v7, v2

    check-cast v2, Lorg/apache/http/HttpRequest;

    :cond_2
    :goto_1
    if-eqz v2, :cond_d

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v7

    if-eqz v7, :cond_23

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "operationType"

    invoke-interface {v2, v4}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "#"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_3
    :goto_2
    const-string/jumbo v4, "Host"

    invoke-interface {v2, v4}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    :goto_3
    instance-of v3, v2, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_21

    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    :goto_4
    move-wide v5, v2

    move-object v3, v4

    move-object v4, v7

    :cond_4
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v7, "Monitor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v22, " HttpClient.execute(): "

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v22, " at: "

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v8

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/io/InterruptedIOException;

    const-string/jumbo v3, "trafic beyond limit"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v2

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    :goto_6
    :try_start_3
    new-instance v8, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v9, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v8, v9}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v8

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object v2, v8

    :goto_7
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_5
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_6
    if-eqz v13, :cond_7

    :try_start_4
    invoke-virtual {v13}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    :cond_7
    :goto_8
    if-eqz v14, :cond_8

    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    :cond_8
    :goto_9
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V

    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    :cond_a
    throw v2

    :cond_b
    :try_start_6
    array-length v9, v7

    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v9, v0, :cond_2

    const/4 v9, 0x1

    aget-object v9, v7, v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    aget-object v9, v7, v9

    instance-of v9, v9, Lorg/apache/http/HttpRequest;

    if-eqz v9, :cond_2

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Lorg/apache/http/HttpRequest;

    goto/16 :goto_1

    :cond_c
    const-wide/16 v2, -0x1

    goto/16 :goto_4

    :cond_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v7, "Monitor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "unkown request type:"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v7, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    :catch_1
    move-exception v2

    :goto_a
    :try_start_7
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_7

    :cond_e
    :try_start_8
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    const-wide/16 v7, -0x1

    if-eqz v9, :cond_f

    instance-of v2, v9, Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_13

    move-object v0, v9

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v2, v0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    :cond_f
    :goto_b
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    check-cast v9, Lorg/apache/http/HttpResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1c

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v5

    :try_start_9
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, ""

    const-string/jumbo v4, "charset="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_10

    add-int/lit8 v2, v4, 0x8

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v2, v19

    :cond_11
    invoke-static {v9}, Lcom/aps/l;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v3

    if-eqz v3, :cond_20

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_25
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :goto_c
    if-eqz v4, :cond_14

    :try_start_a
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_21
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :goto_d
    :try_start_b
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v6, 0x800

    invoke-direct {v2, v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_26
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_22
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_1c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :goto_e
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_17
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_e

    :catch_2
    move-exception v6

    move-object v6, v15

    move-object/from16 v7, v16

    goto/16 :goto_6

    :cond_12
    const-wide/16 v7, -0x1

    goto :goto_b

    :cond_13
    :try_start_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v22, "Monitor"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "unkown response type:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_b

    :catch_3
    move-exception v2

    :goto_f
    :try_start_e
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_14
    :try_start_f
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_21
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_1b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_d

    :catch_4
    move-exception v2

    move-object v2, v11

    move-object v3, v12

    move-object v6, v15

    move-object/from16 v7, v16

    goto/16 :goto_6

    :cond_15
    :try_start_10
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v12, v3

    move-object v13, v4

    move v3, v6

    move-object v4, v7

    :goto_10
    if-eqz v15, :cond_16

    invoke-virtual {v15}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v15, 0x0

    :cond_16
    if-eqz v16, :cond_17

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/16 v16, 0x0

    :cond_17
    if-eqz v13, :cond_18

    :try_start_11
    invoke-virtual {v13}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    :goto_11
    const/4 v13, 0x0

    :cond_18
    if-eqz v5, :cond_19

    :try_start_12
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_a

    :goto_12
    const/4 v5, 0x0

    :cond_19
    if-eqz v12, :cond_1a

    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V

    const/4 v12, 0x0

    :cond_1a
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/4 v2, 0x0

    :cond_1b
    add-int/lit8 v6, v20, 0x1

    move/from16 v20, v6

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object v11, v2

    move-object v14, v5

    move-object v2, v15

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x194

    if-ne v2, v3, :cond_1f

    :try_start_13
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_13
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :catch_5
    move-exception v2

    :goto_13
    :try_start_14
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_6
    move-exception v6

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    :goto_14
    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_1d
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    :goto_15
    return-object v2

    :cond_1e
    move-object v2, v10

    goto :goto_15

    :catch_7
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    :catch_9
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    :catch_a
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    :catchall_2
    move-exception v6

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v2, v6

    goto/16 :goto_7

    :catchall_3
    move-exception v4

    move-object v15, v2

    move-object/from16 v16, v3

    move-object v2, v4

    goto/16 :goto_7

    :catchall_4
    move-exception v3

    move-object v15, v2

    move-object v2, v3

    goto/16 :goto_7

    :catchall_5
    move-exception v2

    move-object v14, v5

    goto/16 :goto_7

    :catchall_6
    move-exception v2

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_7

    :catchall_7
    move-exception v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_7

    :catch_b
    move-exception v4

    move-object v15, v2

    move-object/from16 v16, v3

    goto :goto_14

    :catch_c
    move-exception v3

    move-object v15, v2

    goto :goto_14

    :catch_d
    move-exception v2

    goto :goto_14

    :catch_e
    move-exception v2

    move-object v14, v5

    goto :goto_14

    :catch_f
    move-exception v2

    move-object v13, v4

    move-object v14, v5

    goto :goto_14

    :catch_10
    move-exception v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    goto :goto_14

    :catch_11
    move-exception v6

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    goto :goto_13

    :catch_12
    move-exception v4

    move-object v15, v2

    move-object/from16 v16, v3

    goto :goto_13

    :catch_13
    move-exception v3

    move-object v15, v2

    goto :goto_13

    :catch_14
    move-exception v2

    move-object v14, v5

    goto :goto_13

    :catch_15
    move-exception v2

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_13

    :catch_16
    move-exception v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_13

    :catch_17
    move-exception v6

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_f

    :catch_18
    move-exception v4

    move-object v15, v2

    move-object/from16 v16, v3

    goto/16 :goto_f

    :catch_19
    move-exception v3

    move-object v15, v2

    goto/16 :goto_f

    :catch_1a
    move-exception v2

    move-object v14, v5

    goto/16 :goto_f

    :catch_1b
    move-exception v2

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_f

    :catch_1c
    move-exception v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_f

    :catch_1d
    move-exception v6

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_a

    :catch_1e
    move-exception v4

    move-object v15, v2

    move-object/from16 v16, v3

    goto/16 :goto_a

    :catch_1f
    move-exception v3

    move-object v15, v2

    goto/16 :goto_a

    :catch_20
    move-exception v2

    move-object v14, v5

    goto/16 :goto_a

    :catch_21
    move-exception v2

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_a

    :catch_22
    move-exception v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    goto/16 :goto_a

    :catch_23
    move-exception v4

    move-object v4, v13

    move-object v5, v14

    move-object v6, v2

    move-object v7, v3

    move-object v2, v11

    move-object v3, v12

    goto/16 :goto_6

    :catch_24
    move-exception v3

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v2

    move-object/from16 v7, v16

    move-object v2, v11

    goto/16 :goto_6

    :catch_25
    move-exception v2

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v6, v15

    move-object/from16 v7, v16

    goto/16 :goto_6

    :catch_26
    move-exception v2

    move-object v2, v11

    move-object v6, v15

    move-object/from16 v7, v16

    goto/16 :goto_6

    :cond_1f
    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object v2, v11

    move-object v5, v14

    goto/16 :goto_10

    :cond_20
    move-object v4, v13

    goto/16 :goto_c

    :cond_21
    move-object v3, v4

    move-object v4, v7

    goto/16 :goto_5

    :cond_22
    move-object v4, v3

    goto/16 :goto_3

    :cond_23
    move-object v7, v4

    goto/16 :goto_2
.end method
