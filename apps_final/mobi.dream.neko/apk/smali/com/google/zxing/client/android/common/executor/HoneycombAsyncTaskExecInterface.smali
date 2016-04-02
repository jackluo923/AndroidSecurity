.class public final Lcom/google/zxing/client/android/common/executor/HoneycombAsyncTaskExecInterface;
.super Ljava/lang/Object;
.source "HoneycombAsyncTaskExecInterface.java"

# interfaces
.implements Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TT;**>;"
    .local p2, "args":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    return-void
.end method
