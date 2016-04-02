.class public final Lcom/inmobi/androidsdk/impl/UserInfo;
.super Ljava/lang/Object;


# instance fields
.field private A:Ljava/util/Random;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:J

.field private E:Landroid/app/Activity;

.field a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/location/LocationManager;

.field private n:D

.field private o:D

.field private p:D

.field private q:Z

.field private r:Landroid/content/Context;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/inmobi/androidsdk/AdRequest;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Ljava/lang/String;

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->E:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Landroid/content/Context;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/util/Random;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method private a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:D

    return-void
.end method

.method private a(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->g:Ljava/lang/String;

    return-void
.end method

.method private a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:J

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "A_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "A_ID"

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Z

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:D

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:D

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:J

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Landroid/location/LocationManager;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->m:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    return-void
.end method

.method private declared-synchronized b()Landroid/location/LocationManager;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->m:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(D)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:D

    return-void
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->c:Ljava/lang/String;

    return-void
.end method

.method private b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Z

    return-void
.end method

.method private c(D)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:D

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->d:Ljava/lang/String;

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->isLocationInquiryAllowed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->e:Ljava/lang/String;

    return-void
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    return v0
.end method

.method private e()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/LocationManager;)V

    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastBestKnownLocation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->f()Landroid/location/Location;

    move-result-object v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastKnownLocation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/Location;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Error getting the Location Info "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->i:Ljava/lang/String;

    return-void
.end method

.method private f()Landroid/location/Location;
    .locals 5

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/LocationManager;)V

    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->j:Ljava/lang/String;

    return-void
.end method

.method private g()V
    .locals 3

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    return-void
.end method

.method private h()V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->f(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDeviceIDMask()I

    move-result v0

    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_6

    const-string v2, "LTVID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRandomKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/inmobi/commons/uid/UID;->getUidMapWitoutXOR(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/content/Context;)V

    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getConnectivityType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->d(Ljava/lang/String;)V

    :try_start_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getCurrentOrientationInFixedValues(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    return-void

    :cond_8
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "user.language"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "user.region"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_0

    const-string v0, "en"

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v4, "LTVID not available yet in configs"

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_3

    :cond_9
    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x4

    :try_start_3
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Error getting the orientation info "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    if-nez v0, :cond_b

    const/4 v0, 0x3

    :try_start_4
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V

    goto :goto_4

    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_c
    move-object v0, v2

    goto/16 :goto_1

    :cond_d
    move-object v0, v3

    goto :goto_5
.end method

.method private h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Ljava/lang/String;

    return-void
.end method

.method private i()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->E:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final getAdUnitSlot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final getAge()I
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getAge()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppBId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Landroid/content/Context;

    return-object v0
.end method

.method public final getAreaCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDateOfBirth()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/AdRequest;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getEducation()Lcom/inmobi/commons/EducationType;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getEthnicity()Lcom/inmobi/commons/EthnicityType;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGender()Lcom/inmobi/commons/GenderType;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getGender()Lcom/inmobi/commons/GenderType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGeoTS()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:J

    return-wide v0
.end method

.method public final getHasChildren()Lcom/inmobi/commons/HasChildren;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIncome()I
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getIncome()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInterests()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getInterests()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLat()D
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:D

    return-wide v0
.end method

.method public final getLocAccuracy()D
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:D

    return-wide v0
.end method

.method public final getLocalization()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLon()D
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:D

    return-wide v0
.end method

.method public final getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getMaritalStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getODINId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:I

    return v0
.end method

.method public final getPhoneDefaultUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getPlainUidMap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRandomKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefTagKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefTagValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRsakeyVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getRSAKeyVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScreenDensity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getSearchString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getSexualOrientation()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSiteId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getSlotId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final getUIDMapEncrypted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final isValidGeoInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Z

    return v0
.end method

.method public final setAdUnitSlot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:Ljava/lang/String;

    return-void
.end method

.method public final setPhoneDefaultUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    return-void
.end method

.method public final setRefTagKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Ljava/lang/String;

    return-void
.end method

.method public final setRefTagValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:Ljava/lang/String;

    return-void
.end method

.method public final setScreenDensity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:Ljava/lang/String;

    return-void
.end method

.method public final setScreenSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Ljava/lang/String;

    return-void
.end method

.method public final setSlotId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->h()V

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Z

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/AdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/AdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/Location;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->g()V

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
