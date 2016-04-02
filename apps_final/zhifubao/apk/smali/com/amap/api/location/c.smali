.class public Lcom/amap/api/location/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/aps/k;

.field volatile b:Z

.field c:Z

.field private volatile d:Z

.field private e:Landroid/content/Context;

.field private f:J

.field private g:Lcom/amap/api/location/a$a;

.field private h:Lcom/amap/api/location/a;

.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    iput-boolean v2, p0, Lcom/amap/api/location/c;->d:Z

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/c;->f:J

    iput-boolean v2, p0, Lcom/amap/api/location/c;->b:Z

    iput-boolean v2, p0, Lcom/amap/api/location/c;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    iput-object p3, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    invoke-virtual {p0, v2}, Lcom/amap/api/location/c;->b(Z)V

    iput-object p1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    new-instance v0, Lcom/aps/a;

    invoke-direct {v0}, Lcom/aps/a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    iput-object p2, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    return-void
.end method

.method private d()Lcom/aps/c;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0}, Lcom/aps/k;->a()Lcom/aps/c;
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/amap/api/location/c;->c:Z

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/location/c;->c:Z
    :try_end_1
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/aps/c;

    invoke-direct {v0}, Lcom/aps/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/aps/c;->a(Lcom/amap/api/location/core/AMapLocException;)V

    iput-boolean v2, p0, Lcom/amap/api/location/c;->c:Z

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    iput-boolean v2, p0, Lcom/amap/api/location/c;->c:Z

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private e()Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-wide v3, v3, Lcom/amap/api/location/a;->d:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x5

    iget-wide v5, p0, Lcom/amap/api/location/c;->f:J

    mul-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iput-boolean v0, v1, Lcom/amap/api/location/a;->c:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method a(J)V
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/amap/api/location/c;->f:J

    :cond_0
    return-void
.end method

.method a(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, p1}, Lcom/aps/k;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method a(Lcom/aps/j;Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, p1, p2}, Lcom/aps/k;->a(Lcom/aps/j;Landroid/app/PendingIntent;)V

    return-void
.end method

.method declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/location/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/location/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/location/c;->a(Z)V

    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->b()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/c;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, p1}, Lcom/aps/k;->b(Landroid/app/PendingIntent;)V

    return-void
.end method

.method b(Lcom/aps/j;Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, p1, p2}, Lcom/aps/k;->b(Lcom/aps/j;Landroid/app/PendingIntent;)V

    return-void
.end method

.method declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/location/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0}, Lcom/aps/k;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 7

    const/4 v6, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/location/c;->i:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    iget-object v1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/aps/k;->a(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aps/k;->a(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "key"

    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    const-string/jumbo v0, "X-INFO"

    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v2

    const-string/jumbo v3, "loc"

    invoke-virtual {v2, v3}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/c;->c()Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    :try_start_4
    const-string/jumbo v3, "ex"

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/aps/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    :goto_2
    :try_start_5
    const-string/jumbo v0, "X-BIZ"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "User-Agent"

    const-string/jumbo v2, "AMAP Location SDK Android 1.3.1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, v1}, Lcom/aps/k;->a(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/amap/api/location/c;->i:Z

    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    move-result v0

    if-nez v0, :cond_b

    const/4 v1, 0x0

    :try_start_7
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->c:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/amap/api/location/c;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->e:Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_c

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    iget-wide v2, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_9

    :try_start_9
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->e:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->c:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/amap/api/location/c;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v6, :cond_a

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    :cond_a
    :try_start_a
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_1d

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :cond_b
    :goto_5
    :try_start_b
    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_3

    :cond_c
    :try_start_10
    invoke-direct {p0}, Lcom/amap/api/location/c;->d()Lcom/aps/c;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v0, Lcom/aps/c;

    invoke-direct {v0}, Lcom/aps/c;-><init>()V

    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/aps/c;->a(Lcom/amap/api/location/core/AMapLocException;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/location/c;->c:Z

    move-object v2, v0

    :goto_6
    if-eqz v2, :cond_1f

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "lbs"

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->f()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v2}, Lcom/aps/c;->e()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    invoke-virtual {v2}, Lcom/aps/c;->g()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    invoke-virtual {v2}, Lcom/aps/c;->h()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    invoke-virtual {v2}, Lcom/aps/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setPoiId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setFloor(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setRoad(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setPoiName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->a()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setAMapException(Lcom/amap/api/location/core/AMapLocException;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "citycode"

    invoke-virtual {v2}, Lcom/aps/c;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "desc"

    invoke-virtual {v2}, Lcom/aps/c;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "adcode"

    invoke-virtual {v2}, Lcom/aps/c;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/aps/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/aps/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/aps/c;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    const-string/jumbo v3, " "

    const-string/jumbo v5, ""

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->b(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v2}, Lcom/aps/c;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_8
    if-eqz v0, :cond_e

    :try_start_11
    iget-object v1, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v1, v1, Lcom/amap/api/location/a;->e:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v1, v1, Lcom/amap/api/location/a;->c:Z

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/amap/api/location/c;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x64

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v6, :cond_f

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    :cond_f
    :try_start_12
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_1e

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_4

    :cond_10
    :try_start_13
    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocation;->b(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_7

    :catch_7
    move-exception v0

    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v1, :cond_12

    :try_start_15
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->e:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->c:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/amap/api/location/c;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v6, :cond_13

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4

    :cond_13
    :try_start_16
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_4

    :cond_14
    const-wide/16 v1, 0x7530

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0

    :goto_9
    :try_start_17
    throw v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_16

    iget-object v2, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v2, v2, Lcom/amap/api/location/a;->e:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v2, v2, Lcom/amap/api/location/a;->c:Z

    if-eqz v2, :cond_15

    invoke-direct {p0}, Lcom/amap/api/location/c;->e()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v2, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_16
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v1

    if-ne v1, v6, :cond_17

    iget-object v1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_4

    :cond_17
    :try_start_18
    iget-boolean v1, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v1, :cond_14

    iget-wide v1, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_9

    :cond_18
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_4

    :catch_8
    move-exception v0

    if-eqz v1, :cond_1a

    :try_start_19
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->e:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->c:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/amap/api/location/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_1a
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v6, :cond_1b

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_4

    :cond_1b
    :try_start_1a
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_1c

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_5

    :cond_1c
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_5

    :cond_1d
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_4

    :cond_1e
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_4

    :cond_1f
    move-object v0, v1

    goto/16 :goto_8

    :cond_20
    move-object v2, v0

    goto/16 :goto_6
.end method
