.class public Lcom/alipay/pushsdk/push/connection/k;
.super Lcom/alipay/pushsdk/push/connection/a;
.source "PushConnection.java"


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field protected i:Ljava/net/Socket;

.field j:Ljava/lang/String;

.field k:Lcom/alipay/pushsdk/push/connection/h;

.field l:Lcom/alipay/pushsdk/push/connection/d;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:I

.field private r:Ljava/util/Timer;

.field private s:I

.field private t:J

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alipay/pushsdk/push/connection/k;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 29
    sput-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/connection/a;-><init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;)V

    .line 37
    iput-object v1, p0, Lcom/alipay/pushsdk/push/connection/k;->j:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/alipay/pushsdk/push/connection/k;->n:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/alipay/pushsdk/push/connection/k;->o:Z

    .line 40
    sget v0, Lcom/alipay/pushsdk/push/c/b;->a:I

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/k;->p:I

    .line 42
    iput v2, p0, Lcom/alipay/pushsdk/push/connection/k;->q:I

    .line 47
    iput-object v1, p0, Lcom/alipay/pushsdk/push/connection/k;->r:Ljava/util/Timer;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/k;->s:I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/push/connection/k;->t:J

    .line 51
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->u:Ljava/lang/String;

    .line 497
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->v:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/connection/k;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alipay/pushsdk/push/connection/k;->s:I

    return v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/alipay/pushsdk/push/connection/k;->p:I

    .line 96
    return-void
.end method

.method protected final a(JI)V
    .locals 5

    .prologue
    .line 509
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/k;->i()V

    .line 512
    :cond_0
    iput p3, p0, Lcom/alipay/pushsdk/push/connection/k;->s:I

    .line 513
    iput-wide p1, p0, Lcom/alipay/pushsdk/push/connection/k;->t:J

    .line 516
    iget-wide v0, p0, Lcom/alipay/pushsdk/push/connection/k;->t:J

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/connection/m;->a(J)V

    .line 518
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/k;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->r:Ljava/util/Timer;

    .line 521
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->r:Ljava/util/Timer;

    new-instance v2, Lcom/alipay/pushsdk/push/connection/l;

    invoke-direct {v2, p0}, Lcom/alipay/pushsdk/push/connection/l;-><init>(Lcom/alipay/pushsdk/push/connection/k;)V

    .line 522
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->b()I

    move-result v3

    int-to-long v3, v3

    .line 521
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 518
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/alipay/pushsdk/push/a/a;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v11, 0x2

    .line 481
    :try_start_0
    iget-object v3, p0, Lcom/alipay/pushsdk/push/connection/k;->h:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->c()Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    move-result-object v2

    sget-object v4, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->required:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    if-ne v4, v2, :cond_6

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->b()I

    move-result v5

    const/4 v6, 0x3

    sget-object v7, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "PushConnection_connectUsingConfiguration:host="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " port="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/l;->f()J
    :try_end_0
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    :try_start_1
    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->f()Ljavax/net/SocketFactory;

    move-result-object v8

    if-nez v8, :cond_7

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v8, "connectUsingConfiguration socketFactory null, use direct."

    invoke-static {v2, v3, v8}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    :goto_1
    new-instance v8, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v8}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    const-string/jumbo v9, "push"

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    const-string/jumbo v9, "connect"

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    const-string/jumbo v9, "conStart"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "socketConTime"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "handShakeTime"

    const-wide/16 v6, -0x1

    const-wide/16 v9, 0x0

    cmp-long v2, v6, v9

    if-lez v2, :cond_a

    const-string/jumbo v2, "-1"

    :goto_2
    invoke-virtual {v8, v3, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v2, v3, v8}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v6, "connectUsingConfiguration socket is ready!"

    invoke-static {v2, v3, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_b

    :goto_3
    :try_start_2
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/alipay/pushsdk/push/connection/k;->e:Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/alipay/pushsdk/push/connection/k;->f:Ljava/io/DataOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v1, 0x4

    :try_start_3
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v3, "initConnection Reader and Writer are created!"

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    if-eqz v0, :cond_c

    :try_start_4
    new-instance v0, Lcom/alipay/pushsdk/push/connection/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/connection/h;-><init>(Lcom/alipay/pushsdk/push/connection/k;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    new-instance v0, Lcom/alipay/pushsdk/push/connection/d;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/connection/d;-><init>(Lcom/alipay/pushsdk/push/connection/k;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    :goto_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/h;->b()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/d;->b()V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initConnection packetReader="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", and packetWriter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "initConnection Reader and Writer are ready!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {p1, p0}, Lcom/alipay/pushsdk/push/a/a;->a(Lcom/alipay/pushsdk/push/connection/k;)V
    :try_end_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 482
    :cond_4
    :goto_5
    const/4 v0, 0x3

    :try_start_5
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 483
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "connected successfully"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_5 .. :try_end_5} :catch_1

    .line 493
    :cond_5
    :goto_6
    return-void

    :cond_6
    move v2, v0

    .line 481
    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_8

    const/4 v0, 0x2

    :try_start_6
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "connectUsingConfiguration ssl is needed, but it can\'t be supported!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not connect to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v1, v0}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_7 .. :try_end_7} :catch_1

    .line 485
    :catch_1
    move-exception v0

    .line 486
    invoke-interface {p1, p0}, Lcom/alipay/pushsdk/push/a/a;->b(Lcom/alipay/pushsdk/push/connection/k;)V

    .line 491
    sget-object v1, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v1, v0}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 481
    :cond_8
    :try_start_8
    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->h()Z
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x3

    :try_start_9
    sget-object v8, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v9, "connectUsingConfiguration proxy, createSocket direct try."

    invoke-static {v2, v8, v9}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->g()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_9 .. :try_end_9} :catch_1

    move-result-wide v2

    sub-long/2addr v2, v6

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const/4 v2, 0x3

    :try_start_a
    sget-object v8, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v9, "connectUsingConfiguration proxy, createSocket direct fail, proxy try."

    invoke-static {v2, v8, v9}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->f()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x3

    sget-object v8, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v9, "connectUsingConfiguration noProxy, just createSocket."

    invoke-static {v2, v8, v9}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->f()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v2, "0"

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    new-instance v1, Lcom/alipay/pushsdk/push/connection/PushException;

    const-string/jumbo v2, "Error establishing connection with server."

    invoke-direct {v1, v2, v0}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_a .. :try_end_a} :catch_1

    :catch_4
    move-exception v0

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error connecting to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v1, v0}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_b
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_b .. :try_end_b} :catch_1

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/h;->a()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/d;->a()V
    :try_end_c
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_4

    :catch_5
    move-exception v0

    :try_start_d
    throw v0

    :cond_d
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v2, "connectUsingConfiguration socket is failed!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string/jumbo v0, "create socket is failed."

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "socket : null!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v0, v1}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_d .. :try_end_d} :catch_1
.end method

.method public final a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 204
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacket()... isConnected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/k;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/k;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Have not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    sget-object v1, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    if-nez p1, :cond_3

    .line 214
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    :cond_3
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacket()... writer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->f:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    const-string/jumbo v2, ", reader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->e:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v6, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_4
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacket()... packet.id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/c/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/connection/h;->a(Lcom/alipay/pushsdk/push/c/a;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/k;->u:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/alipay/pushsdk/push/connection/k;->q:I

    .line 104
    return-void
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 80
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isConnected()...called="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/pushsdk/push/connection/k;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    const-string/jumbo v2, ", connection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/k;->o:Z

    return v0
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 88
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "setConnected()...isConnected=true"

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/k;->o:Z

    .line 92
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/alipay/pushsdk/push/connection/k;->p:I

    return v0
.end method

.method public final g()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 181
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "disconnect()... called!"

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    if-nez v0, :cond_2

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "shutdown() called..."

    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-boolean v4, p0, Lcom/alipay/pushsdk/push/connection/k;->o:Z

    iput v4, p0, Lcom/alipay/pushsdk/push/connection/k;->q:I

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/k;->i()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/d;->c()V

    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/h;->c()V

    :cond_5
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->e:Ljava/io/DataInputStream;

    if-eqz v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    iput-object v3, p0, Lcom/alipay/pushsdk/push/connection/k;->e:Ljava/io/DataInputStream;

    :cond_6
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->f:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->f:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iput-object v3, p0, Lcom/alipay/pushsdk/push/connection/k;->f:Ljava/io/DataOutputStream;

    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "shutdown()... Done!"

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/h;->d()V

    .line 193
    iput-object v3, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    .line 194
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/d;->d()V

    .line 195
    iput-object v3, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    .line 200
    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "disconnect()... done!"

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public final h()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 400
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lcom/alipay/pushsdk/push/connection/k;->m:Ljava/lang/String;

    const-string/jumbo v1, "resetConnection()..."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->r:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/k;->i()V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    if-eqz v0, :cond_2

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/h;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 415
    :goto_0
    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->k:Lcom/alipay/pushsdk/push/connection/h;

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    if-eqz v0, :cond_3

    .line 419
    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/d;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 422
    :goto_1
    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->l:Lcom/alipay/pushsdk/push/connection/d;

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->e:Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    .line 426
    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->e:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 429
    :goto_2
    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->e:Ljava/io/DataInputStream;

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->f:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_5

    .line 433
    :try_start_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->f:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 436
    :goto_3
    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->f:Ljava/io/DataOutputStream;

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    if-eqz v0, :cond_6

    .line 440
    :try_start_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 443
    :goto_4
    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/k;->i:Ljava/net/Socket;

    .line 446
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/k;->o:Z

    .line 447
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method protected final i()V
    .locals 2

    .prologue
    .line 500
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/k;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->r:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/k;->r:Ljava/util/Timer;

    .line 500
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
