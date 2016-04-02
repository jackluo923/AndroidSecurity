.class public Lcom/alipay/pushsdk/util/log/g;
.super Ljava/lang/Object;
.source "ServiceTraceSend.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/alipay/pushsdk/util/log/g;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/pushsdk/util/log/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 24
    sget-object v1, Lcom/alipay/pushsdk/util/log/d;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget v0, Lcom/alipay/pushsdk/util/log/d;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/pushsdk/util/log/d;->i:I

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 28
    sget-wide v4, Lcom/alipay/pushsdk/util/log/d;->j:J

    .line 27
    sub-long/2addr v2, v4

    .line 29
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x3

    sget-object v4, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tracelogFlag="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->i()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 32
    const-string/jumbo v6, ", log count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 33
    sget v6, Lcom/alipay/pushsdk/util/log/d;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 34
    const-string/jumbo v6, ", send log duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-static {v0, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    sget v0, Lcom/alipay/pushsdk/util/log/d;->i:I

    const/16 v4, 0x1e

    if-lt v0, v4, :cond_1

    .line 39
    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 40
    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    const/4 v0, 0x4

    sget-object v2, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    const-string/jumbo v3, "checkAndSend is not ready."

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_2
    :goto_0
    monitor-exit v1

    .line 45
    :goto_1
    return-void

    .line 44
    :cond_3
    sget-object v0, Lcom/alipay/pushsdk/util/log/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 48
    :cond_4
    :try_start_1
    sget-object v0, Lcom/alipay/pushsdk/util/log/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    new-instance v0, Lcom/alipay/pushsdk/util/log/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/util/log/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/log/h;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    .line 191
    .line 193
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    :try_start_1
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 199
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    const/4 v4, 0x5

    sget-object v5, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sendLog() input data:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    const/4 v4, 0x4

    sget-object v5, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sendLog() postbyte len="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 207
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 210
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 211
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 213
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 222
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 223
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 224
    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 231
    :cond_4
    :goto_1
    return-object v2

    .line 215
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 217
    :goto_2
    const/4 v4, 0x2

    :try_start_3
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    const/4 v4, 0x2

    sget-object v5, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    .line 227
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    sget-object v1, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0

    .line 215
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x4

    const/4 v3, 0x2

    .line 76
    invoke-static {}, Lcom/alipay/pushsdk/util/log/f;->c()Lcom/alipay/pushsdk/util/log/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/log/f;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendLog() readFile is null."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendLog() readFile the length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/alipay/pushsdk/util/log/e;->a()Lcom/alipay/pushsdk/util/log/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/util/log/e;->c()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/alipay/pushsdk/util/log/c;->a(Landroid/content/Context;)V

    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v4, "operationType"

    sget-object v5, Lcom/alipay/pushsdk/util/log/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcom/alipay/pushsdk/util/log/d;->d:Ljava/lang/String;

    sget-object v5, Lcom/alipay/pushsdk/util/log/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/pushsdk/util/log/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcom/alipay/pushsdk/util/log/d;->f:Ljava/lang/String;

    sget-object v5, Lcom/alipay/pushsdk/util/log/d;->f:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/pushsdk/util/log/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcom/alipay/pushsdk/util/log/d;->e:Ljava/lang/String;

    sget-object v5, Lcom/alipay/pushsdk/util/log/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/pushsdk/util/log/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcom/alipay/pushsdk/util/log/d;->c:Ljava/lang/String;

    sget-object v5, Lcom/alipay/pushsdk/util/log/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/pushsdk/util/log/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcom/alipay/pushsdk/util/log/d;->g:Ljava/lang/String;

    sget-object v5, Lcom/alipay/pushsdk/util/log/d;->g:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/pushsdk/util/log/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    sget-object v4, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sendLog() requestData="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/g;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    sget-object v5, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sendLog() the length of zipLog:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v4, Lcom/alipay/pushsdk/util/log/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lcom/alipay/pushsdk/b/a;

    invoke-static {}, Lcom/alipay/pushsdk/util/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Lcom/alipay/pushsdk/b/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "resultStatus"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "memo"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x3

    sget-object v4, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sendLog() resultStatus="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", memo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 v1, 0x64

    if-ne v2, v1, :cond_8

    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/log/f;->f()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/pushsdk/util/log/d;->j:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_1
    sget-object v0, Lcom/alipay/pushsdk/util/log/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    sget v2, Lcom/alipay/pushsdk/b/a;->c:I

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    sget-object v3, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sendLog() error. logStr.length="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", max=10240"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-lt v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/log/f;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_2
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    sget-object v2, Lcom/alipay/pushsdk/util/log/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    sget-object v0, Lcom/alipay/pushsdk/util/log/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/pushsdk/util/log/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
