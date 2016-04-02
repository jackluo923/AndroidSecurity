.class public Lcom/alipay/pushsdk/push/b;
.super Ljava/lang/Object;
.source "DelayedPushMessageManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/pushsdk/push/b;

.field private static final synthetic f:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;

.field private e:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "DelayedPushMessageManager.java"

    const-class v2, Lcom/alipay/pushsdk/push/b;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "set"

    const-string/jumbo v3, "android.app.AlarmManager"

    const-string/jumbo v4, "int:long:android.app.PendingIntent"

    const-string/jumbo v5, "type:triggerAtMillis:operation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1d5

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/b;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 31
    const-class v0, Lcom/alipay/pushsdk/push/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/b;->e:Landroid/app/AlarmManager;

    .line 42
    iput-object p1, p0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/alipay/pushsdk/push/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/push/b;->b:Lcom/alipay/pushsdk/push/b;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/alipay/pushsdk/push/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/pushsdk/push/b;->b:Lcom/alipay/pushsdk/push/b;

    .line 49
    :cond_0
    sget-object v0, Lcom/alipay/pushsdk/push/b;->b:Lcom/alipay/pushsdk/push/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    .line 479
    .line 481
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setExact"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 485
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v4, v5

    .line 484
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 487
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 490
    const-string/jumbo v4, "setReflectTimer() invoke setExact api done."

    .line 489
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    sget-object v2, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setReflectTimer Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 498
    goto :goto_0
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 360
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 361
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 362
    add-int/lit8 v0, v1, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_3

    .line 375
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/push/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 380
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 381
    const-string/jumbo v3, "/push/push_delayed_message_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    const/4 v3, 0x0

    .line 384
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 385
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 384
    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-lt v3, v1, :cond_5

    .line 394
    const/4 v0, 0x5

    :try_start_1
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    const/4 v0, 0x5

    sget-object v3, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveToFile count="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 407
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 417
    :cond_2
    :goto_2
    return-void

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDisplayTimeout()J

    move-result-wide v5

    const-wide/16 v7, 0x7530

    add-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 365
    add-int/lit8 v1, v1, -0x1

    .line 366
    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    sget-object v5, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saveToFile count="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    const-string/jumbo v6, ", curMsgId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 369
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getPerMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 370
    const-string/jumbo v6, ", delayTime="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v9, v5, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 362
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 387
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_6

    .line 389
    const-string/jumbo v4, "\n"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 386
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 398
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 399
    :goto_3
    const/4 v2, 0x2

    :try_start_4
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 400
    const/4 v2, 0x2

    sget-object v3, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveToFile FileNotFoundException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 407
    :cond_7
    if-eqz v1, :cond_2

    .line 409
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 410
    :catch_1
    move-exception v0

    .line 411
    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    sget-object v1, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveToFile finally IOException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 402
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 403
    :goto_4
    const/4 v1, 0x2

    :try_start_6
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 404
    const/4 v1, 0x2

    sget-object v3, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveToFile FileNotFoundException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 407
    :cond_8
    if-eqz v2, :cond_2

    .line 409
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 410
    :catch_3
    move-exception v0

    .line 411
    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    sget-object v1, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveToFile finally IOException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 406
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 407
    :goto_5
    if-eqz v2, :cond_9

    .line 409
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 416
    :cond_9
    :goto_6
    throw v0

    .line 410
    :catch_4
    move-exception v1

    .line 411
    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 412
    sget-object v2, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveToFile finally IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v2, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 410
    :catch_5
    move-exception v0

    .line 411
    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    sget-object v1, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveToFile finally IOException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 406
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 402
    :catch_6
    move-exception v0

    goto/16 :goto_4

    .line 398
    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x4

    const/4 v9, 0x2

    .line 53
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    .line 54
    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 53
    iput-object v0, p0, Lcom/alipay/pushsdk/push/b;->e:Landroid/app/AlarmManager;

    .line 56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readFromFile now="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/push/push_delayed_message_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->fromJsonString(Ljava/lang/String;)Lcom/alipay/pushsdk/data/NotifierInfo;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    sget-object v5, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "readFromFile curMsgId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", delayTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", delayTimeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDisplayTimeout()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDisplayTimeout()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v2, 0x2

    :try_start_2
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    sget-object v3, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "readFromFile FileNotFoundException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 57
    :cond_4
    :goto_2
    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    sget-object v0, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initManager, messageInfos count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v10, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_5
    return-void

    .line 56
    :cond_6
    const/4 v2, 0x2

    :try_start_4
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    sget-object v5, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "readFromFile out of time with msgId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :goto_3
    const/4 v2, 0x2

    :try_start_5
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    sget-object v3, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "readFromFile IOException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readFromFile finally IOException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readFromFile finally IOException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_8
    :goto_5
    throw v0

    :catch_4
    move-exception v1

    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "readFromFile finally IOException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v2, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readFromFile finally IOException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method

.method public final a(IJLcom/alipay/pushsdk/data/NotifierInfo;)V
    .locals 10

    .prologue
    .line 420
    const-string/jumbo v0, ".push.action.DELAYMSG"

    .line 421
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 425
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    const-class v2, Lcom/alipay/pushsdk/deliver/PushDelayMsgIntentService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 427
    const-string/jumbo v0, "perMsgId"

    invoke-virtual {p4}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    const/4 v2, 0x0

    .line 429
    const/high16 v3, 0x8000000

    .line 428
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 431
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 432
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->e:Landroid/app/AlarmManager;

    if-eqz v0, :cond_6

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 434
    const/4 v2, 0x0

    .line 435
    const/4 v5, 0x1

    if-ne p1, v5, :cond_4

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 437
    const/4 v2, 0x2

    .line 438
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 439
    const/4 v5, 0x4

    sget-object v6, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 440
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "startCheckAlarmTimer with expectedTime="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", msgKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 442
    invoke-virtual {p4}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 440
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 439
    invoke-static {v5, v6, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_1
    :goto_0
    const/16 v5, 0x13

    if-lt v4, v5, :cond_5

    .line 457
    iget-object v4, p0, Lcom/alipay/pushsdk/push/b;->e:Landroid/app/AlarmManager;

    invoke-static {v4, v2, v0, v1, v3}, Lcom/alipay/pushsdk/push/b;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)Z

    move-result v4

    .line 459
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 460
    const/4 v5, 0x4

    sget-object v6, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 461
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "startCheckAlarmTimer() setReflectTimer with time="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    const-wide/16 v8, 0x3e8

    div-long v8, p2, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 461
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 460
    invoke-static {v5, v6, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_2
    if-eqz v4, :cond_5

    .line 475
    :cond_3
    :goto_1
    return-void

    .line 445
    :cond_4
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    const/4 v5, 0x4

    .line 448
    sget-object v6, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 449
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "startCheckAlarmTimer with expectedTime="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 451
    const-string/jumbo v8, ", msgKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 452
    invoke-virtual {p4}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 449
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 446
    invoke-static {v5, v6, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_5
    iget-object v4, p0, Lcom/alipay/pushsdk/push/b;->e:Landroid/app/AlarmManager;

    sget-object v5, Lcom/alipay/pushsdk/push/b;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {v5, p0, v4, v6}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v6

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v5

    invoke-static {v6, v7, v8, v9, v5}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallAlarmManagerSetPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 471
    :cond_6
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "startCheckAlarmTimer am is null."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x7530

    .line 112
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryTriggerDelayedMsg size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    const-string/jumbo v3, ", msgKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 200
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :cond_2
    const/4 v1, 0x0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 123
    new-instance v2, Lcom/alipay/pushsdk/push/i;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/i;->a()Ljava/lang/String;

    move-result-object v3

    .line 124
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 126
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_4

    :cond_3
    move v0, v1

    .line 197
    :goto_2
    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/b;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    .line 128
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v7

    .line 131
    if-eqz v7, :cond_a

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 135
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 136
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 137
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    const/4 v0, 0x2

    sget-object v2, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tryTriggerDelayedMsg ignore userId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    const-string/jumbo v5, " curUserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    .line 143
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 144
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDisplayTimeout()J

    move-result-wide v8

    sub-long v3, v4, v8

    .line 145
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 147
    const/4 v5, 0x3

    .line 148
    sget-object v8, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 149
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "tryTriggerDelayedMsg curMsgId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 151
    const-string/jumbo v10, ", getDelayToTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 153
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v10

    .line 152
    invoke-static {v10, v11}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 154
    const-string/jumbo v10, ", getDisplayTimeout="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 156
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDisplayTimeout()J

    move-result-wide v10

    .line 155
    invoke-static {v10, v11}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 157
    const-string/jumbo v10, ", deltaTimeB="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 158
    const-string/jumbo v10, "ms, deltaTimeA= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 149
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 146
    invoke-static {v5, v8, v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_6
    cmp-long v5, v6, v12

    if-gtz v5, :cond_8

    .line 162
    cmp-long v5, v3, v12

    if-gtz v5, :cond_8

    .line 163
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 164
    const/4 v1, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tryTriggerDelayedMsg show msgid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 167
    const-string/jumbo v5, ", content="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-static {v1, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_7
    new-instance v1, Lcom/alipay/pushsdk/util/b;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v4, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {v1, v0, v3}, Lcom/alipay/pushsdk/util/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 176
    :cond_8
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    cmp-long v3, v3, v12

    if-lez v3, :cond_3

    .line 177
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 178
    const/4 v3, 0x2

    sget-object v4, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tryTriggerDelayedMsg timeout for delayed msgId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v3, v4, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_9
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 193
    goto/16 :goto_2

    .line 126
    :cond_a
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_1
.end method

.method public final declared-synchronized a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 76
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 77
    invoke-virtual {p1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDisplayTimeout()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    move v0, v1

    .line 108
    :goto_0
    monitor-exit p0

    return v0

    .line 83
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 84
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addDeleyedMessage before size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v5, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_2

    .line 105
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/b;->e()V

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    .line 91
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {p1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    const/4 v2, 0x2

    sget-object v3, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addDeleyedMessage same msgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move v0, v1

    .line 99
    goto/16 :goto_0

    .line 89
    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/b;->e:Landroid/app/AlarmManager;

    .line 65
    return-void
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    const/4 v0, 0x1

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :cond_0
    monitor-exit p0

    return v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 24

    .prologue
    .line 203
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tryTriggerNotify size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    const/4 v7, 0x0

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 210
    new-instance v2, Lcom/alipay/pushsdk/push/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/i;->a()Ljava/lang/String;

    move-result-object v9

    .line 211
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 212
    sget v2, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v12, v2

    .line 213
    const-wide/16 v2, 0x1

    sub-long v3, v12, v2

    .line 214
    const/4 v2, 0x0

    .line 216
    add-int/lit8 v1, v1, -0x1

    move v8, v1

    :goto_0
    if-gez v8, :cond_4

    .line 285
    cmp-long v1, v3, v12

    if-gez v1, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    if-eqz v2, :cond_2

    .line 286
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    const/4 v1, 0x4

    sget-object v5, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tryTriggerNotify startCheckAlarmTimer with deltaMin="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 288
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-static {v1, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/alipay/pushsdk/push/b;->a(IJLcom/alipay/pushsdk/data/NotifierInfo;)V

    .line 295
    :cond_2
    if-eqz v7, :cond_3

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/alipay/pushsdk/push/b;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_3
    monitor-exit p0

    return-void

    .line 217
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/pushsdk/data/NotifierInfo;

    .line 219
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 221
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 222
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 223
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 224
    const/4 v1, 0x3

    sget-object v6, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "tryTriggerNotify ignore userId = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v14, " curUserId = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-static {v1, v6, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    move-wide/from16 v21, v3

    move-wide/from16 v2, v21

    move v4, v7

    .line 216
    :goto_1
    add-int/lit8 v5, v8, -0x1

    move v8, v5

    move v7, v4

    move-wide/from16 v21, v2

    move-wide/from16 v3, v21

    move-object v2, v1

    goto/16 :goto_0

    .line 230
    :cond_5
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v5

    sub-long/2addr v5, v10

    .line 231
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDisplayTimeout()J

    move-result-wide v14

    sub-long v14, v10, v14

    .line 232
    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 234
    const/16 v16, 0x3

    .line 235
    sget-object v17, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 236
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "tryTriggerNotify curMsgId="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 238
    const-string/jumbo v19, ", getDelayToTime="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 239
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 240
    const-string/jumbo v19, ", getDisplayTimeout="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 241
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDisplayTimeout()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 242
    const-string/jumbo v19, ", deltaTimeB="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "ms, deltaTimeA= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 243
    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "ms."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 236
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 233
    invoke-static/range {v16 .. v18}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_6
    const-wide/16 v16, 0x7530

    cmp-long v16, v5, v16

    if-gtz v16, :cond_8

    const-wide/16 v16, 0x7530

    cmp-long v16, v14, v16

    if-gtz v16, :cond_8

    .line 247
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 248
    const/4 v5, 0x3

    sget-object v6, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "tryTriggerNotify show msgid="

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v14, ", content="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 251
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getContent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 249
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-static {v5, v6, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_7
    new-instance v5, Lcom/alipay/pushsdk/util/b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/pushsdk/push/b;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v7, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-virtual {v5, v1, v6}, Lcom/alipay/pushsdk/util/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 258
    const/4 v1, 0x1

    move-object/from16 v21, v2

    move-wide/from16 v22, v3

    move-wide/from16 v2, v22

    move v4, v1

    move-object/from16 v1, v21

    goto/16 :goto_1

    .line 260
    :cond_8
    cmp-long v16, v5, v3

    if-gez v16, :cond_a

    const-wide/16 v16, 0x0

    cmp-long v16, v5, v16

    if-lez v16, :cond_a

    .line 261
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 262
    const/4 v2, 0x4

    sget-object v14, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 263
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "tryTriggerNotify checkUnit for msgId="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", deltaMin="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 265
    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", deltaTimeB="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 263
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-static {v2, v14, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-wide v2, v5

    move v4, v7

    .line 268
    goto/16 :goto_1

    .line 270
    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v5, v14, v5

    if-lez v5, :cond_c

    const-wide/16 v5, 0x7530

    cmp-long v5, v14, v5

    if-lez v5, :cond_c

    .line 271
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 272
    const/4 v5, 0x2

    sget-object v6, Lcom/alipay/pushsdk/push/b;->a:Ljava/lang/String;

    .line 273
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "tryTriggerNotify timeout for delayed msgId="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v5, v6, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/push/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    move-object v1, v2

    move-wide/from16 v21, v3

    move-wide/from16 v2, v21

    move v4, v7

    goto/16 :goto_1

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
