.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;


# instance fields
.field private b:I

.field private c:J

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->c:J

    iput-boolean v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->d:Z

    return-void
.end method

.method public static a()Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;
    .locals 2

    const-class v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(ZLcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;Landroid/content/Context;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLocation bFroce = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->c:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-string/jumbo v1, "wifi_lbs_interval"

    const-wide/32 v5, 0x36ee80

    invoke-virtual {p2, v1, v5, v6}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    if-lt v1, v7, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    :cond_2
    const-string/jumbo v1, "LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLocation mLbsFailCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", return location = null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    if-ge v1, v7, :cond_4

    invoke-static {p3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a(Landroid/content/Context;)Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a(Landroid/content/Context;Z)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :cond_4
    :try_start_3
    const-string/jumbo v1, "LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLocation failed times less than 3, location: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_8

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    if-lt v1, v7, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->c:J

    :cond_5
    :goto_1
    const-string/jumbo v1, "LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLocation result location: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v3, "LBSManager"

    const-string/jumbo v4, "\u83b7\u53d6\u7ecf\u7eac\u5ea6\u51fa\u9519\uff01"

    invoke-static {v3, v4, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string/jumbo v1, "LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLocation failed times less than 3, location: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    if-lt v1, v7, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->c:J

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string/jumbo v3, "LBSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getLocation failed times less than 3, location: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_7

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    iget v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    if-lt v0, v7, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->c:J

    :cond_6
    :goto_2
    throw v1

    :cond_7
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I

    goto :goto_2

    :cond_8
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->c:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->b:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method
