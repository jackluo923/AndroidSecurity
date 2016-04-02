.class public Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;
.super Ljava/lang/Object;
.source "AnrTracer.java"


# static fields
.field private static a:Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;->a:Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;

    .line 21
    const-class v0, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;->a:Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;-><init>()V

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;->a:Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;

    .line 27
    :cond_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;->a:Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_1
    invoke-virtual {p1, p3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 40
    if-nez v0, :cond_4

    .line 41
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MiscUtils;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ExtDataTunnel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 44
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;->b()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/util/MiscUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3a

    const/16 v6, 0x2d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-static {v4, v0}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :cond_3
    :goto_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 64
    :try_start_4
    invoke-static {v2, v0}, Lcom/alipay/mobile/logmonitor/util/upload/ZipToFile;->a(Ljava/util/List;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    :try_start_5
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/logmonitor/util/stack/b;

    invoke-direct {v3, p0, v0, p2}, Lcom/alipay/mobile/logmonitor/util/stack/b;-><init>(Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;)V

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;)V

    .line 92
    invoke-virtual {v1, p4}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, p5}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Z)V

    .line 94
    invoke-virtual {v1}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 65
    :catch_1
    move-exception v0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto/16 :goto_1
.end method
