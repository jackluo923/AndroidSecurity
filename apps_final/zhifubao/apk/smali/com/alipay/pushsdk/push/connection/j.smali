.class public Lcom/alipay/pushsdk/push/connection/j;
.super Ljava/lang/Object;
.source "PushConnTimePolicy.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private d:Landroid/content/Context;

.field private e:Lcom/alipay/pushsdk/util/b;

.field private f:Lcom/alipay/pushsdk/push/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alipay/pushsdk/push/connection/j;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 15
    sput-object v0, Lcom/alipay/pushsdk/push/connection/j;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/j;->b:I

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/j;->c:I

    .line 29
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/j;->d:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/alipay/pushsdk/util/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/j;->e:Lcom/alipay/pushsdk/util/b;

    .line 31
    new-instance v0, Lcom/alipay/pushsdk/push/r;

    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/j;->f:Lcom/alipay/pushsdk/push/r;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v11, 0x3

    .line 35
    const/4 v2, 0x1

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 39
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/j;->e:Lcom/alipay/pushsdk/util/b;

    .line 40
    const-string/jumbo v1, "DELAY_CONNECT_TIME"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 43
    sub-long v5, v3, v0

    div-long/2addr v5, v12

    const-wide/16 v7, 0x708

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    .line 47
    iget-object v5, p0, Lcom/alipay/pushsdk/push/connection/j;->f:Lcom/alipay/pushsdk/push/r;

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/r;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v0, 0xc

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v1, v6, 0x3c

    add-int/2addr v1, v0

    iget-object v7, p0, Lcom/alipay/pushsdk/push/connection/j;->f:Lcom/alipay/pushsdk/push/r;

    invoke-virtual {v7}, Lcom/alipay/pushsdk/push/r;->d()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    sub-int/2addr v1, v7

    int-to-long v7, v1

    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/pushsdk/push/connection/j;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getDelayTime delay=30; hour="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " min="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, "; eslapsedMin="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    iget-object v9, p0, Lcom/alipay/pushsdk/push/connection/j;->f:Lcom/alipay/pushsdk/push/r;

    invoke-virtual {v9}, Lcom/alipay/pushsdk/push/r;->d()I

    move-result v9

    if-lt v6, v9, :cond_1

    const-wide/16 v9, 0x1e

    cmp-long v6, v7, v9

    if-gez v6, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    mul-double/2addr v0, v9

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v9

    double-to-long v0, v0

    mul-long/2addr v0, v12

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    mul-long/2addr v7, v12

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    iget-object v7, p0, Lcom/alipay/pushsdk/push/connection/j;->e:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v8, "DELAY_CONNECT_TIME"

    invoke-virtual {v7, v8, v5, v6}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;J)V

    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/alipay/pushsdk/push/connection/j;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getDelayTime rand="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", expectedTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5, v6}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v7, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/alipay/pushsdk/push/connection/j;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getDelayTime delay=30, rand="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v5, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/j;->e:Lcom/alipay/pushsdk/util/b;

    .line 52
    const-string/jumbo v1, "DELAY_CONNECT_TIME"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 56
    :cond_3
    cmp-long v0, v3, v0

    if-gez v0, :cond_4

    .line 58
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_4
    move v0, v2

    goto :goto_0
.end method
