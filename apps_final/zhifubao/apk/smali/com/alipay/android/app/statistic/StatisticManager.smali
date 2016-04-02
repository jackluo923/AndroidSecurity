.class public Lcom/alipay/android/app/statistic/StatisticManager;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

.field public static b:Ljava/io/File;

.field private static c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/lang/Object;

.field private static f:Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

.field private static final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alipay/android/app/statistic/record/StandardLogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/alipay/android/app/statistic/LogUploadTask;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->e:Ljava/lang/Object;

    sput-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->f:Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    sput-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    sput-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->g:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/alipay/android/app/statistic/LogUploadTask;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/LogUploadTask;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->h:Lcom/alipay/android/app/statistic/LogUploadTask;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "(/cashier/main|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Redo:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->i:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "resultStatus=\\{(\\d{3,10})\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->j:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/statistic/b;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/b;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v1, Lcom/alipay/android/app/statistic/StatisticManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    sget-object v2, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->c()V

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alipay/android/app/statistic/StatisticManager;->h:Lcom/alipay/android/app/statistic/LogUploadTask;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/LogUploadTask;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-virtual {v2}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/app/statistic/FileUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static varargs a(I[Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    :try_start_3
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->i:Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    :cond_3
    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_2
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f()V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g()V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->i(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    goto/16 :goto_0

    :pswitch_d
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    goto/16 :goto_0

    :pswitch_e
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v0, 0x0

    :try_start_6
    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static a(J)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/alipay/android/app/statistic/logfield/LogField;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "showform"

    aput-object v1, v0, v3

    const-string/jumbo v1, "1"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    const/16 v0, 0xe

    new-array v1, v4, [Ljava/lang/String;

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    if-nez p1, :cond_0

    aput-object p0, v0, v2

    const-string/jumbo v1, "click"

    aput-object v1, v0, v3

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    :goto_0
    invoke-static {v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void

    :cond_0
    aput-object p0, v0, v2

    const-string/jumbo v1, "click"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldError;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/statistic/logfield/LogFieldError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldError;

    const-string/jumbo v1, ""

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldError;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/statistic/logfield/LogFieldError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    int-to-long v0, v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(J)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "zip"

    aput-object v2, v0, v1

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->b(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->f:Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/IAppConfig;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->f:Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->a(J)V

    new-instance v0, Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->f:Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v1, Lcom/alipay/android/app/statistic/StatisticManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->g:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Lcom/alipay/android/app/statistic/StatisticManager;->c:Lcom/alipay/android/app/statistic/record/StandardLogRecord;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(J)V
    .locals 4

    const/16 v0, 0x9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;-><init>()V

    sget-object v1, Lcom/alipay/android/app/statistic/StatisticManager;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->b(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    int-to-long v0, v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->e(J)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static b(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "unzip"

    aput-object v2, v0, v1

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static c(J)V
    .locals 4

    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static c(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "encrypt"

    aput-object v2, v0, v1

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static d(J)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static d(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "decrypt"

    aput-object v2, v0, v1

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static e()V
    .locals 3

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "initial"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "click"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "/cashier/main"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(J)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "net_end"

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->g:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic g()V
    .locals 5

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v0, v1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/alipay/android/app/statistic/a;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/a;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0xa

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cleanExpiresFile:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has been dropped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic h()V
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/IAppConfig;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    new-instance v0, Lcom/alipay/android/app/statistic/c;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/c;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    :try_start_0
    invoke-static {v0}, Lcom/alipay/android/app/statistic/FileUtils;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/alipay/android/app/statistic/FileUtils;->b(Ljava/io/File;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/alipay/android/app/statistic/StatisticManager;->h:Lcom/alipay/android/app/statistic/LogUploadTask;

    invoke-virtual {v5, v4}, Lcom/alipay/android/app/statistic/LogUploadTask;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/FileUtils;->b(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "log"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
