.class public abstract Lcom/appyet/f/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/appyet/f/g;

.field private static volatile d:Ljava/util/concurrent/Executor;

.field public static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private final f:Lcom/appyet/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appyet/f/i",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile h:Lcom/appyet/f/h;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/appyet/f/b;

    invoke-direct {v0}, Lcom/appyet/f/b;-><init>()V

    sput-object v0, Lcom/appyet/f/a;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/appyet/f/a;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/appyet/f/a;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/appyet/f/a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/appyet/f/a;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/appyet/f/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appyet/f/g;-><init>(B)V

    sput-object v0, Lcom/appyet/f/a;->c:Lcom/appyet/f/g;

    sget-object v0, Lcom/appyet/f/a;->e:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/appyet/f/a;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appyet/f/h;->a:Lcom/appyet/f/h;

    iput-object v0, p0, Lcom/appyet/f/a;->h:Lcom/appyet/f/h;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/appyet/f/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/appyet/f/c;

    invoke-direct {v0, p0}, Lcom/appyet/f/c;-><init>(Lcom/appyet/f/a;)V

    iput-object v0, p0, Lcom/appyet/f/a;->f:Lcom/appyet/f/i;

    new-instance v0, Lcom/appyet/f/d;

    iget-object v1, p0, Lcom/appyet/f/a;->f:Lcom/appyet/f/i;

    invoke-direct {v0, p0, v1}, Lcom/appyet/f/d;-><init>(Lcom/appyet/f/a;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/appyet/f/a;->g:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/appyet/f/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/f/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/appyet/f/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/appyet/f/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    const/4 v4, 0x1

    sget-object v0, Lcom/appyet/f/a;->c:Lcom/appyet/f/g;

    new-instance v1, Lcom/appyet/f/f;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/appyet/f/f;-><init>(Lcom/appyet/f/a;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/appyet/f/g;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic b(Lcom/appyet/f/a;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/f/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/appyet/f/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/appyet/f/a;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/f/a;->g:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/appyet/f/h;->c:Lcom/appyet/f/h;

    iput-object v0, p0, Lcom/appyet/f/a;->h:Lcom/appyet/f/h;

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Lcom/appyet/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/appyet/f/a",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/appyet/f/a;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/appyet/f/a;->h:Lcom/appyet/f/h;

    sget-object v2, Lcom/appyet/f/h;->a:Lcom/appyet/f/h;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/appyet/f/e;->a:[I

    iget-object v2, p0, Lcom/appyet/f/a;->h:Lcom/appyet/f/h;

    invoke-virtual {v2}, Lcom/appyet/f/h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    sget-object v1, Lcom/appyet/f/h;->b:Lcom/appyet/f/h;

    iput-object v1, p0, Lcom/appyet/f/a;->h:Lcom/appyet/f/h;

    invoke-virtual {p0}, Lcom/appyet/f/a;->a()V

    iget-object v1, p0, Lcom/appyet/f/a;->f:Lcom/appyet/f/i;

    iput-object p1, v1, Lcom/appyet/f/i;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/appyet/f/a;->g:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected varargs abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected varargs c()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public final d()Lcom/appyet/f/h;
    .locals 1

    iget-object v0, p0, Lcom/appyet/f/a;->h:Lcom/appyet/f/h;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/f/a;->g:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method
