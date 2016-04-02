.class public final Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/Thread;

.field static b:Landroid/os/Handler;

.field static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

.field public static mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;


# instance fields
.field d:[B

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/net/HttpURLConnection;

.field private k:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

.field private final m:I

.field private final n:I

.field private o:[B

.field private p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    new-instance v0, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    sput-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->b:Landroid/os/Handler;

    sput-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->k:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    const/16 v0, 0x8

    iput v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->m:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->n:I

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/net/Response;
    .locals 9

    const/4 v2, 0x0

    const/16 v8, 0x190

    const/16 v7, 0xc8

    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Http Status Code: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    const-string v3, "im-id"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Im Id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

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

    :cond_0
    if-ne v0, v7, :cond_3

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "[InMobi]-[Network]-4.4.1"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ad Response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/inmobi/commons/internal/Base64;->decode([BI)[B

    move-result-object v0

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->o:[B

    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->p:[B

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->DeAe([B[B[B)[B

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v0

    :goto_2
    :try_start_4
    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Decrypted Ad Response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    new-instance v0, Lcom/inmobi/androidsdk/impl/net/Response;

    invoke-direct {v0, v3, v2}, Lcom/inmobi/androidsdk/impl/net/Response;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v2, "Some error in response."

    const/16 v4, 0xc8

    const/4 v5, -0x1

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    const/16 v1, 0xcc

    if-ne v0, v1, :cond_4

    :try_start_6
    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v4, "Server returned No fill"

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v4, "Server did not return 200."

    const/16 v5, 0x64

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :cond_4
    if-ne v0, v8, :cond_5

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v4, "Invalid App Id.Please check the app Id in the adrequest is valid and in active state"

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v4, "Server did not return 200."

    const/16 v5, 0x190

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    :cond_5
    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v4, "Server Error"

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v4, "Server did not return 200."

    const/16 v5, 0xc8

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/net/Response;
    .locals 1

    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/net/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->b()V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->keag()[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->o:[B

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getExponent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->e:Ljava/lang/String;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getModulus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->f:Ljava/lang/String;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->g:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->o:[B

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->p:[B

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->d:[B

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->e:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;)Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-static {v0, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;)V

    return-void
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

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

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

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

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

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getFetchTimeOut()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "user-agent"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

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
    .locals 2

    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->d:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->d:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->p:[B

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->p:[B

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


# virtual methods
.method public final asyncRequestAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 6

    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;-><init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->start()V

    return-void
.end method

.method public final asyncRequestSecuredAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 6

    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;-><init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->start()V

    return-void
.end method

.method public final deinit()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->saveClickEvents()V

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->clear()V

    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->clear()V

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Request Response Manager deinit failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final doCancel()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$a;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$a;-><init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;)V

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$a;->start()V

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->getLoggedClickEvents()Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Request Response Manager init failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final processClick(Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;-><init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Exception ping "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final processClickHttpClient(Ljava/lang/String;Z)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Processing click in http client "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getPingTimeOut()I

    move-result v4

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "user-agent"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getSavedUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getQAMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mk-carrier"

    const-string v4, "117.97.87.6"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-real-ip"

    const-string v4, "117.97.87.6"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    const/16 v4, 0x190

    if-ge v1, v4, :cond_5

    move v1, v3

    :goto_0
    if-ne v3, v1, :cond_2

    :try_start_2
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    :cond_1
    :goto_2
    return v0

    :cond_2
    :try_start_3
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    :goto_3
    :try_start_4
    sget-object v3, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v3, "[InMobi]-[Network]-4.4.1"

    const-string v4, "Click in background exception"

    invoke-static {v3, v4, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public final processClickUrlInWebview(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing click in webview "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->k:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getPingTimeOut()I

    move-result v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getQAMode()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "mk-carrier"

    const-string v3, "117.97.87.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "x-real-ip"

    const-string v3, "117.97.87.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->k:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-virtual {v2, p1, v0}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->loadInWebview(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v5, v0, :cond_1

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->k:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->deinit(I)V

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    :goto_2
    return v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "[InMobi]-[Network]-4.4.1"

    const-string v4, "Network thread wait failure"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "ping in webview exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_2

    :cond_1
    :try_start_6
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method
