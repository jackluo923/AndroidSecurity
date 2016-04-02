.class final Lcom/alipay/mobile/command/engine/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/engine/TaskExeService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/engine/TaskExeService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/engine/b;->a:Lcom/alipay/mobile/command/engine/TaskExeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v0, "manager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "initial env(time trigger\u3001 clear date.)"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/b;->a:Lcom/alipay/mobile/command/engine/TaskExeService;

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskExeService;->a()V

    invoke-static {}, Lcom/alipay/mobile/command/trigger/CmdCenterTimerTrigger;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "script"

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "\u542f\u52a8trriger\u5f02\u5e38"

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
