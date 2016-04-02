.class public abstract Lmobi/monaca/utils/MyAsyncTask;
.super Ljava/lang/Object;
.source "MyAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected backgroundThread:Ljava/lang/Thread;

.field private currentStatus:Landroid/os/AsyncTask$Status;

.field final handler:Landroid/os/Handler;

.field protected isExecuted:Z

.field private mIsCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask;, "Lmobi/monaca/utils/MyAsyncTask<TA;TB;TC;>;"
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v1, p0, Lmobi/monaca/utils/MyAsyncTask;->isExecuted:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/utils/MyAsyncTask;->backgroundThread:Ljava/lang/Thread;

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/monaca/utils/MyAsyncTask;->handler:Landroid/os/Handler;

    .line 16
    iput-boolean v1, p0, Lmobi/monaca/utils/MyAsyncTask;->mIsCancelled:Z

    .line 17
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    iput-object v0, p0, Lmobi/monaca/utils/MyAsyncTask;->currentStatus:Landroid/os/AsyncTask$Status;

    return-void
.end method

.method static synthetic access$002(Lmobi/monaca/utils/MyAsyncTask;Landroid/os/AsyncTask$Status;)Landroid/os/AsyncTask$Status;
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/utils/MyAsyncTask;
    .param p1, "x1"    # Landroid/os/AsyncTask$Status;

    .prologue
    .line 11
    iput-object p1, p0, Lmobi/monaca/utils/MyAsyncTask;->currentStatus:Landroid/os/AsyncTask$Status;

    return-object p1
.end method


# virtual methods
.method public cancel(Z)V
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 59
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask;, "Lmobi/monaca/utils/MyAsyncTask<TA;TB;TC;>;"
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lmobi/monaca/utils/MyAsyncTask;->backgroundThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lmobi/monaca/utils/MyAsyncTask;->backgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/utils/MyAsyncTask;->mIsCancelled:Z

    .line 66
    return-void
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TA;)TC;"
        }
    .end annotation
.end method

.method public varargs execute([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TA;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask;, "Lmobi/monaca/utils/MyAsyncTask<TA;TB;TC;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TA;"
    iget-boolean v0, p0, Lmobi/monaca/utils/MyAsyncTask;->isExecuted:Z

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This task is already executed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/utils/MyAsyncTask;->onPreExecute()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/utils/MyAsyncTask;->isExecuted:Z

    .line 26
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iput-object v0, p0, Lmobi/monaca/utils/MyAsyncTask;->currentStatus:Landroid/os/AsyncTask$Status;

    .line 28
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmobi/monaca/utils/MyAsyncTask$1;

    invoke-direct {v1, p0, p1}, Lmobi/monaca/utils/MyAsyncTask$1;-><init>(Lmobi/monaca/utils/MyAsyncTask;[Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lmobi/monaca/utils/MyAsyncTask;->backgroundThread:Ljava/lang/Thread;

    .line 42
    iget-object v0, p0, Lmobi/monaca/utils/MyAsyncTask;->backgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    return-void
.end method

.method public getStatus()Landroid/os/AsyncTask$Status;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask;, "Lmobi/monaca/utils/MyAsyncTask<TA;TB;TC;>;"
    iget-object v0, p0, Lmobi/monaca/utils/MyAsyncTask;->currentStatus:Landroid/os/AsyncTask$Status;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask;, "Lmobi/monaca/utils/MyAsyncTask<TA;TB;TC;>;"
    iget-boolean v0, p0, Lmobi/monaca/utils/MyAsyncTask;->mIsCancelled:Z

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask;, "Lmobi/monaca/utils/MyAsyncTask<TA;TB;TC;>;"
    iget-boolean v0, p0, Lmobi/monaca/utils/MyAsyncTask;->isExecuted:Z

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask;, "Lmobi/monaca/utils/MyAsyncTask<TA;TB;TC;>;"
    .local p1, "result":Ljava/lang/Object;, "TC;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask;, "Lmobi/monaca/utils/MyAsyncTask<TA;TB;TC;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TB;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask;, "Lmobi/monaca/utils/MyAsyncTask<TA;TB;TC;>;"
    .local p1, "b":[Ljava/lang/Object;, "[TB;"
    return-void
.end method

.method protected varargs publishProgress([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TB;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask;, "Lmobi/monaca/utils/MyAsyncTask<TA;TB;TC;>;"
    .local p1, "b":[Ljava/lang/Object;, "[TB;"
    iget-object v0, p0, Lmobi/monaca/utils/MyAsyncTask;->handler:Landroid/os/Handler;

    new-instance v1, Lmobi/monaca/utils/MyAsyncTask$2;

    invoke-direct {v1, p0, p1}, Lmobi/monaca/utils/MyAsyncTask$2;-><init>(Lmobi/monaca/utils/MyAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method
