.class public Lcom/inmobi/androidsdk/carb/CARB;
.super Ljava/lang/Object;


# static fields
.field public static final LOGGING_TAG:Ljava/lang/String; = "[InMobi]-[CARB]-4.4.1"

.field private static g:Lcom/inmobi/androidsdk/carb/CARB;

.field private static j:Landroid/content/SharedPreferences;

.field private static k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static l:Ljava/lang/Thread;

.field private static m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static n:Ljava/lang/Thread;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;


# instance fields
.field a:[B

.field b:[B

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final r:I

.field private final s:I

.field private t:[B

.field private u:[B

.field private v:[B

.field private w:[B

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/androidsdk/carb/CarbInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/inmobi/androidsdk/carb/CARB;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/carb/CARB;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->g:Lcom/inmobi/androidsdk/carb/CARB;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->o:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->p:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->q:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "carb_last_req_time"

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->h:Ljava/lang/String;

    const-string v0, "carbpreference"

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->i:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->r:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->s:I

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->f:Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->x:Ljava/util/ArrayList;

    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->initialize()V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->j:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->j:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/carb/CARB;Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/inmobi/androidsdk/carb/CARB;->a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static/range {p1 .. p6}, Lcom/inmobi/commons/internal/InternalSDKUtil;->SeMeGe(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&sn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[InMobi]-[CARB]-4.4.1"

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/carb/CARB;)V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->c()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/carb/CARB;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/carb/CARB;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/androidsdk/carb/CarbInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/androidsdk/carb/CARB$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/inmobi/androidsdk/carb/CARB$a;-><init>(Lcom/inmobi/androidsdk/carb/CARB;Ljava/util/ArrayList;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/carb/CARB;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/carb/CARB;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/carb/CARB;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/carb/CARB;->t:[B

    return-object p1
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/androidsdk/carb/CARB$b;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/carb/CARB$b;-><init>(Lcom/inmobi/androidsdk/carb/CARB;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/androidsdk/carb/CARB;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/carb/CARB;)V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->e()V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/carb/CARB;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/carb/CARB;->v:[B

    return-object p1
.end method

.method private c()V
    .locals 2

    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->a:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->u:[B

    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->u:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/carb/CARB;)[B
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->t:[B

    return-object v0
.end method

.method private d()V
    .locals 2

    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->b:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->w:[B

    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->w:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/carb/CARB;)[B
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->u:[B

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/carb/CARB;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->h:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/carb/CARB;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()V
    .locals 2

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public static fillCarbInfo()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v3, Lcom/inmobi/androidsdk/carb/CARB;->o:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/inmobi/androidsdk/carb/CARB;->q:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->setAppVer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-4.4.1"

    const-string v2, "Failed to fill CarbInfo"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/carb/CARB;)V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->d()V

    return-void
.end method

.method public static getAppBid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppDisplayName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVer()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryISO(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/inmobi/androidsdk/carb/CARB;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->g:Lcom/inmobi/androidsdk/carb/CARB;

    return-object v0
.end method

.method public static getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/carb/CARB;)V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->f()V

    return-void
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/carb/CARB;)[B
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->v:[B

    return-object v0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/carb/CARB;)[B
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB;->w:[B

    return-object v0
.end method

.method public static setAppBId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inmobi/androidsdk/carb/CARB;->o:Ljava/lang/String;

    return-void
.end method

.method public static setAppDisplayName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inmobi/androidsdk/carb/CARB;->q:Ljava/lang/String;

    return-void
.end method

.method public static setAppVer(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inmobi/androidsdk/carb/CARB;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setCallBack(Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/carb/CARB;->f:Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;

    return-void
.end method

.method public declared-synchronized startCarb()V
    .locals 8

    const-wide/16 v6, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->isCarbEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[InMobi]-[CARB]-4.4.1"

    const-string v1, "CARB feature disabled."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/androidsdk/carb/CARB;->j:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB;->h:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v6, v0

    if-nez v2, :cond_2

    const-string v0, "[InMobi]-[CARB]-4.4.1"

    const-string v1, "Requesting CARB first time"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getRetreiveFrequncy()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-gtz v0, :cond_3

    const-string v0, "[InMobi]-[CARB]-4.4.1"

    const-string v1, "CARB request interval reached. Requesting again"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB;->b()V

    goto :goto_0

    :cond_3
    const-string v0, "[InMobi]-[CARB]-4.4.1"

    const-string v1, "CARB request interval not reached. NO request"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
