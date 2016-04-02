.class public Lcom/alipay/android/app/helper/TidHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/tid/TidInfo;

.field private static b:I

.field private static c:Ljava/lang/Object;

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/helper/TidHelper;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/helper/TidHelper;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->e:Z

    return-void
.end method

.method public static a()Lcom/alipay/android/app/helper/Tid;
    .locals 4

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loadLocalTid:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    new-instance v1, Lcom/alipay/android/app/helper/Tid;

    invoke-direct {v1}, Lcom/alipay/android/app/helper/Tid;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V

    return-object v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/alipay/android/app/helper/TidHelper;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadOrCreateTID: context == null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->g(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    sget-boolean v2, Lcom/alipay/android/app/helper/TidHelper;->e:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/alipay/android/app/helper/d;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/helper/d;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/android/app/helper/TidHelper;->e:Z

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->h(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->a()Lcom/alipay/android/app/helper/Tid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/alipay/android/app/helper/TidHelper;->b:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/tid/TidInfo;)V
    .locals 0

    sput-object p0, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/alipay/android/app/helper/TidHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->getTid()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u4e0d\u80fd\u5728\u4e3b\u7ebf\u7a0b\u91cd\u7f6eTID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()V

    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/alipay/android/app/helper/TidHelper;->b:I

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    invoke-static {p0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/helper/TidHelper;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    invoke-static {p0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "com.alipay.android.app"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v2, "3.5.3"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_1

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_2

    move v2, v1

    :goto_3
    if-lt v2, v5, :cond_3

    move v0, v1

    :goto_4
    if-gez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "0"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "msp"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "0"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v6, v0, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    sub-int v0, v3, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private static g(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 4

    sget-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->d:Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    new-instance v0, Lcom/alipay/android/app/helper/c;

    invoke-direct {v0}, Lcom/alipay/android/app/helper/c;-><init>()V

    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/alipay/android/app/helper/TidHelper;->b:I

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, Lcom/alipay/android/app/helper/TidHelper;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/helper/TidHelper;->c:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/android/app/helper/Tid;

    invoke-direct {v0}, Lcom/alipay/android/app/helper/Tid;-><init>()V

    sget-object v1, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/TidInfo;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V

    sget-object v1, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/tid/TidInfo;->a(Landroid/content/Context;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->a()Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    goto :goto_1
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "utdid"

    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "user_agent"

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/helper/MspConfig;->a(Lcom/alipay/android/app/tid/TidInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pa"

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    invoke-static {p0}, Lcom/alipay/android/app/helper/MspConfig;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/app/util/FrameUtils;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/net/Request;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

    new-instance v3, Lcom/alipay/android/app/data/InteractionData;

    invoke-direct {v3}, Lcom/alipay/android/app/data/InteractionData;-><init>()V

    invoke-direct {v2, v3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;-><init>(Lcom/alipay/android/app/data/InteractionData;)V

    new-instance v3, Lcom/alipay/android/app/net/Response;

    invoke-direct {v3}, Lcom/alipay/android/app/net/Response;-><init>()V

    invoke-virtual {v2, p0, v1, v3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)Lcom/alipay/android/app/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "tid"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "clientkey"

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->q()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/android/app/tid/TidInfo;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/tid/TidInfo;->a(Landroid/content/Context;)V

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
