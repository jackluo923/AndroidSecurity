.class final Lcom/alipay/mobile/command/manager/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/alipay/mobile/command/listener/NotifyListener;

.field private final synthetic c:Lcom/alipay/mobile/command/manager/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/listener/NotifyListener;Lcom/alipay/mobile/command/manager/c;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/command/manager/a;->b:Lcom/alipay/mobile/command/listener/NotifyListener;

    iput-object p2, p0, Lcom/alipay/mobile/command/manager/a;->c:Lcom/alipay/mobile/command/manager/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/a;->a:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/a;->b:Lcom/alipay/mobile/command/listener/NotifyListener;

    iget-object v1, p0, Lcom/alipay/mobile/command/manager/a;->c:Lcom/alipay/mobile/command/manager/c;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/manager/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/command/listener/NotifyListener;->isMatch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "listener"

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "\u5f00\u59cb\u5904\u7406\u6d88\u606f:"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alipay/mobile/command/manager/a;->c:Lcom/alipay/mobile/command/manager/c;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/a;->b:Lcom/alipay/mobile/command/listener/NotifyListener;

    iget-object v1, p0, Lcom/alipay/mobile/command/manager/a;->c:Lcom/alipay/mobile/command/manager/c;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/manager/c;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/manager/ListenerManager;->a(Lcom/alipay/mobile/command/listener/NotifyListener;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/manager/a;->a:Ljava/util/concurrent/Future;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/command/manager/a;->a:Ljava/util/concurrent/Future;

    const-wide/32 v1, 0xea60

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string/jumbo v0, "listener"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "\u6d88\u606f\u63cf\u8ff0:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/command/manager/a;->b:Lcom/alipay/mobile/command/listener/NotifyListener;

    invoke-interface {v3}, Lcom/alipay/mobile/command/listener/NotifyListener;->desrc()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ",\u4efb\u52a1\u6267\u884c\u5b8c\u6bd5."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/a;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "listener"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string/jumbo v3, "\u6267\u884c\u88ab\u4e2d\u65ad"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/command/manager/a;->b:Lcom/alipay/mobile/command/listener/NotifyListener;

    invoke-interface {v3}, Lcom/alipay/mobile/command/listener/NotifyListener;->desrc()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/a;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "listener"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string/jumbo v3, "\u6267\u884c\u5f02\u5e38"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/command/manager/a;->b:Lcom/alipay/mobile/command/listener/NotifyListener;

    invoke-interface {v3}, Lcom/alipay/mobile/command/listener/NotifyListener;->desrc()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/a;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "listener"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string/jumbo v3, "\u6267\u884c\u8d85\u65f6"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/command/manager/a;->b:Lcom/alipay/mobile/command/listener/NotifyListener;

    invoke-interface {v3}, Lcom/alipay/mobile/command/listener/NotifyListener;->desrc()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/command/manager/a;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/command/manager/a;->a:Ljava/util/concurrent/Future;

    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v0
.end method
