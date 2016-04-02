.class final Lcom/alipay/pushsdk/util/log/b;
.super Ljava/lang/Object;
.source "BaseLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/util/log/a;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/util/log/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/util/log/b;->a:Lcom/alipay/pushsdk/util/log/a;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 62
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    sget-object v1, Lcom/alipay/pushsdk/util/log/d;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/b;->a:Lcom/alipay/pushsdk/util/log/a;

    iget-object v0, v0, Lcom/alipay/pushsdk/util/log/a;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 70
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/b;->a:Lcom/alipay/pushsdk/util/log/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/a;->a(Lcom/alipay/pushsdk/util/log/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {}, Lcom/alipay/pushsdk/util/log/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
