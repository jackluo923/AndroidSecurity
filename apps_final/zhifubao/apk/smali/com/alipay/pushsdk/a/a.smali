.class public Lcom/alipay/pushsdk/a/a;
.super Ljava/lang/Object;
.source "ConfigPolicy.java"


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public f:Z

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:Landroid/content/Context;

.field private l:Lcom/alipay/pushsdk/util/b;

.field private m:Lcom/alipay/pushsdk/push/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/alipay/pushsdk/a/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v2, 0x12c

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lcom/alipay/pushsdk/a/a;->h:I

    .line 21
    iput v1, p0, Lcom/alipay/pushsdk/a/a;->i:I

    .line 22
    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->j:I

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/a/a;->a:Ljava/lang/String;

    .line 40
    iput v2, p0, Lcom/alipay/pushsdk/a/a;->b:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->c:I

    .line 42
    iput v1, p0, Lcom/alipay/pushsdk/a/a;->d:I

    .line 43
    iput-boolean v1, p0, Lcom/alipay/pushsdk/a/a;->f:Z

    .line 45
    iput-object p1, p0, Lcom/alipay/pushsdk/a/a;->k:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/alipay/pushsdk/util/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/a/a;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    .line 47
    new-instance v0, Lcom/alipay/pushsdk/push/r;

    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/push/r;

    .line 49
    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v1, "consumeCount"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->c:I

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v1, "successCount"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->d:I

    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v1, "intervalTime"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->b:I

    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v1, "LAST_CONFIG_TIME"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iput-wide v0, p0, Lcom/alipay/pushsdk/a/a;->e:J

    :cond_2
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init() lastRunTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/pushsdk/a/a;->e:J

    invoke-static {v2, v3}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", curCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/pushsdk/a/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", maxCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/pushsdk/a/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", minTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/pushsdk/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/push/r;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/r;->a()Z

    move-result v1

    .line 92
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "toStart() trigger="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 94
    const-string/jumbo v5, ", settingStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/util/d;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/pushsdk/a/a;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/pushsdk/util/d;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Network_Type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Network_State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", net="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    .line 117
    :cond_3
    :goto_1
    return-void

    .line 97
    :cond_4
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    const-string/jumbo v4, "checkNetState networkInfo is null."

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_5
    const-string/jumbo v1, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 104
    const-string/jumbo v1, "13"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 105
    const-string/jumbo v1, "14"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    :cond_6
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v2, "DELAY_CONFIG_TIME"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v7, "CREATE_CONFIG_TIME"

    invoke-virtual {v6, v7}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v8, v4, v1

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alipay/pushsdk/a/a;->d:I

    mul-int/lit8 v10, v10, 0xf

    mul-int/lit8 v10, v10, 0x3c

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/push/r;

    invoke-virtual {v8}, Lcom/alipay/pushsdk/push/r;->b()Z

    move-result v8

    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/pushsdk/a/a;->d:I

    mul-int/lit8 v1, v1, 0xf

    int-to-long v8, v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/16 v1, 0xb

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v1, 0xc

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v2, v11, 0x3c

    add-int/2addr v2, v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/push/r;

    invoke-virtual {v12}, Lcom/alipay/pushsdk/push/r;->d()I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    sub-int/2addr v2, v12

    int-to-long v12, v2

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    sget-object v14, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "checkDelayTime delay="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "; hour="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " min="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v15, "; eslapsedMin="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v14, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/push/r;

    invoke-virtual {v14}, Lcom/alipay/pushsdk/push/r;->d()I

    move-result v14

    if-lt v11, v14, :cond_8

    cmp-long v11, v12, v8

    if-gez v11, :cond_8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    long-to-double v14, v8

    mul-double/2addr v1, v14

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    mul-double/2addr v1, v14

    double-to-long v1, v1

    const-wide/16 v14, 0x3e8

    mul-long/2addr v1, v14

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    add-long/2addr v10, v1

    const-wide/16 v14, 0x1e

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v13, "DELAY_CONFIG_TIME"

    invoke-virtual {v12, v13, v10, v11}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;J)V

    const/4 v12, 0x3

    invoke-static {v12}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x3

    sget-object v13, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "checkDelayTime rand="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", expectedTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10, v11}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v13, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v10, 0x3

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x3

    sget-object v11, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "checkDelayTime delay="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", rand="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v11, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v2, "DELAY_CONFIG_TIME"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;)J

    move-result-wide v1

    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v9, "LAST_CONFIG_TIME"

    invoke-virtual {v8, v9}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v10, v4, v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    cmp-long v12, v4, v1

    if-gez v12, :cond_f

    const/4 v3, 0x0

    :cond_b
    :goto_2
    sub-long v12, v4, v6

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const-wide/16 v14, 0x708

    cmp-long v12, v12, v14

    if-gez v12, :cond_c

    const/4 v3, 0x0

    :cond_c
    const/4 v12, 0x4

    invoke-static {v12}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x4

    sget-object v13, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "ConfigPolicy_getPolicy() delayPollTime="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastPollTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v9}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", createPollTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6, v7}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", curTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", waitedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s, ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v13, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v3, :cond_3

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/pushsdk/a/a;->l:Lcom/alipay/pushsdk/util/b;

    const-string/jumbo v2, "CREATE_CONFIG_TIME"

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 109
    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;J)V

    .line 112
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    const-string/jumbo v3, "runConfigRequest start..."

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_e
    new-instance v1, Lcom/alipay/pushsdk/a/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/a/b;->a()V

    goto/16 :goto_1

    .line 107
    :cond_f
    const-wide/16 v12, 0x3c

    div-long v12, v10, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alipay/pushsdk/a/a;->b:I

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_b

    const/4 v3, 0x0

    goto/16 :goto_2
.end method
