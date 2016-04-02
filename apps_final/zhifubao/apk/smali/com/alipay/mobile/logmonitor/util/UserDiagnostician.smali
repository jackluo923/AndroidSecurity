.class public Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;
.super Ljava/lang/Object;
.source "UserDiagnostician.java"


# static fields
.field private static final i:Ljava/lang/String;

.field private static j:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I

.field private f:J

.field private g:J

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/logmonitor/util/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->d:J

    .line 43
    const/high16 v0, 0x800000

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->e:I

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->f:J

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->g:J

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->h:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->j:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->j:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    .line 72
    :cond_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->j:Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 16

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 267
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    :cond_0
    monitor-exit p0

    return-void

    .line 270
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/logmonitor/util/e;

    move-object v9, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->f:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 276
    :cond_3
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->g:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/e;)V

    goto :goto_0

    .line 279
    :cond_4
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->e:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->a()V

    .line 281
    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 282
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/e;)V

    goto :goto_0

    .line 284
    :cond_5
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->j:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 285
    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move v7, v12

    :goto_1
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MiscUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->d:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->e:I

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;-><init>(Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;ZI)V

    new-instance v2, Lcom/alipay/mobile/logmonitor/util/b;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Lcom/alipay/mobile/logmonitor/util/b;-><init>(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/e;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->a(Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/logmonitor/util/stack/TracingUploader;->a()V

    goto/16 :goto_0

    :cond_7
    move v7, v11

    goto :goto_1

    .line 287
    :cond_8
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->i:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 289
    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    move v1, v12

    .line 292
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "monitor.action.dump.traceview"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v3, "type"

    iget-object v4, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v3, "traceTime"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->d:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 295
    const-string/jumbo v3, "taskID"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string/jumbo v3, "isForceUpload"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    const-string/jumbo v1, "traceSize"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->e:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const-string/jumbo v1, "userID"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    move v1, v11

    .line 289
    goto :goto_2

    .line 301
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    iget-object v3, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "wallet is not running"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_c
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->l:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 305
    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    move v10, v12

    :goto_3
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;->a()Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->f:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->g:J

    new-instance v7, Lcom/alipay/mobile/logmonitor/util/c;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v9}, Lcom/alipay/mobile/logmonitor/util/c;-><init>(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/e;)V

    iget-object v8, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v9, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v10}, Lcom/alipay/mobile/logmonitor/util/stack/StackTracer;->a(Landroid/content/Context;JJLcom/alipay/mobile/logmonitor/util/stack/StackTracerCallBack;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_e
    move v10, v11

    goto :goto_3

    .line 307
    :cond_f
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->k:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 309
    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    move v1, v12

    .line 313
    :goto_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "monitor.action.dump.stacktracer"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v3, "type"

    iget-object v4, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v3, "stacktracerTime"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->f:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 316
    const-string/jumbo v3, "stacktracerInterval"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->g:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 317
    const-string/jumbo v3, "taskID"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string/jumbo v3, "isForceUpload"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string/jumbo v1, "userID"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    move v1, v11

    .line 309
    goto :goto_4

    .line 323
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wallet is not running"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :cond_13
    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->h:Ljava/lang/String;

    iget-object v2, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v9, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    move v6, v12

    :goto_5
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;->a()Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    new-instance v3, Lcom/alipay/mobile/logmonitor/util/d;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9}, Lcom/alipay/mobile/logmonitor/util/d;-><init>(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/e;)V

    iget-object v4, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v9, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/logmonitor/util/stack/AnrTracer;->a(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_15
    move v6, v11

    goto :goto_5
.end method

.method private a(Lcom/alipay/mobile/logmonitor/util/e;)V
    .locals 10

    .prologue
    .line 339
    iget-object v0, p1, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    const-string/jumbo v1, "any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 343
    :goto_0
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    iget-wide v2, p1, Lcom/alipay/mobile/logmonitor/util/e;->c:J

    iget-wide v4, p1, Lcom/alipay/mobile/logmonitor/util/e;->d:J

    iget-object v6, p1, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p1, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Z)V

    .line 351
    new-instance v1, Lcom/alipay/mobile/logmonitor/util/a;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/logmonitor/util/a;-><init>(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;Lcom/alipay/mobile/logmonitor/util/e;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a(Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;)V

    .line 364
    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a()V

    .line 365
    return-void

    .line 339
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 398
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 400
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 404
    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "com.eg.android.AlipayGphoneRC"

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    :cond_1
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processConfigMsg"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 140
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-ge v1, v0, :cond_1

    .line 144
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 145
    if-eqz v4, :cond_0

    .line 146
    new-instance v5, Lcom/alipay/mobile/logmonitor/util/e;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/logmonitor/util/e;-><init>(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :try_start_2
    const-string/jumbo v0, "from"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    div-long/2addr v6, v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    mul-long/2addr v6, v8

    iput-wide v6, v5, Lcom/alipay/mobile/logmonitor/util/e;->c:J

    .line 150
    const-string/jumbo v0, "to"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/alipay/mobile/logmonitor/util/e;->d:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    :goto_1
    :try_start_3
    const-string/jumbo v0, "network"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "taskId"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->h:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v6, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 161
    :catch_1
    move-exception v0

    .line 162
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 166
    :catch_2
    move-exception v0

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v0

    const-string/jumbo v1, "UserDiagnosticianTask"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v1

    const-string/jumbo v2, "UserDiagnosticianTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a()V

    .line 176
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v2, "UserDiagnostician"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    move-object v3, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ackResult:,isSuccess="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",diagnoseType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",diagnoseMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 100
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "userId"

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "taskId"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "type"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "isSuccess"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "diagnoseMsg"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :try_start_2
    const-string/jumbo v3, "utf-8"

    invoke-static {v1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 110
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_2

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "ackResult fail"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 113
    :catch_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    move-object v1, v2

    .line 114
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 116
    if-eqz v6, :cond_0

    .line 117
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    :cond_0
    if-eqz v1, :cond_1

    .line 121
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 127
    :cond_1
    :goto_1
    return-void

    .line 116
    :cond_2
    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 124
    :catch_1
    move-exception v0

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_2
    if-eqz v6, :cond_4

    .line 117
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    :cond_4
    if-eqz v2, :cond_5

    .line 121
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 124
    :cond_5
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_3

    .line 116
    :catchall_1
    move-exception v1

    move-object v2, v6

    move-object v6, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 113
    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_0

    :catch_5
    move-exception v1

    move-object v7, v1

    move-object v1, v6

    move-object v6, v0

    move-object v0, v7

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processPushMsg"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b:Ljava/lang/String;

    .line 187
    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "p"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 197
    :goto_0
    if-nez v2, :cond_0

    .line 263
    :goto_1
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_0

    .line 203
    :cond_0
    :try_start_1
    const-string/jumbo v0, "userID"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b:Ljava/lang/String;

    .line 204
    const-string/jumbo v0, "taskID"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->c:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :goto_2
    :try_start_2
    const-string/jumbo v0, "config"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 219
    :goto_3
    :try_start_3
    const-string/jumbo v3, "traceviewTime"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->d:J

    .line 220
    const-string/jumbo v3, "traceviewSize"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->e:I

    .line 222
    const-string/jumbo v3, "stackTracerTime"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->f:J

    .line 223
    const-string/jumbo v3, "stackTracerInterval"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->g:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 232
    :goto_4
    :try_start_4
    const-string/jumbo v0, "tasklist"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    move-object v2, v0

    .line 237
    :goto_5
    if-eqz v2, :cond_2

    .line 238
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 240
    :try_start_5
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 241
    if-eqz v3, :cond_1

    .line 242
    new-instance v4, Lcom/alipay/mobile/logmonitor/util/e;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/logmonitor/util/e;-><init>(Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 245
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v1, "from"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-long v7, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/alipay/mobile/logmonitor/util/e;->c:J

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v1, "to"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v7, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/alipay/mobile/logmonitor/util/e;->d:J
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 251
    :goto_7
    :try_start_7
    const-string/jumbo v1, "network"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/alipay/mobile/logmonitor/util/e;->b:Ljava/lang/String;

    .line 252
    const-string/jumbo v1, "type"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/alipay/mobile/logmonitor/util/e;->a:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->h:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    .line 257
    :cond_1
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 205
    :catch_1
    move-exception v0

    .line 206
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 213
    :catch_2
    move-exception v0

    .line 214
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_3

    .line 233
    :catch_3
    move-exception v0

    .line 234
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto/16 :goto_5

    .line 247
    :catch_4
    move-exception v1

    .line 248
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v5, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    .line 255
    :catch_5
    move-exception v1

    .line 256
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->i:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 262
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->a()V

    goto/16 :goto_1

    :catch_6
    move-exception v0

    goto/16 :goto_4
.end method
