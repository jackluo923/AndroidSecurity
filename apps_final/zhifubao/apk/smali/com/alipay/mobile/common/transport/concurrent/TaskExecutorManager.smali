.class public Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;
.super Ljava/lang/Object;
.source "TaskExecutorManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskExecutorManager"

.field public static final TASK_TYPE_AMR:I = 0x3

.field public static final TASK_TYPE_BG_RPC:I = 0x1

.field public static final TASK_TYPE_FG_RPC:I = 0x0

.field public static final TASK_TYPE_IMG:I = 0x2

.field private static a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field private f:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

.field private g:Landroid/content/Context;

.field private h:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/http/HttpTask;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/http/HttpTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 43
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 52
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->k:Ljava/util/Map;

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 43
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 52
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->k:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private a(I)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .prologue
    .line 252
    packed-switch p1, :pswitch_data_0

    .line 269
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getAmrExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    .line 270
    const-string/jumbo v1, "TASK_TYPE_AMR"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    .line 272
    :goto_0
    return-object v0

    .line 254
    :pswitch_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getFgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    .line 255
    const-string/jumbo v1, "TASK_TYPE_FG_RPC"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    goto :goto_0

    .line 259
    :pswitch_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getBgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    .line 260
    const-string/jumbo v1, "TASK_TYPE_BG_RPC"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getImgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    .line 265
    const-string/jumbo v1, "TASK_TYPE_IMG"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskTypeName(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->setTaskType(I)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 318
    :goto_0
    return-object v0

    .line 312
    :cond_0
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 314
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getBgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 316
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    .line 295
    :goto_0
    return-object v0

    .line 294
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;-><init>(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->f:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpTask;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 393
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": TaskTypeName = %s, Active Task = %d, Completed Task = %d, All Task = %d, Queue Size = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getTaskTypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpTask;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;Lcom/alipay/mobile/common/transport/http/HttpTask;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 24
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setResp2OtcWaitTask#%s otcWaitTaskType=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]  API="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/Response;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->set(Lcom/alipay/mobile/common/transport/Response;)V

    const-string/jumbo v1, "TaskExecutorManager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "otcWaitTask.set(..);"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->setException(Ljava/lang/Throwable;)V

    const-string/jumbo v0, "TaskExecutorManager"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "otcWaitTask.setException(..);"

    aput-object v3, v1, v6

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;Lcom/alipay/mobile/common/transport/http/HttpTask;)V
    .locals 4

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "TaskExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskType()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getFgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getActiveCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getBgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getImgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getAmrExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v2

    monitor-enter p0

    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->resume()V

    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->resume()V

    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->resume()V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "TaskExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetPauseBgExecutor mPauseBgExecutor=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v0, "TaskExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 340
    :goto_0
    return-object v0

    .line 334
    :cond_0
    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 336
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getFgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 338
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 363
    :goto_0
    return-object v0

    .line 357
    :cond_0
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 359
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getImgThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 361
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 385
    :goto_0
    return-object v0

    .line 379
    :cond_0
    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 381
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/concurrent/NetThreadPoolExeFactory;->getAmrThreadPool(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 383
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->e:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    .line 85
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    .line 83
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    sget-object v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public closeAllSingleThreadPool()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 233
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 236
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 239
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 240
    return-void
.end method

.method public closeThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public execute(ILcom/alipay/mobile/common/transport/http/HttpWorker;)Ljava/util/concurrent/FutureTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alipay/mobile/common/transport/http/HttpWorker;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(I)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v3

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  OperationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "TaskExecutorManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpTask;

    invoke-direct {v1, p2}, Lcom/alipay/mobile/common/transport/http/HttpTask;-><init>(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->setTaskType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->h:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;-><init>(Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->h:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->h:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$TaskDoneObserver;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->addDoneObserver(Ljava/util/Observer;)V

    .line 102
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskType()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskType()I

    move-result v4

    if-ne v4, v2, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskType()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(I)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isReady()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpTask;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpTask;->cancel(Z)Z

    const-string/jumbo v4, "TaskExecutorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "The old bgtask is now ready state\uff0cso be cancelled. API="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v0, v2

    .line 103
    :goto_2
    if-nez v0, :cond_7

    move-object v0, v1

    .line 117
    :goto_3
    return-object v0

    .line 97
    :cond_3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "  Uri: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 102
    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isBeforeRun()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpTask;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpTask;->cancel(Z)Z

    const-string/jumbo v4, "TaskExecutorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "The old bgtask is now \'BeforeRun\' state \uff0cso be cancelled.  API="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isRunning()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isReady()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isBeforeRun()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_6
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpTask;->setOtcWaitTask(Z)V

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->k:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "TaskExecutorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "The old task ready to run. oldTaskType=["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] newTaskType=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]  API="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 107
    :cond_7
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->j:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->is2GMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->is3GMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getTaskType()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "TaskExecutorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ifDoPauseBgExecutor mPauseBgExecutor=["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_a
    :goto_4
    :try_start_1
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 117
    goto/16 :goto_3

    .line 109
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->getTaskType()I

    move-result v0

    if-eqz v0, :cond_a

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->isPaused()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;->pause()V

    :cond_c
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/HttpTask;

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public getAmrExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->d(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getBgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getFgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->b(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getImgExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->a()Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager$FIFOPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->c(Landroid/content/Context;Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method
