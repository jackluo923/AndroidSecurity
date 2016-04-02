.class final Lcom/alipay/pushsdk/util/g;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/util/f;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/util/f;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/util/g;->a:Lcom/alipay/pushsdk/util/f;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/pushsdk/util/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/pushsdk/util/g;->a:Lcom/alipay/pushsdk/util/f;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/f;->a(Lcom/alipay/pushsdk/util/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alipay/pushsdk/util/g;->a:Lcom/alipay/pushsdk/util/f;

    const-string/jumbo v1, "SerialExecutor"

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/f;->a(Lcom/alipay/pushsdk/util/f;Ljava/lang/String;)V

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/pushsdk/util/g;->a:Lcom/alipay/pushsdk/util/f;

    invoke-static {v2}, Lcom/alipay/pushsdk/util/f;->a(Lcom/alipay/pushsdk/util/f;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "  #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/pushsdk/util/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
