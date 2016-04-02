.class public final Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->b:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor$1;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->b:Ljava/util/concurrent/ThreadFactory;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->b:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public static final run(Ljava/lang/Runnable;)V
    .locals 8

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
