.class final Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->b(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->b(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->c(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->d(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler$a;->a:Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    invoke-static {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a(Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
