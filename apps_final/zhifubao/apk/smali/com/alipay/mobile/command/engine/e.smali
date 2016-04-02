.class final Lcom/alipay/mobile/command/engine/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/engine/TaskExeService;

.field private final synthetic b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field private final synthetic c:J

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/engine/TaskExeService;Lcom/alipay/mobile/command/model/TriggerTypeEnum;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/engine/e;->a:Lcom/alipay/mobile/command/engine/TaskExeService;

    iput-object p2, p0, Lcom/alipay/mobile/command/engine/e;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    iput-wide p3, p0, Lcom/alipay/mobile/command/engine/e;->c:J

    iput-object p5, p0, Lcom/alipay/mobile/command/engine/e;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/command/engine/e;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/command/engine/f;

    iget-object v2, p0, Lcom/alipay/mobile/command/engine/e;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/command/engine/f;-><init>(Lcom/alipay/mobile/command/engine/e;Lcom/alipay/mobile/command/model/TriggerTypeEnum;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/command/engine/e;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->LOGIN:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/command/engine/e;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    iget-wide v1, p0, Lcom/alipay/mobile/command/engine/e;->c:J

    iget-object v3, p0, Lcom/alipay/mobile/command/engine/e;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/command/engine/e;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a(Lcom/alipay/mobile/command/model/TriggerTypeEnum;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "manager"

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "do "

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/alipay/mobile/command/engine/e;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v1, v6

    const-string/jumbo v2, "trigger  finish!"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "manager"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "do "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/command/engine/e;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "trigger  Error!"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v0, "manager"

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "do "

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/alipay/mobile/command/engine/e;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v1, v6

    const-string/jumbo v2, "trigger  finish!"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "manager"

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "do "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/alipay/mobile/command/engine/e;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v3, v2, v6

    const-string/jumbo v3, "trigger  finish!"

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
