.class public Lcom/alipay/mobile/command/manager/RuntimeInfoManager;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/alipay/mobile/command/manager/RuntimeInfoManager;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private g:Landroid/content/SharedPreferences;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->f:Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->a:Ljava/lang/String;

    const-string/jumbo v0, "alipay"

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->b:Ljava/lang/String;

    const-string/jumbo v0, "8.1.0.012002"

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->c:Ljava/lang/String;

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "config_property"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "center"

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->h:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "channel"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "channel"

    iget-object v2, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "productVersion"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "productVersion"

    iget-object v2, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->c:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "productId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "productId"

    iget-object v2, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->d:Ljava/lang/String;

    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "url.cfg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandConfig;->isRCVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "http://mobilegw-1-64.test.alipay.net/mgw.htm"

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->d:Ljava/lang/String;

    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->h:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/alipay/mobile/command/util/CommandUtil;->delFile(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->dumpInfo()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RuntimeInfoManager"

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "init from sp error"

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_7
    :goto_5
    throw v0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "RuntimeInfoManager"

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "prepareStorage fail"

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "manager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "update RuntimeInfo error. tag:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->dumpInfo()V

    const/4 p3, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;
    .locals 2

    const-class v1, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->f:Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    invoke-direct {v0}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->f:Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->f:Lcom/alipay/mobile/command/manager/RuntimeInfoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public baseDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->h:Ljava/lang/String;

    return-object v0
.end method

.method public dumpInfo()V
    .locals 4

    const-string/jumbo v0, "manager"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "RuntimeInfoManager [currentUserId="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", channel="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", productVersion="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", rpcUrl="

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, ""

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->isInWallet()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, ""

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->isInWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->isInWallet()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRpcUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getmDid()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->isInWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "THIRD_CMDCENTER_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/command/util/CommandUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public updateChannel(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "channel"

    iget-object v1, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public updateCurrentUseId(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "userId"

    iget-object v1, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public updateProductId(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "productId"

    iget-object v1, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public updateProductVersion(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "productVersion"

    iget-object v1, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method
