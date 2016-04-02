.class public final Lcom/alipay/android/app/data/BizData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/data/BizUiData;


# static fields
.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/android/app/data/BizDataUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private f:Lcom/alipay/android/app/data/BizDataUnit;

.field private g:Lcom/alipay/android/app/data/InteractionData;

.field private h:Lcom/alipay/android/app/data/DataSource;

.field private i:Lcom/alipay/android/app/data/ValidatedFrameData;

.field private j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

.field private k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

.field private l:Lcom/alipay/android/app/data/DataProcessor;


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alipay/android/app/data/BizData;->a:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/data/BizData;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/android/app/data/InteractionData;

    invoke-direct {v0}, Lcom/alipay/android/app/data/InteractionData;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->g:Lcom/alipay/android/app/data/InteractionData;

    new-instance v0, Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/data/ValidatedFrameData;-><init>(Lcom/alipay/android/app/data/BizData;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->i:Lcom/alipay/android/app/data/ValidatedFrameData;

    new-instance v0, Lcom/alipay/android/app/data/DataSource;

    iget-object v1, p0, Lcom/alipay/android/app/data/BizData;->i:Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/data/DataSource;-><init>(Lcom/alipay/android/app/data/ValidatedFrameData;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->h:Lcom/alipay/android/app/data/DataSource;

    new-instance v0, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    invoke-direct {v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    invoke-virtual {v0, p0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Lcom/alipay/android/app/data/BizUiData;)V

    invoke-static {}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a()Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/data/BizData;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a(I)Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/android/app/data/BizDataUnit;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/alipay/android/app/data/BizData;->e:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/BizData;->a:I

    return v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "InterruptedException"

    invoke-direct {v0, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/data/BizData;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/alipay/android/app/IRemoteCallback;
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/data/BizData;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->e(I)Lcom/alipay/android/app/IRemoteCallback;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/alipay/android/app/data/DataProcessor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->l:Lcom/alipay/android/app/data/DataProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/data/DataProcessor;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/data/DataProcessor;-><init>(Lcom/alipay/android/app/data/BizData;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->l:Lcom/alipay/android/app/data/DataProcessor;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->l:Lcom/alipay/android/app/data/DataProcessor;

    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "InterruptedException"

    invoke-direct {v0, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    return-object v0
.end method

.method public final g()Lcom/alipay/android/app/data/ValidatedFrameData;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->i:Lcom/alipay/android/app/data/ValidatedFrameData;

    return-object v0
.end method

.method public final h()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/data/BizData;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->b()V

    :cond_0
    invoke-static {}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a()Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/data/BizData;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->b(I)V

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    invoke-interface {v0}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->dispose()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/alipay/android/app/data/BizData;->l:Lcom/alipay/android/app/data/DataProcessor;

    iput-object v2, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    iput-object v2, p0, Lcom/alipay/android/app/data/BizData;->k:Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    iput v3, p0, Lcom/alipay/android/app/data/BizData;->a:I

    iput v3, p0, Lcom/alipay/android/app/data/BizData;->b:I

    iput-object v2, p0, Lcom/alipay/android/app/data/BizData;->c:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->j:Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/BizData;->b:I

    return v0
.end method

.method public final k()Lcom/alipay/android/app/data/InteractionData;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->g:Lcom/alipay/android/app/data/InteractionData;

    return-object v0
.end method

.method public final l()Lcom/alipay/android/app/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->h:Lcom/alipay/android/app/data/DataSource;

    return-object v0
.end method

.method public final m()Lcom/alipay/android/app/data/BizDataUnit;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/data/BizData;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->f:Lcom/alipay/android/app/data/BizDataUnit;

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/data/BizData;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizDataUnit;

    iput-object v0, p0, Lcom/alipay/android/app/data/BizData;->f:Lcom/alipay/android/app/data/BizDataUnit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/data/BizData;->f:Lcom/alipay/android/app/data/BizDataUnit;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
