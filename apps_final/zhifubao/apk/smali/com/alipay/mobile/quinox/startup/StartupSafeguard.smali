.class public final Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
.super Ljava/lang/Object;


# static fields
.field static final ANOMALOUS_STARTUP_CRASH:Ljava/lang/String; = "crash"

.field static final ANOMALOUS_STARTUP_PENDING:Ljava/lang/String; = "pending"

.field static final KEY_STARTUP_RECORD_CRASH_TIMES:Ljava/lang/String; = "key_startup_record_times"

.field static final KEY_STARTUP_RECORD_PENDING_TIMES:Ljava/lang/String; = "key_startup_record_times"

.field public static final TAG:Ljava/lang/String; = "StartupSafeguard"

.field private static a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e:J

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "framework_preferences"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0x4

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v0, "StartupSafeguard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clear some user data: times="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "StartupSafeguard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clearApplicationUserData(Partial): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    const-string/jumbo v0, "pending"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "contactsdb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "chatmsgdb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->clearApplicationDatabase(Landroid/content/Context;Ljava/util/Set;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_config.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "framework_preferences"

    const-string/jumbo v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "hotpatch_filepath_md5_storage.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "DynamicRelease.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.alipay.android.phone.social.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.alipay.mobile.emotion.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->clearSharePreference(Landroid/content/Context;Ljava/util/Set;)V

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "StartupSafeguard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clear all user data: times="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "StartupSafeguard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clearApplicationUserData(All): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    const-string/jumbo v0, "pending"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "com.alipay.android.phone.social.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.alipay.mobile.emotion.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "lib"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "mdap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v2, "contactsdb"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "chatmsgdb"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->clearApplicationUserData(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    .locals 2

    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final handleCrashOnStartup()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Landroid/content/Context;

    const-string/jumbo v1, "key_startup_record_times"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "StartupSafeguard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleCrashOnStartup(times="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Landroid/content/Context;

    const-string/jumbo v2, "crash"

    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public final handlePendingOnStartup(II)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Landroid/content/Context;

    const-string/jumbo v1, "key_startup_record_times"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "StartupSafeguard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Time out: handlePendingOnStartup(times="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", cpuFreq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " M HZ, timeOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Seconds)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Landroid/content/Context;

    const-string/jumbo v2, "pending"

    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public final init(Landroid/content/Context;Z)Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Z

    return-object p0
.end method

.method public final isFinishStartup()Z
    .locals 3

    const-string/jumbo v0, "StartupSafeguard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isFinishStartup() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final setIsFinishStartup(Z)V
    .locals 6

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "StartupSafeguard"

    const-string/jumbo v1, "setIsFinishStartup(finishStartup=true)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Should be call on UI Thread. (finishStartup==true)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, "StartupSafeguard"

    const-string/jumbo v1, "setIsFinishStartup(finishStartup=false)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e:J

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->getCPUFrequencyMax()I

    move-result v2

    const/16 v0, 0x5dc

    if-lt v2, v0, :cond_3

    const/16 v0, 0x1e

    move v3, v0

    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;II)V

    const-string/jumbo v2, "startup_pending_monitor"

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_3
    const/16 v0, 0x4b

    move v3, v0

    goto :goto_1
.end method
