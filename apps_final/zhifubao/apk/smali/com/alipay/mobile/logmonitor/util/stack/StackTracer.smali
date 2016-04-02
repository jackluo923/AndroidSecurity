.class public Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;
.super Ljava/lang/Object;
.source "StackTracer.java"


# static fields
.field private static a:Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;->a:Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;->a:Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;-><init>()V

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;->a:Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;

    .line 30
    :cond_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;->a:Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Ljava/lang/String;
    .locals 7

    .prologue
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const v0, 0x9c40

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    const-string/jumbo v1, "\nThreadName="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 132
    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 133
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_0
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;JJLcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    const-string/jumbo v1, "has no sdcard"

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 50
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    const/4 v1, 0x1

    .line 55
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v6, p2, v6

    if-ltz v6, :cond_6

    const/16 v6, 0x64

    if-ge v1, v6, :cond_6

    .line 58
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;->b()Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "tracer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "startStackTracer"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/util/MiscUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3a

    const/16 v10, 0x2d

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 63
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 69
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_5
    invoke-static/range {p4 .. p5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "tracer"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 79
    const-string/jumbo v1, "uploadFiles is null"

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 88
    :try_start_5
    invoke-static {v5, v1}, Lcom/alipay/mobile/logmonitor/util/upload/ZipToFile;->a(Ljava/util/List;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    :try_start_6
    new-instance v2, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/logmonitor/util/stack/c;

    move-object/from16 v0, p6

    invoke-direct {v4, p0, v1, v0}, Lcom/alipay/mobile/logmonitor/util/stack/c;-><init>(Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;Ljava/lang/String;Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;)V

    invoke-direct {v2, v1, v3, p1, v4}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;)V

    .line 116
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/lang/String;)V

    .line 117
    move/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Z)V

    .line 118
    invoke-virtual {v2}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a()V

    goto/16 :goto_0

    .line 89
    :catch_1
    move-exception v1

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "tracer"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method
