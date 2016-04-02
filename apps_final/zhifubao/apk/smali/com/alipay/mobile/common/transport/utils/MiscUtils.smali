.class public final Lcom/alipay/mobile/common/transport/utils/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# static fields
.field public static final BACKGROUND_RPC_APIS:[Ljava/lang/String;

.field public static final LOGIN_APIS:[Ljava/lang/String;

.field public static RELEASE_TYPE:Ljava/lang/String;

.field public static final RPC_LOG_BACKLIST:[Ljava/lang/String;

.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    sput-object v5, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->a:Ljava/lang/Boolean;

    .line 44
    sput-object v5, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "alipay.mobilepromo.ad.query.queryByCode"

    aput-object v1, v0, v3

    const-string/jumbo v1, "alipay.security.vkeyDFP.staticData.report"

    aput-object v1, v0, v4

    const-string/jumbo v1, "alipay.discovery.movie.getPreloadList"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string/jumbo v2, "alipay.mobileappcommon.repairinfo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->BACKGROUND_RPC_APIS:[Ljava/lang/String;

    .line 57
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "alipay.mobilerelation.friend.getMobileContact"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RPC_LOG_BACKLIST:[Ljava/lang/String;

    .line 59
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "alipay.user.login"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ali.user.gw.unifyLogin"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->LOGIN_APIS:[Ljava/lang/String;

    .line 123
    sput-object v5, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static final getCpuModel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 287
    const/4 v2, 0x0

    .line 289
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string/jumbo v3, "/proc/cpuinfo"

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Hardware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 298
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 302
    :goto_0
    return-object v0

    .line 298
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 302
    :cond_2
    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 296
    :goto_2
    :try_start_4
    const-string/jumbo v2, "MiscUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getCpuModel Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 298
    if-eqz v1, :cond_2

    .line 299
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 298
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    .line 299
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    .line 298
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 295
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method public static final getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    const-string/jumbo v1, ""

    .line 259
    :try_start_0
    const-string/jumbo v0, "android.ddm.DdmHandleAppName"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 260
    const-string/jumbo v2, "getAppName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 261
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 265
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 267
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 268
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 270
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 271
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 276
    :cond_1
    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string/jumbo v2, "MiscUtils"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final getInvokeStartTimeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rpc#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getLocalSpdyConfig()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string/jumbo v2, "mounted"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "mounted_ro"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "spdy_config.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    .line 90
    :goto_1
    const/4 v4, -0x1

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 91
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 97
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    const-string/jumbo v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string/jumbo v2, "TransportStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MiscUtils#getLocalSpdyConfig().  \u52a0\u8f7d\u672c\u5730\u914d\u7f6e\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getReleaseType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    .line 172
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;

    monitor-enter v1

    .line 149
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 154
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "channel.config"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 156
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "release_type"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 159
    if-nez v0, :cond_3

    .line 160
    const-string/jumbo v0, "unkown"

    .line 161
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 163
    :cond_3
    :try_start_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string/jumbo v2, "MiscUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getReleaseType error occurr "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_4
    const-string/jumbo v0, "unkown"

    .line 172
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static final getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    .line 315
    :cond_0
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 319
    :cond_1
    :goto_1
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static final grayscale(II)Z
    .locals 2

    .prologue
    .line 387
    :try_start_0
    div-int v0, p0, p1

    .line 388
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 389
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    const-string/jumbo v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final grayscale(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 366
    const-string/jumbo v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 367
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 371
    if-lez v2, :cond_0

    .line 374
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 375
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscale(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static final grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 334
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 335
    array-length v0, v1

    new-array v2, v0, [I

    .line 336
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 337
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    invoke-static {p0, v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;[I)Z

    move-result v0

    return v0
.end method

.method public static final grayscaleUtdid(Ljava/lang/String;[I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 344
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 357
    :goto_0
    return v0

    .line 347
    :cond_1
    array-length v0, p1

    .line 348
    array-length v2, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    move v2, v1

    .line 351
    :goto_1
    if-ge v2, v0, :cond_4

    .line 352
    const-string/jumbo v3, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 353
    aget v4, p1, v2

    if-le v3, v4, :cond_3

    move v0, v1

    .line 354
    goto :goto_0

    .line 351
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 357
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 421
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final isBgRpc(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 399
    move v0, v1

    :goto_0
    sget-object v2, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->BACKGROUND_RPC_APIS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 400
    sget-object v2, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->BACKGROUND_RPC_APIS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    const/4 v1, 0x1

    .line 404
    :cond_0
    return v1

    .line 399
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final isDebugger(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 107
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 108
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 114
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 115
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v0

    .line 114
    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    const-string/jumbo v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isGreatEqualAndroid5()Z
    .locals 2

    .prologue
    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 426
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isInLogBackList(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 459
    sget-object v2, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RPC_LOG_BACKLIST:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 460
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 461
    const/4 v0, 0x1

    .line 464
    :cond_0
    return v0

    .line 459
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final isLoginRpc(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 468
    sget-object v2, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->LOGIN_APIS:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 469
    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    const/4 v0, 0x1

    .line 473
    :cond_0
    return v0

    .line 468
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isNeedShowUserTip(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 211
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "channel.config"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string/jumbo v2, "isShowUserTip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    .line 222
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 226
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    .line 223
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    throw v0

    .line 222
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static isOnlineUrl(Ljava/net/URL;)Z
    .locals 2

    .prologue
    .line 433
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobilegw.alipay.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 437
    :goto_0
    return v0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    const-string/jumbo v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreUrl(Ljava/net/URL;)Z
    .locals 2

    .prologue
    .line 442
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobilegwpre.alipay.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 446
    :goto_0
    return v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string/jumbo v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isPushProcess(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 234
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 247
    :goto_0
    return v0

    .line 238
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string/jumbo v1, "MiscUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "curProcessName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    const-string/jumbo v0, "MiscUtils"

    const-string/jumbo v1, "Other Process"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    .line 247
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 244
    :cond_1
    const-string/jumbo v0, "MiscUtils"

    const-string/jumbo v1, "Main Process"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static isRCVersion(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 131
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getReleaseType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rc"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isShowUserTip(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 186
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isNeedShowUserTip(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    const-string/jumbo v2, "usertip"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 192
    const-string/jumbo v3, "showTip"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 193
    if-eqz v2, :cond_0

    move v0, v1

    .line 194
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isTestUrl(Ljava/net/URL;)Z
    .locals 2

    .prologue
    .line 451
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobilegw-1-64.test.alipay.net"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 455
    :goto_0
    return v0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    const-string/jumbo v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    const/4 v0, 0x0

    goto :goto_0
.end method
