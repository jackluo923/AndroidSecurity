.class public Lcom/inmobi/commons/analytics/iat/impl/GoalList;
.super Ljava/util/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lcom/inmobi/commons/analytics/iat/impl/Goal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method

.method public static getLoggedGoals()Lcom/inmobi/commons/analytics/iat/impl/GoalList;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "eventlog"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->readFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;-><init>()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addGoal(Ljava/lang/String;IJIZ)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->setSynced(Z)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "GoalName is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    :goto_0
    return v0

    :cond_1
    if-lez p2, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_3

    :cond_2
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "GoalCount cant be 0 or RetryTime cannot be negative"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalCount()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setGoalCount(I)V

    :cond_5
    invoke-virtual {v0, p5}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setRetryCount(I)V

    invoke-virtual {v0, p3, p4}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setRetryTime(J)V

    invoke-virtual {v0, p6}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setDuplicateGoal(Z)V

    move v0, v7

    :goto_1
    if-nez v0, :cond_6

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/commons/analytics/iat/impl/Goal;-><init>(Ljava/lang/String;IJIZ)V

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_0

    :cond_7
    move v0, v8

    goto :goto_1
.end method

.method public getGoal(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/Goal;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "GoalName is null"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public increaseRetryTime(Ljava/lang/String;IZ)Z
    .locals 10

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "GoalName cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->getGoal(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/Goal;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getRetryParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->getMaxWaitTime()I

    move-result v0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getRetryParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->getMaxRetry()I

    move-result v2

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getRetryTime()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getRetryCount()I

    move-result v5

    int-to-long v8, v0

    cmp-long v6, v3, v8

    if-gez v6, :cond_2

    const-wide/16 v8, 0x2

    mul-long/2addr v3, v8

    const-wide/16 v8, 0x7530

    add-long/2addr v3, v8

    int-to-long v8, v0

    cmp-long v6, v3, v8

    if-lez v6, :cond_3

    :cond_2
    int-to-long v3, v0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->removeGoal(Ljava/lang/String;I)Z

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v2, :cond_4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->addGoal(Ljava/lang/String;IJIZ)Z

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_DUMPED:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->reportMetric(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Cant increase retry time"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move v0, v7

    goto :goto_0
.end method

.method public removeGoal(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->setSynced(Z)V

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "GoalName is null"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    if-gtz p2, :cond_2

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "GoalCount cannot be 0 or negative"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalCount()I

    move-result v1

    sub-int/2addr v1, p2

    const-string v2, "download"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    if-gtz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->setGoalCount(I)V

    goto :goto_1
.end method

.method public saveGoals()V
    .locals 2

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v1, p0}, Lcom/inmobi/commons/internal/FileOperations;->saveToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
