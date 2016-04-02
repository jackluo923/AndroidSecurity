.class public Lcom/alipay/mobile/base/datatransfer/DataImporter;
.super Ljava/lang/Object;
.source "DataImporter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Lcom/alipay/mobile/base/datatransfer/IDataExportService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/alipay/mobile/base/datatransfer/DataImporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/datatransfer/DataImporter;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 28
    const-string/jumbo v2, "/shared_prefs/AppHall.cache.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 29
    const-string/jumbo v2, "/databases/alipayclient.db"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 30
    const-string/jumbo v2, "/shared_prefs/secuitySharedDataStore.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 33
    const-string/jumbo v2, "/shared_prefs/virtualImeiAndImsi.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 34
    const-string/jumbo v2, "/databases/msp.db"

    aput-object v2, v0, v1

    .line 26
    sput-object v0, Lcom/alipay/mobile/base/datatransfer/DataImporter;->b:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;[BLjava/lang/String;)Z
    .locals 4

    .prologue
    .line 95
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 102
    :cond_0
    const/4 v2, 0x0

    .line 104
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 106
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 119
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 107
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 108
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/datatransfer/DataImporter;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 110
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/datatransfer/DataImporter;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 114
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 113
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 117
    :goto_4
    throw v0

    .line 114
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 111
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 109
    :catch_6
    move-exception v0

    goto :goto_2

    .line 107
    :catch_7
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public dataImport(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/datatransfer/DataImporter;->a:Ljava/lang/String;

    const-string/jumbo v4, "dataImport"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 50
    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    const-class v4, Lcom/alipay/mobile/base/datatransfer/DataExportService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 53
    if-nez v2, :cond_0

    .line 83
    :goto_0
    return v0

    .line 57
    :cond_0
    monitor-enter p0

    .line 59
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    iget-object v2, p0, Lcom/alipay/mobile/base/datatransfer/DataImporter;->c:Lcom/alipay/mobile/base/datatransfer/IDataExportService;

    if-eqz v2, :cond_1

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/base/datatransfer/DataImporter;->a:Ljava/lang/String;

    const-string/jumbo v4, "do dataImport"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v3, Lcom/alipay/mobile/base/datatransfer/DataImporter;->b:[Ljava/lang/String;

    array-length v4, v3

    move v2, v0

    :goto_2
    if-lt v2, v4, :cond_2

    .line 81
    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move v0, v1

    .line 83
    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 68
    :cond_2
    aget-object v0, v3, v2

    .line 70
    :try_start_3
    iget-object v5, p0, Lcom/alipay/mobile/base/datatransfer/DataImporter;->c:Lcom/alipay/mobile/base/datatransfer/IDataExportService;

    invoke-interface {v5, v0}, Lcom/alipay/mobile/base/datatransfer/IDataExportService;->dataExport(Ljava/lang/String;)[B

    move-result-object v5

    .line 71
    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    .line 72
    invoke-static {p1, v5, v0}, Lcom/alipay/mobile/base/datatransfer/DataImporter;->a(Landroid/content/Context;[BLjava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 68
    :cond_3
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 74
    :catch_1
    move-exception v0

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "StackTrace"

    invoke-interface {v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 124
    invoke-static {p2}, Lcom/alipay/mobile/base/datatransfer/IDataExportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/mobile/base/datatransfer/IDataExportService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/datatransfer/DataImporter;->c:Lcom/alipay/mobile/base/datatransfer/IDataExportService;

    .line 125
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/datatransfer/DataImporter;->a:Ljava/lang/String;

    const-string/jumbo v2, "bindDataExportService success"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/datatransfer/DataImporter;->c:Lcom/alipay/mobile/base/datatransfer/IDataExportService;

    .line 135
    return-void
.end method
