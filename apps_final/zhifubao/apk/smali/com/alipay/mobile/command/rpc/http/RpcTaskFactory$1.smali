.class Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/alipay/mobile/command/model/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;)V
    .locals 0

    iput-object p2, p0, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;->a:Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;->a:Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;->getRequest()Lcom/alipay/mobile/command/model/Request;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;->a:Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;->getCallback()Lcom/alipay/mobile/command/rpc/http/TransportCallback;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/Response;

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/Request;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/Request;->cancel()V

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;->cancel(Z)Z

    :cond_4
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onCancelled(Lcom/alipay/mobile/command/model/Request;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onPostExecute(Lcom/alipay/mobile/command/model/Request;Lcom/alipay/mobile/command/model/Response;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/alipay/mobile/command/util/exception/HttpException;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/exception/HttpException;->getCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/exception/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/Request;->cancel()V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onCancelled(Lcom/alipay/mobile/command/model/Request;)V

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "An error occured while executing http request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
