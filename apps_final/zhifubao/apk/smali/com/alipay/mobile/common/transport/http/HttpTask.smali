.class public Lcom/alipay/mobile/common/transport/http/HttpTask;
.super Ljava/util/concurrent/FutureTask;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/alipay/mobile/common/transport/Response;",
        ">;"
    }
.end annotation


# static fields
.field public static final TASK_STATE_AFTER_RUN:I = 0x2

.field public static final TASK_STATE_BEFORE_RUN:I = 0x0

.field public static final TASK_STATE_DONE:I = 0x4

.field public static final TASK_STATE_READY:I = -0x1

.field public static final TASK_STATE_RUNNING:I = 0x1


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

.field private b:I

.field private c:Ljava/util/Observable;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->d:I

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 49
    return-void
.end method


# virtual methods
.method public addDoneObserver(Ljava/util/Observer;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->c:Ljava/util/Observable;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpTask$DoneObservable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/HttpTask$DoneObservable;-><init>(Lcom/alipay/mobile/common/transport/http/HttpTask;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->c:Ljava/util/Observable;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->c:Ljava/util/Observable;

    invoke-virtual {v0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 143
    return-void
.end method

.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/Request;->cancel()V

    .line 120
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public done()V
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->d:I

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->c:Ljava/util/Observable;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/Request;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v2

    .line 63
    if-nez v2, :cond_1

    .line 64
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/Response;

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/Request;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 71
    :cond_2
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/Request;->cancel()V

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->cancel(Z)Z

    .line 75
    :cond_4
    invoke-interface {v2, v1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const/4 v3, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v3, v0}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_5
    if-eqz v0, :cond_0

    .line 77
    :try_start_1
    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    goto :goto_0

    .line 98
    :catch_2
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/Request;->cancel()V

    .line 99
    invoke-interface {v2, v1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V

    goto :goto_0

    .line 100
    :catch_3
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "An error occured while executing http request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fail(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->setException(Ljava/lang/Throwable;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/Request;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    const/4 v2, 0x7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->e:Ljava/lang/String;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskState()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->d:I

    return v0
.end method

.method public getTaskType()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->b:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->a:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBeforeRun()Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->d:I

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOtcWaitTask()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->f:Z

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->d:I

    if-ne v1, v0, :cond_0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->d:I

    .line 54
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 55
    return-void
.end method

.method public set(Lcom/alipay/mobile/common/transport/Response;)V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/alipay/mobile/common/transport/Response;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpTask;->set(Lcom/alipay/mobile/common/transport/Response;)V

    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method public setOtcWaitTask(Z)V
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->f:Z

    .line 205
    return-void
.end method

.method public setTaskState(I)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->d:I

    .line 223
    return-void
.end method

.method public setTaskType(I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/alipay/mobile/common/transport/http/HttpTask;->b:I

    .line 147
    return-void
.end method
