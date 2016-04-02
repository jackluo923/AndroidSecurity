.class public final Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "IceDataCollector"

.field private static a:Landroid/content/Context;

.field private static b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

.field private static c:Landroid/os/Looper;

.field private static d:Landroid/os/Handler;

.field private static e:Z

.field private static f:Landroid/app/Activity;

.field private static g:Ljava/lang/Runnable;

.field private static h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/inmobi/commons/thinICE/icedatacollector/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

.field private static final j:Ljava/lang/Object;

.field private static k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

.field private static l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a:Landroid/content/Context;

    new-instance v0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-direct {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f:Landroid/app/Activity;

    new-instance v0, Lcom/inmobi/commons/thinICE/icedatacollector/b;

    invoke-direct {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/b;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->g:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i:Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    new-instance v0, Lcom/inmobi/commons/thinICE/icedatacollector/a;

    invoke-direct {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/a;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->l:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/inmobi/commons/thinICE/icedatacollector/Sample;)Lcom/inmobi/commons/thinICE/icedatacollector/Sample;
    .locals 0

    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i:Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    return-object p0
.end method

.method static synthetic a(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;
    .locals 0

    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    return-object p0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    return v0
.end method

.method private static final a(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->n()V

    return-void
.end method

.method static synthetic c()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic d()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic f()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    return-object v0
.end method

.method public static declared-synchronized flush()V
    .locals 3

    const-class v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IceDataCollector"

    const-string v2, "-- flush()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i:Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic g()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getConfig()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 2

    new-instance v0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;-><init>(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)V

    return-object v0
.end method

.method public static getConnectedWifiInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getWifiFlags()I

    move-result v3

    const/4 v0, 0x2

    invoke-static {v3, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v1

    sget-object v3, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleConnectedWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-static {p0}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->hasGetConnectedWifiInfoPermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, v0, v1}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->getConnectedWifiInfo(Landroid/content/Context;ZZ)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "IceDataCollector"

    const-string v1, "application does not have permission to access connected wifi ap"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "IceDataCollector"

    const-string v3, "Error getting wifi data"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public static getData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/thinICE/icedatacollector/Sample;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IceDataCollector"

    const-string v1, "-- getData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->flush()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSampleCount()I
    .locals 2

    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    return-object v0
.end method

.method static synthetic i()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l()Lcom/inmobi/commons/thinICE/icedatacollector/Sample;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i:Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    return-object v0
.end method

.method private static m()V
    .locals 6

    const-wide/16 v4, 0x2

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IceDataCollector"

    const-string v1, "startSampling()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IceDataCollector"

    const-string v1, "ignoring, already sampling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IDC"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->l:Ljava/lang/Runnable;

    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IceDataCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "next sample in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static n()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IceDataCollector"

    const-string v1, "stopSampling()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IceDataCollector"

    const-string v1, "ignoring, not currently sampling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    sput-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IceDataCollector"

    const-string v1, "sampling stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized setConfig(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)V
    .locals 7

    const-class v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IceDataCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-- setConfig("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_2

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IceDataCollector"

    const-string v2, "aborting, config is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleHistorySize()I

    move-result v2

    sget-object v3, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleHistorySize()I

    move-result v3

    if-ge v3, v2, :cond_5

    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v4, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v3, :cond_4

    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "IceDataCollector"

    const-string v5, "new sample history size, removing samples from start of list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v4, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    const/4 v5, 0x0

    sget-object v6, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    sub-int v3, v6, v3

    invoke-virtual {v4, v5, v3}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :try_start_3
    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    if-nez v2, :cond_6

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IceDataCollector"

    const-string v2, "not restarting sampling, not currently sampling"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0

    :cond_6
    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-static {v0, v2}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->n()V

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->m()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->flush()V

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a:Landroid/content/Context;

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f:Landroid/app/Activity;

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static setListener(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;)V
    .locals 0

    sput-object p0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .locals 4

    const-class v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "IceDataCollector"

    const-string v3, "-- start()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_2

    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "IceDataCollector"

    const-string v3, "aborting, context is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :cond_2
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v1}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "IceDataCollector"

    const-string v3, "ignoring, data collection is disabled in settings"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v1, v3, :cond_5

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "IceDataCollector"

    const-string v3, "aborting, build < 14 and context is not an activity"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f:Landroid/app/Activity;

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a:Landroid/content/Context;

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->m()V

    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "IceDataCollector"

    const-string v3, "stop previously requested, clearing request"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v1, 0x0

    sput-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    sget-object v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    sget-object v3, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized stop()V
    .locals 5

    const-class v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IceDataCollector"

    const-string v2, "-- stop()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c:Landroid/os/Looper;

    if-nez v0, :cond_2

    const-string v0, "IceDataCollector"

    const-string v2, "ignoring, not currently running"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    if-eqz v0, :cond_3

    const-string v0, "IceDataCollector"

    const-string v2, "ignoring, stop already requested"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e:Z

    sget-object v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d:Landroid/os/Handler;

    sget-object v2, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->g:Ljava/lang/Runnable;

    sget-object v3, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getStopRequestTimeout()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IceDataCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stop requested, occurring in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b:Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getStopRequestTimeout()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
