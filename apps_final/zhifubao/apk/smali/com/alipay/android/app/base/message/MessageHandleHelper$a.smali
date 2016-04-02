.class final Lcom/alipay/android/app/base/message/MessageHandleHelper$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/base/message/MessageHandleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/base/message/MessageHandleHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/base/message/MessageHandleHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->a(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->b(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->b(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->a(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->c(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->d(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->e(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->f(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/base/message/MspMessage;

    iget v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iget-object v3, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    iget v4, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iget v5, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {v3, v4, v5}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->a(Lcom/alipay/android/app/base/message/MessageHandleHelper;II)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    :try_start_4
    iget-object v2, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-static {v2}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->c(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/android/app/base/message/IMessageHandlerAdapter;->a(Lcom/alipay/android/app/base/message/MspMessage;)V

    iget v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v3, 0x3eb

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v3, 0x7d1

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_1

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/base/message/MessageHandleHelper$a;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-static {v2}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->g(Lcom/alipay/android/app/base/message/MessageHandleHelper;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :cond_3
    return-void
.end method
