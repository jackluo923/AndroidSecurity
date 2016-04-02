.class Lcom/alipay/pushsdk/push/connection/h;
.super Ljava/lang/Object;
.source "PacketWriter.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Ljava/io/DataOutputStream;

.field private d:Lcom/alipay/pushsdk/push/connection/k;

.field private final e:Ljava/util/concurrent/BlockingQueue;

.field private f:Z

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/alipay/pushsdk/push/connection/h;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/connection/h;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/alipay/pushsdk/push/connection/k;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/push/connection/h;->g:J

    .line 47
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    .line 48
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/h;->d:Lcom/alipay/pushsdk/push/connection/k;

    .line 49
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/h;->a()V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/connection/h;Ljava/lang/Thread;)V
    .locals 9

    .prologue
    .line 167
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/h;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->b:Ljava/lang/Thread;

    if-eq v0, p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/connection/h;->e()Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/h;->c:Ljava/io/DataOutputStream;

    monitor-enter v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x4

    :try_start_4
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/connection/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "writePackets curMsgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/h;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->l()[B

    move-result-object v3

    if-eqz v3, :cond_8

    array-length v4, v3

    if-ltz v4, :cond_8

    array-length v4, v3

    invoke-virtual {v0, v4}, Lcom/alipay/pushsdk/push/c/a;->e(I)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->j()I

    move-result v4

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->g()I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->k()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->j()I

    move-result v8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v3

    if-lez v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->j()I

    move-result v6

    array-length v7, v3

    invoke-static {v3, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/h;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/pushsdk/push/connection/h;->g:J

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->b()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/h;->d:Lcom/alipay/pushsdk/push/connection/k;

    iget-wide v3, p0, Lcom/alipay/pushsdk/push/connection/h;->g:J

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->a()I

    move-result v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/pushsdk/push/connection/k;->a(JI)V

    :cond_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    :try_start_5
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v0, 0x4

    :try_start_6
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/connection/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "writePackets queue len="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/h;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/h;->f:Z

    const-string/jumbo v0, "IOException happened when writer to write."

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "IOException : write"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v0, v1}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "52"

    invoke-virtual {v2, v0}, Lcom/alipay/pushsdk/push/connection/PushException;->setType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->d:Lcom/alipay/pushsdk/push/connection/k;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/connection/PushException;)V

    goto/16 :goto_1

    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    const-string/jumbo v2, "toBytes error."

    invoke-direct {v0, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v1

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_1
    move-exception v0

    :try_start_a
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    :try_start_b
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/h;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :goto_2
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private e()Lcom/alipay/pushsdk/push/c/a;
    .locals 6

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/pushsdk/push/connection/h;->f:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/c/a;

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    return-object v0

    .line 153
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 155
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    const/4 v1, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/connection/h;->a:Ljava/lang/String;

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "nextPacket queue len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-static {v1, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->d:Lcom/alipay/pushsdk/push/connection/k;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/connection/k;->f:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->c:Ljava/io/DataOutputStream;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/h;->f:Z

    .line 61
    new-instance v0, Lcom/alipay/pushsdk/push/connection/i;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/connection/i;-><init>(Lcom/alipay/pushsdk/push/connection/h;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->b:Ljava/lang/Thread;

    .line 66
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->b:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Packet Writer ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/h;->d:Lcom/alipay/pushsdk/push/connection/k;

    iget v2, v2, Lcom/alipay/pushsdk/push/connection/k;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->b:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 69
    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    .line 78
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/alipay/pushsdk/push/connection/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacket() enter... done="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/pushsdk/push/connection/h;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/h;->f:Z

    if-nez v0, :cond_2

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 98
    const/4 v0, 0x4

    :try_start_1
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const/4 v0, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/connection/h;->a:Ljava/lang/String;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendPacket queue len="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_2
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    sget-object v1, Lcom/alipay/pushsdk/push/connection/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/h;->f:Z

    .line 131
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/h;->d:Lcom/alipay/pushsdk/push/connection/k;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/connection/k;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    return-void
.end method
