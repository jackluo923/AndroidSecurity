.class public Lcom/inmobi/monetization/internal/NativeAdRequestTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:[B

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private e:Lcom/inmobi/monetization/internal/NativeAdRequest;

.field private f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

.field private g:Ljava/net/HttpURLConnection;

.field private final h:I

.field private final i:I

.field private j:[B

.field private k:[B


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/abstraction/INativeAdController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->h:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    iput-object p2, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/monetization/internal/abstraction/INativeAdController;)Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a()V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->keag()[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->j:[B

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getExponent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Ljava/lang/String;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getModulus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/lang/String;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Exception retreiving Ad due to key problem"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->j:[B

    iget-object v2, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->k:[B

    iget-object v3, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:[B

    iget-object v4, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->SeMeGe(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&sn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method private a()V
    .locals 2

    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->k:[B

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->k:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception closing resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getFetchTimeOut()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "user-agent"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "content-type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Http Status Code: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    const-string v4, "im-id"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "[InMobi]-[Network]-4.4.1"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Im Id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    const-string v4, "im-ec"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "[InMobi]-[Network]-4.4.1"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sandbox error Id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_a

    :try_start_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Failed to retrieve native ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/inmobi/commons/internal/Base64;->decode([BI)[B

    move-result-object v0

    iget-object v4, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->j:[B

    iget-object v5, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->k:[B

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->DeAe([B[B[B)[B

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    :goto_3
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ads"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Server returned No Fill "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :goto_4
    :try_start_6
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Out of memory error received while retieving ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :cond_5
    :try_start_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getNativeSdkConfigParams()Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->getmFetchLimit()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v0

    if-le v1, v0, :cond_c

    :goto_5
    if-ge v2, v0, :cond_8

    :try_start_a
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "pubContent"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "contextCode"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "namespace"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_6

    const-string v8, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_6

    const-string v5, ""

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v7, :cond_6

    const-string v5, ""

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v1

    :try_start_b
    const-string v5, "[InMobi]-[Monetization]"

    const-string v6, "JSON Exception"

    invoke-static {v5, v6, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    new-instance v2, Lcom/inmobi/monetization/internal/NativeAdResponse;

    invoke-direct {v2, v4}, Lcom/inmobi/monetization/internal/NativeAdResponse;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestSucceded(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/NativeAdResponse;)V

    goto/16 :goto_4

    :cond_9
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Server Error"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    goto/16 :goto_4

    :cond_a
    const/16 v1, 0x190

    if-ne v0, v1, :cond_b

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Invalid App Id.Please check the app Id in the adrequest is valid and in active state"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    goto/16 :goto_4

    :cond_b
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Server Error"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_5

    :cond_d
    move-object v0, v1

    goto/16 :goto_3
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, v1}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Ad Serving URL: http://i.w.inmobi.com/showad.asm"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/NativeAdRequest;->buildPostBody()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Native Unencrypted Postbody"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/lang/String;Lcom/inmobi/monetization/internal/abstraction/INativeAdController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://i.w.inmobi.com/showad.asm"

    invoke-direct {p0, v1}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->g:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->f:Lcom/inmobi/monetization/internal/abstraction/INativeAdController;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/NativeAdRequestTask;->e:Lcom/inmobi/monetization/internal/NativeAdRequest;

    sget-object v3, Lcom/inmobi/monetization/IMErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/inmobi/monetization/internal/abstraction/INativeAdController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    :cond_2
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Failed to get native ads"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
