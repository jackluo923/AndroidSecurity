.class public Lcom/alipay/pushsdk/push/b/f;
.super Ljava/lang/Object;
.source "PushLBSValidator.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:J

.field private static c:D

.field private static d:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 6
    const-class v0, Lcom/alipay/pushsdk/push/b/f;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/b/f;->a:Ljava/lang/String;

    .line 16
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/pushsdk/push/b/f;->b:J

    .line 18
    sput-wide v2, Lcom/alipay/pushsdk/push/b/f;->c:D

    .line 20
    sput-wide v2, Lcom/alipay/pushsdk/push/b/f;->d:D

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(D)D
    .locals 4

    .prologue
    .line 156
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 23
    .line 25
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 26
    array-length v1, v1

    if-gt v1, v0, :cond_1

    .line 28
    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/alipay/pushsdk/push/b/f;->a:Ljava/lang/String;

    const-string/jumbo v1, "checkWifiInfo: only DEFAULT_WIFI."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 36
    :cond_1
    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 15

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 48
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/b/f;->a:Ljava/lang/String;

    const-string/jumbo v4, "parse format is invalid."

    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    if-nez v0, :cond_5

    .line 51
    const/4 v0, -0x1

    .line 66
    :goto_1
    return v0

    .line 48
    :cond_1
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/alipay/pushsdk/push/b/f;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/alipay/pushsdk/push/b/f;->c(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v0, v5, v7

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v0, v5, v7

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/b/f;->a:Ljava/lang/String;

    const-string/jumbo v4, "parse latitude or longitude is invalid."

    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v0, v5

    const/4 v3, 0x1

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v3

    goto :goto_0

    .line 55
    :cond_5
    sget-wide v3, Lcom/alipay/pushsdk/push/b/f;->b:J

    sub-long/2addr v1, v3

    .line 56
    sget-wide v3, Lcom/alipay/pushsdk/push/b/f;->c:D

    sget-wide v5, Lcom/alipay/pushsdk/push/b/f;->d:D

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    const/4 v9, 0x1

    aget-wide v9, v0, v9

    invoke-static {v3, v4}, Lcom/alipay/pushsdk/push/b/f;->a(D)D

    move-result-wide v3

    invoke-static {v7, v8}, Lcom/alipay/pushsdk/push/b/f;->a(D)D

    move-result-wide v7

    sub-double v11, v3, v7

    invoke-static {v5, v6}, Lcom/alipay/pushsdk/push/b/f;->a(D)D

    move-result-wide v5

    invoke-static {v9, v10}, Lcom/alipay/pushsdk/push/b/f;->a(D)D

    move-result-wide v9

    sub-double/2addr v5, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v3, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    const-wide v5, 0x40b8ea23126e978dL    # 6378.137

    mul-double/2addr v3, v5

    .line 57
    const/4 v5, 0x3

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 58
    const/4 v5, 0x3

    sget-object v6, Lcom/alipay/pushsdk/push/b/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isNeedUpLoad interval="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    div-long/2addr v1, v8

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s, distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    const-string/jumbo v2, ", lastLatitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v7, Lcom/alipay/pushsdk/push/b/f;->c:D

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastLongitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v7, Lcom/alipay/pushsdk/push/b/f;->d:D

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v5, v6, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_6
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v3, v1

    if-ltz v1, :cond_7

    .line 63
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    sput-wide v1, Lcom/alipay/pushsdk/push/b/f;->c:D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    sput-wide v0, Lcom/alipay/pushsdk/push/b/f;->d:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/pushsdk/push/b/f;->b:J

    .line 64
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 66
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 122
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
