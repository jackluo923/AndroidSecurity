.class public Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Ljava/lang/Thread;

.field private static e:Landroid/os/Handler;

.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static h:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

.field private static i:Z

.field private static j:I

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-boolean v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i:Z

    sput v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j:I

    const-string v0, "https://d.appsdt.com/download/tracker/?"

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k:Ljava/lang/String;

    const-string v0, "https://d.appsdt.com/sdkdwnldbeacon.html"

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->l:Ljava/lang/String;

    const-string v0, "https://d.appsdt.com/download/tracker/iatsdkconfs?"

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->n:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/inmobi/commons/analytics/iat/impl/Goal;)V
    .locals 8

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getRetryTime()J

    move-result-wide v0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getRetryParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->getMaxWaitTime()I

    move-result v5

    sget-object v6, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v6, :cond_2

    move-wide v0, v2

    :cond_0
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-string v2, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Retrying goalname: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-void

    :cond_2
    int-to-long v6, v5

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    int-to-long v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Failed to reduce wait time exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)V
    .locals 6

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->isDuplicateGoal()Z

    move-result v1

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->reportUsingWebview(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v4, "goalPingSuccess"

    const/4 v5, 0x1

    invoke-static {v0, v1, v4, v5}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->removeGoal(Ljava/lang/String;I)Z

    const-string v0, "download"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->updateStatus()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->reportUsingNetwork(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0, v3, v2, v1}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->increaseRetryTime(Ljava/lang/String;IZ)Z

    goto :goto_1
.end method

.method static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->l:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->saveGoals()V

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Logger;->startNewSample()Z

    move-result v0

    sput-boolean v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i:Z

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Network Unavailable"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j:I

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->deinit()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a(Lcom/inmobi/commons/analytics/iat/impl/Goal;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g()V

    invoke-static {p0, v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "waitForReferrer"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    sput v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Failed to process IAT goals"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d()Lcom/inmobi/commons/analytics/iat/impl/GoalList;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    return-object v0
.end method

.method public static deinit()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->saveGoals()V

    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    return-void
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k()V

    return-void
.end method

.method private static g()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->l()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Getting wait time for referrer"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j()J

    move-result-wide v0

    const-string v2, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Waiting for referrer for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->getReferrerFromLogs()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saving referrer from logs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->setReferrerFromLogs(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Failed to set referrer"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getGoalList()Lcom/inmobi/commons/analytics/iat/impl/GoalList;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    return-object v0
.end method

.method public static getNetworkThread()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    return-object v0
.end method

.method public static getUIHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static getWebviewUploadStatus()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static h()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "timetoLive"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IMAdTrackerStatusUpload"

    const-string v4, "iat_ids"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const/16 v4, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "[InMobi]-[AdTracker]-4.4.1"

    const-string v3, "Error parsing ttl"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static i()Z
    .locals 3

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "referrer"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->getLoggedGoals()Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e:Landroid/os/Handler;

    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static isMetricSample()Z
    .locals 1

    sget-boolean v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i:Z

    return v0
.end method

.method public static isSynced()Z
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isUnstableNetwork()I
    .locals 1

    sget v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j:I

    return v0
.end method

.method private static j()J
    .locals 9

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getReferrerWaitTimeRetryCount()I

    move-result v0

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getReferrerWaitTimeRetryInterval()I

    move-result v1

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getReferrerWaitTime()I

    move-result v4

    mul-int v5, v0, v1

    add-int/lit8 v5, v5, 0x0

    mul-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    new-instance v6, Lcom/inmobi/commons/cache/RetryMechanism;

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->n:Ljava/util/Timer;

    invoke-direct {v6, v0, v1, v7}, Lcom/inmobi/commons/cache/RetryMechanism;-><init>(IILjava/util/Timer;)V

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;-><init>()V

    invoke-virtual {v6, v0}, Lcom/inmobi/commons/cache/RetryMechanism;->rescheduleTimer(Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;)V

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v5, "referrerWaitTime"

    invoke-static {v0, v1, v5}, Lcom/inmobi/commons/internal/FileOperations;->getLongPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :try_start_3
    div-int/lit16 v0, v4, 0x3e8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    int-to-long v0, v0

    :cond_0
    :goto_0
    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_1
    const-string v3, "[InMobi]-[AdTracker]-4.4.1"

    const-string v4, "Failed to get wait time"

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static k()V
    .locals 5

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fetch Wait time URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wait time received for referrer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "referrerWaitTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IMAdTrackerStatusUpload"

    const-string v4, "referrerWaitTime"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "[InMobi]-[AdTracker]-4.4.1"

    const-string v3, "Error fetching wait time for referrer"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Error fetching wait time for referrer"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/inmobi/commons/internal/CommonsException;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/internal/CommonsException;-><init>(I)V

    throw v0
.end method

.method private static l()Z
    .locals 3

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "waitForReferrer"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static notifyThread()V
    .locals 3

    :try_start_0
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Failed to notify thread"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized reportToServer(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;
    .locals 4

    const-class v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$a;

    invoke-direct {v2, p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static reportUsingNetwork(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "iat_ids"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    invoke-static {p0, p1, v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerRequestResponseBuilder;->sendHTTPRequest(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    move-result-object v0

    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    if-ne v2, v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully uploaded goal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->RELOAD_WEBVIEW_ERROR:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v2, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to upload goal: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Failed to report goal: "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to upload goal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected static reportUsingWebview(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getWebviewTimeout()I

    move-result v7

    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->h:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerRequestResponseBuilder;->saveWebviewRequestParam(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)V

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->h:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-virtual {v0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->loadWebview(Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    int-to-long v2, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->isWebviewLoading()Z

    move-result v0

    if-ne v4, v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v5, 0x198

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->reportMetric(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to upload goal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->h:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-virtual {v0, v7}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->deinit(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Failed to load webview Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :try_start_4
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uploaded goal successfully: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public static setSynced(Z)V
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static setWebviewUploadStatus(Z)V
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static waitThread(I)V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Failed to notify thread"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
