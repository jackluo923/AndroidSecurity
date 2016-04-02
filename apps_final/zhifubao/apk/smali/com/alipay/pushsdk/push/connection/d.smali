.class Lcom/alipay/pushsdk/push/connection/d;
.super Ljava/lang/Object;
.source "PacketReader.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:J


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/alipay/pushsdk/push/connection/k;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/alipay/pushsdk/push/connection/d;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/pushsdk/push/connection/d;->f:J

    .line 30
    return-void
.end method

.method protected constructor <init>(Lcom/alipay/pushsdk/push/connection/k;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/d;->d:Lcom/alipay/pushsdk/push/connection/k;

    .line 47
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/d;->a()V

    .line 48
    return-void
.end method

.method private a([BI)I
    .locals 12

    .prologue
    .line 276
    .line 277
    const/4 v0, 0x0

    .line 280
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/d;->d:Lcom/alipay/pushsdk/push/connection/k;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/k;->f()I

    move-result v3

    .line 281
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move v2, v0

    move v1, p2

    .line 283
    :cond_0
    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_3

    .line 415
    :cond_1
    :goto_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    const/4 v0, 0x5

    sget-object v3, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleRecvMsg() done! leftLen="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 417
    const-string/jumbo v4, ", index="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v0, v3, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_2
    return v2

    .line 284
    :cond_3
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    const/4 v0, 0x4

    .line 287
    sget-object v5, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "handleRecvMsg() got valid packet msgVersion:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 289
    const-string/jumbo v7, ", msgByte1st: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 290
    const/4 v7, 0x0

    aget-byte v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 288
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 285
    invoke-static {v0, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_4
    :try_start_0
    invoke-static {v3}, Lcom/alipay/pushsdk/push/c/c;->a(I)Lcom/alipay/pushsdk/push/c/a;

    move-result-object v5

    .line 298
    sget v0, Lcom/alipay/pushsdk/push/c/b;->e:I

    .line 299
    new-array v6, v0, [B

    .line 300
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v4, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 301
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 302
    const/4 v8, 0x4

    sget-object v9, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "handleRecvMsg() readLen="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_5
    if-ne v7, v0, :cond_1

    .line 306
    invoke-virtual {v5, v6}, Lcom/alipay/pushsdk/push/c/a;->c([B)V

    .line 313
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/c/a;->j()I

    move-result v6

    sub-int v0, v6, v0

    .line 314
    const/4 v6, 0x4

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 315
    const/4 v6, 0x4

    sget-object v7, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handleRecvMsg() leftHdrLen="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 315
    invoke-static {v6, v7, v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_6
    new-array v6, v0, [B

    .line 319
    sget v7, Lcom/alipay/pushsdk/push/c/b;->c:I

    if-ne v3, v7, :cond_9

    .line 320
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/c/a;->a()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_9

    .line 323
    sget-wide v6, Lcom/alipay/pushsdk/push/connection/d;->f:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_7

    .line 327
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 328
    sget-wide v8, Lcom/alipay/pushsdk/push/connection/d;->f:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x36ee80

    cmp-long v0, v8, v10

    if-lez v0, :cond_7

    .line 330
    sput-wide v6, Lcom/alipay/pushsdk/push/connection/d;->f:J

    .line 334
    :cond_7
    invoke-direct {p0, v5}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/c/a;)V

    .line 335
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/c/a;->j()I

    move-result v0

    .line 397
    :goto_2
    add-int/2addr v2, v0

    .line 398
    sub-int/2addr v1, v0

    .line 399
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 400
    const/4 v5, 0x4

    sget-object v6, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "handleRecvMsg() current thisLen="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", leftLen="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", index="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {v5, v6, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 407
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 408
    const/4 v2, 0x2

    sget-object v5, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    move v2, p2

    .line 411
    goto/16 :goto_0

    .line 337
    :cond_9
    :try_start_1
    sget v7, Lcom/alipay/pushsdk/push/c/b;->e:I

    sub-int v7, v1, v7

    if-le v0, v7, :cond_a

    .line 338
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const/4 v0, 0x2

    sget-object v5, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 340
    const-string/jumbo v6, "handleRecvMsg() got error header!"

    .line 339
    invoke-static {v0, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 348
    :cond_a
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 349
    if-ne v7, v0, :cond_10

    .line 350
    invoke-virtual {v5, v6}, Lcom/alipay/pushsdk/push/c/a;->b([B)V

    .line 353
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/c/a;->g()I

    move-result v0

    .line 354
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/c/a;->j()I

    move-result v6

    sub-int v6, v1, v6

    if-gt v0, v6, :cond_1

    .line 355
    if-ltz v0, :cond_1

    .line 356
    new-array v6, v0, [B

    .line 357
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v0}, Ljava/io/InputStream;->read([BII)I

    .line 358
    invoke-virtual {v5, v6}, Lcom/alipay/pushsdk/push/c/a;->a([B)V

    .line 359
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 360
    const/4 v0, 0x4

    sget-object v6, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "handleRecvMsg() got valid packet! rawData="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/c/a;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 361
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 360
    invoke-static {v0, v6, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/c/a;->i()I

    move-result v6

    sget v7, Lcom/alipay/pushsdk/push/c/b;->g:I

    if-lt v6, v7, :cond_c

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/c/a;->i()I

    move-result v6

    sget v7, Lcom/alipay/pushsdk/push/c/b;->f:I

    if-le v6, v7, :cond_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    if-nez v0, :cond_f

    .line 366
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 367
    const/4 v0, 0x2

    sget-object v6, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 368
    const-string/jumbo v7, "handleRecvMsg() it\'s unsupported packet!"

    .line 367
    invoke-static {v0, v6, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_e
    :goto_3
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/c/a;->g()I

    move-result v0

    .line 376
    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/c/a;->j()I

    move-result v5

    .line 375
    add-int/2addr v0, v5

    goto/16 :goto_2

    .line 371
    :cond_f
    invoke-direct {p0, v5}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/c/a;)V

    goto :goto_3

    .line 384
    :cond_10
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    const/4 v0, 0x2

    sget-object v5, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 386
    const-string/jumbo v6, "handleRecvMsg() got error packet!"

    .line 385
    invoke-static {v0, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/connection/d;)Lcom/alipay/pushsdk/push/connection/k;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->d:Lcom/alipay/pushsdk/push/connection/k;

    return-object v0
.end method

.method private a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 432
    if-nez p1, :cond_0

    .line 445
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    sget-object v0, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    .line 437
    const-string/jumbo v1, "processPacket() are processing one valid packet!"

    .line 436
    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->d:Lcom/alipay/pushsdk/push/connection/k;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/k;->i()V

    .line 444
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/pushsdk/push/connection/g;

    invoke-direct {v1, p0, p1}, Lcom/alipay/pushsdk/push/connection/g;-><init>(Lcom/alipay/pushsdk/push/connection/d;Lcom/alipay/pushsdk/push/c/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/connection/d;Ljava/lang/Thread;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 196
    const/16 v0, 0x800

    :try_start_0
    new-array v2, v0, [B

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    const-string/jumbo v4, "parsePackets()..."

    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    :cond_1
    iget-object v3, p0, Lcom/alipay/pushsdk/push/connection/d;->d:Lcom/alipay/pushsdk/push/connection/k;

    iget-object v3, v3, Lcom/alipay/pushsdk/push/connection/k;->e:Ljava/io/DataInputStream;

    rsub-int v4, v0, 0x800

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_4

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reader() count="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and end of stream!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "reader reached the end of stream."

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "-1 : end of stream"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v0, v1}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "53"

    invoke-virtual {v2, v0}, Lcom/alipay/pushsdk/push/connection/PushException;->setType(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/connection/PushException;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x4

    sget-object v5, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "reader() count="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/2addr v0, v3

    if-lez v0, :cond_7

    const/16 v3, 0x1000

    if-le v3, v0, :cond_7

    new-array v3, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v3, v0}, Lcom/alipay/pushsdk/push/connection/d;->a([BI)I

    move-result v4

    if-ge v4, v0, :cond_6

    sub-int/2addr v0, v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget-boolean v3, p0, Lcom/alipay/pushsdk/push/connection/d;->e:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alipay/pushsdk/push/connection/d;->b:Ljava/lang/Thread;

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/alipay/pushsdk/push/connection/d;->e:Z

    if-nez v1, :cond_3

    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parsePackets() encounter Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reader parsePackets encounter Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "exception : reader"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v0, v1}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "54"

    invoke-virtual {v2, v0}, Lcom/alipay/pushsdk/push/connection/PushException;->setType(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/connection/PushException;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/d;->e:Z

    .line 58
    new-instance v0, Lcom/alipay/pushsdk/push/connection/e;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/connection/e;-><init>(Lcom/alipay/pushsdk/push/connection/d;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->b:Ljava/lang/Thread;

    .line 63
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->b:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Packet Reader ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/d;->d:Lcom/alipay/pushsdk/push/connection/k;

    iget v2, v2, Lcom/alipay/pushsdk/push/connection/k;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->b:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 70
    new-instance v0, Lcom/alipay/pushsdk/push/connection/f;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/connection/f;-><init>(Lcom/alipay/pushsdk/push/connection/d;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 82
    return-void
.end method

.method final a(Lcom/alipay/pushsdk/push/connection/PushException;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 144
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    const-string/jumbo v1, "notifyConnectionError()...Exception!"

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->d:Lcom/alipay/pushsdk/push/connection/k;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/k;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    return-void

    .line 155
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/a/d;

    .line 157
    :try_start_0
    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/a/d;->a(Lcom/alipay/pushsdk/push/connection/PushException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 162
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    sget-object v2, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 103
    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/d;->e:Z

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->d:Lcom/alipay/pushsdk/push/connection/k;

    .line 105
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/k;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 104
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/d;->e:Z

    .line 121
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 123
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    sget-object v0, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    const-string/jumbo v1, "shutdown()...listenerExecutor.shutdown!"

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    return-void

    .line 105
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/pushsdk/push/a/d;

    .line 107
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/pushsdk/push/a/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 112
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    sget-object v2, Lcom/alipay/pushsdk/push/connection/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/d;->d:Lcom/alipay/pushsdk/push/connection/k;

    iget-object v0, v0, Lcom/alipay/pushsdk/push/connection/k;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    return-void
.end method
