.class public Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z

.field private static d:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;


# instance fields
.field private final c:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alipay/mobile/commandcenter/wificheck/CheckWifiFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->f:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->f:Ljava/util/Map;

    iput-object p1, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->f:Ljava/util/Map;

    const-string/jumbo v1, "wificache"

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/commandcenter/wificheck/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commandcenter/wificheck/a;-><init>(Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;)V

    const-class v1, Lcom/alipay/mobile/commandcenter/wificheck/CheckWifiFacade;

    sget-object v2, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->JSON:Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/command/rpc/proxy/RpcFactory;->buildRpcProxy(Ljava/lang/Class;Lcom/alipay/mobile/command/model/SerializeTypeEnum;Lcom/alipay/mobile/command/rpc/proxy/Config;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commandcenter/wificheck/CheckWifiFacade;

    iput-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->g:Lcom/alipay/mobile/commandcenter/wificheck/CheckWifiFacade;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "download.service.cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getCachePath,ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkWifi,check from server ssid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",bssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/commandcenter/wificheck/CheckWIFIReq;

    invoke-direct {v1}, Lcom/alipay/mobile/commandcenter/wificheck/CheckWIFIReq;-><init>()V

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/commandcenter/wificheck/CheckWIFIReq;->setBssid(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/commandcenter/wificheck/CheckWIFIReq;->setSsid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->g:Lcom/alipay/mobile/commandcenter/wificheck/CheckWifiFacade;

    invoke-interface {v1}, Lcom/alipay/mobile/commandcenter/wificheck/CheckWifiFacade;->a()Lcom/alipay/mobile/commandcenter/wificheck/CheckWIFIRes;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/commandcenter/wificheck/CheckWIFIRes;->getIsWIFI()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkWifiFromServer,result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/command/util/exception/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkWifiFromServer,ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_3
    :try_start_2
    const-string/jumbo v2, "wifi.cache"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readCaches,map:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_4

    :try_start_3
    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;

    invoke-direct {v2}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;-><init>()V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readCaches,ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v1}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "closeStream,ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0, p2}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "wifi.cache"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(I)V

    const-string/jumbo v0, "1.0"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(I)V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeCaches,map:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Ljava/io/Closeable;)V

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;

    invoke-virtual {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "writeCaches,ex:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    invoke-static {v2}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getWifiId,bssid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static final d(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;
    .locals 2

    sget-object v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d:Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkWifi()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "checkWifi,bssid:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ",ssid:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ",macId:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "000000000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkWifi,macId is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " , just return true"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    move-object v3, v0

    :goto_1
    invoke-static {v5}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :cond_3
    :goto_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkWifi,isTrueWifi:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_4
    :try_start_2
    const-string/jumbo v3, "\""

    const-string/jumbo v6, ""

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->f:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->f:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;

    const-string/jumbo v6, "checkWifi,has cached"

    invoke-static {v6}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->a()Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "checkWifi,mac id:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " is expired!"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->f:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    move v0, v2

    :goto_3
    invoke-static {v6}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v6, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;

    invoke-direct {v6}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;-><init>()V

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->a(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->c(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_c

    const-string/jumbo v2, "true"

    :goto_4
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->f:Ljava/util/Map;

    if-eqz v3, :cond_3

    invoke-virtual {v6}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncCaches,map:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",wifiId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncCaches,map.size():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",clear!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->d(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_8
    invoke-virtual {v6}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "wificache"

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker;->b(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/alipay/mobile/commandcenter/wificheck/WifiChecker$WifiMeta;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v2, "false"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method
