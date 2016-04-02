.class Lcom/inmobi/commons/cache/RetryMechanism$a;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;

.field final synthetic b:Lcom/inmobi/commons/cache/RetryMechanism;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/cache/RetryMechanism;Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->b:Lcom/inmobi/commons/cache/RetryMechanism;

    iput-object p2, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->a:Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->a:Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;

    invoke-interface {v0}, Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;->run()V

    iget-object v0, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->a:Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;

    invoke-interface {v0}, Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;->completed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->b:Lcom/inmobi/commons/cache/RetryMechanism;

    invoke-static {v0}, Lcom/inmobi/commons/cache/RetryMechanism;->a(Lcom/inmobi/commons/cache/RetryMechanism;)I

    iget-object v0, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->b:Lcom/inmobi/commons/cache/RetryMechanism;

    invoke-static {v0}, Lcom/inmobi/commons/cache/RetryMechanism;->b(Lcom/inmobi/commons/cache/RetryMechanism;)I

    move-result v0

    iget-object v1, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->b:Lcom/inmobi/commons/cache/RetryMechanism;

    invoke-static {v1}, Lcom/inmobi/commons/cache/RetryMechanism;->c(Lcom/inmobi/commons/cache/RetryMechanism;)I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Exception occured while running retry mechanism and will the limit for retrying has been reached."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->a:Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;

    invoke-interface {v0}, Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;->completed()V

    goto :goto_0

    :cond_0
    const-string v0, "[InMobi]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception occured while running retry mechanism and will retry in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->b:Lcom/inmobi/commons/cache/RetryMechanism;

    invoke-static {v2}, Lcom/inmobi/commons/cache/RetryMechanism;->b(Lcom/inmobi/commons/cache/RetryMechanism;)I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->b:Lcom/inmobi/commons/cache/RetryMechanism;

    invoke-static {v3}, Lcom/inmobi/commons/cache/RetryMechanism;->d(Lcom/inmobi/commons/cache/RetryMechanism;)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->b:Lcom/inmobi/commons/cache/RetryMechanism;

    iget-object v1, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->a:Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;

    iget-object v2, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->b:Lcom/inmobi/commons/cache/RetryMechanism;

    invoke-static {v2}, Lcom/inmobi/commons/cache/RetryMechanism;->b(Lcom/inmobi/commons/cache/RetryMechanism;)I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/commons/cache/RetryMechanism$a;->b:Lcom/inmobi/commons/cache/RetryMechanism;

    invoke-static {v3}, Lcom/inmobi/commons/cache/RetryMechanism;->d(Lcom/inmobi/commons/cache/RetryMechanism;)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/cache/RetryMechanism;->a(Lcom/inmobi/commons/cache/RetryMechanism;Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;I)V

    goto :goto_0
.end method
