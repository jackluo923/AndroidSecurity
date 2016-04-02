.class public abstract Lcom/alipay/android/app/statistic/record/LogRecord;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->a:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->e:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v2, v1, [Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(ILcom/alipay/android/app/statistic/logfield/LogField;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/android/app/statistic/record/LogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    return-void
.end method

.method protected final declared-synchronized a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V
    .locals 3

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/alipay/android/app/statistic/logfield/LogField;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p3}, Lcom/alipay/android/app/statistic/logfield/LogField;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;

    :cond_2
    invoke-virtual {p3}, Lcom/alipay/android/app/statistic/logfield/LogField;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;-><init>(I)V

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    new-instance v0, Lcom/alipay/android/app/statistic/container/LogFieldContainer;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/statistic/container/LogFieldContainer;-><init>(I)V

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
