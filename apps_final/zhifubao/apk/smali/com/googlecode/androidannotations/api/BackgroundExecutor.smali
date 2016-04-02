.class public Lcom/googlecode/androidannotations/api/BackgroundExecutor;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    return-void
.end method
