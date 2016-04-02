.class Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Rpc-Background-Thread#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v1
.end method
