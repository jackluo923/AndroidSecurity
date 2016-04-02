.class public final Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "mk-siteid"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Please call init() with valid context and app id"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Please pass a valid GoalName"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->checkDownloadGoalUploaded()Z

    move-result v0

    const-string v1, "download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne v8, v0, :cond_4

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Download goal already uploaded"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->init()V

    const-string v0, "download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->checkDownloadGoalAdded()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "insertStatus"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Goal Queued "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->getGoalList()Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    move-result-object v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->addGoal(Ljava/lang/String;IJIZ)Z

    :cond_5
    :goto_1
    invoke-static {v9}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->reportToServer(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    move v0, v8

    goto :goto_0

    :cond_6
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Goal Queued "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->getGoalList()Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    move-result-object v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->addGoal(Ljava/lang/String;IJIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Cannot report goal"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;
    .locals 2

    const-class v1, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->a:Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->a:Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->a:Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Application Context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "context cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "APP ID Cannot be NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "appId cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[AdTracker]-4.4.1"

    const-string v2, "Failed to init"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "appId cannot be blank"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "IMAdtracker init successfull"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IMAdTrackerStatusUpload"

    const-string v1, "mk-siteid"

    invoke-static {p1, v0, v1, p2}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "android.permission.INTERNET"

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Add android.permission.INTERNET and android.permission.ACCESS_NETWORK_STATE permission in Android manifest"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_5

    const-string v0, "android.permission.READ_LOGS"

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Add android.permission.READ_LOGS permission in Android Manifest"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IMAdTrackerStatusUpload"

    const-string v4, "t1"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/internal/FileOperations;->getLongPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "t1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/analytics/androidsdk/IMAdTrackerReceiver;

    invoke-direct {v2}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTrackerReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final reportAppDownloadGoal()V
    .locals 1

    const-string v0, "download"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public final reportCustomGoal(Ljava/lang/String;)V
    .locals 2

    const-string v0, "download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[InMobi]-[AdTracker]-4.4.1"

    const-string v1, "Download Goal should be reported using reportAppDownloadGoal().."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method
