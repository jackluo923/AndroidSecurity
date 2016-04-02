.class public Lcom/google/android/gms/internal/jh;
.super Lcom/google/android/gms/internal/hc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<",
        "Lcom/google/android/gms/internal/jf;",
        ">;"
    }
.end annotation


# instance fields
.field private final VG:Lcom/google/android/gms/internal/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jk",
            "<",
            "Lcom/google/android/gms/internal/jf;",
            ">;"
        }
    .end annotation
.end field

.field private final VM:Lcom/google/android/gms/internal/jg;

.field private final VN:Lcom/google/android/gms/internal/ka;

.field private final VO:Lcom/google/android/gms/internal/ja;

.field private final VP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/jh;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/jh$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/jh$c;-><init>(Lcom/google/android/gms/internal/jh;Lcom/google/android/gms/internal/jh$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    new-instance v0, Lcom/google/android/gms/internal/jg;

    iget-object v1, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/jg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    iput-object p6, p0, Lcom/google/android/gms/internal/jh;->VP:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ka;

    iget-object v1, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    invoke-direct {v0, p3, v1}, Lcom/google/android/gms/internal/ka;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VN:Lcom/google/android/gms/internal/ka;

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    invoke-static {p1, p7, v0}, Lcom/google/android/gms/internal/ja;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/jk;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VO:Lcom/google/android/gms/internal/ja;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/jh$c;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/jh$c;-><init>(Lcom/google/android/gms/internal/jh;Lcom/google/android/gms/internal/jh$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    new-instance v0, Lcom/google/android/gms/internal/jg;

    iget-object v1, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/jg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    iput-object p4, p0, Lcom/google/android/gms/internal/jh;->VP:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ka;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ka;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VN:Lcom/google/android/gms/internal/ka;

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ja;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/jk;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VO:Lcom/google/android/gms/internal/ja;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/jh;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->ci()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hc$e;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/jh;->VP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x4d7808

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/hj;->e(Lcom/google/android/gms/internal/hi;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ji;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->ci()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "At least one geofence must be specified."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OnAddGeofencesResultListener not provided."

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/jf;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/jh$b;

    invoke-direct {v0, p3, p0}, Lcom/google/android/gms/internal/jh$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;Lcom/google/android/gms/internal/jh;)V

    move-object v1, v0

    goto :goto_1
.end method

.method protected at(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jf;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/jf$a;->as(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jf;

    move-result-object v0

    return-object v0
.end method

.method protected bp()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected bq()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public disconnect()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->iT()V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/hc;->disconnect()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->ci()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/jf;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->ci()V

    const-string v0, "PendingIntent must be specified."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OnRemoveGeofencesResultListener not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/jf;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/jh$b;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/jh$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;Lcom/google/android/gms/internal/jh;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->ci()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "geofenceRequestIds can\'t be null nor empty."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    const-string v0, "OnRemoveGeofencesResultListener not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->fo()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/jf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/jf;->a([Ljava/lang/String;Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/jh$b;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/jh$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;Lcom/google/android/gms/internal/jh;)V

    move-object v2, v1

    goto :goto_1
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->removeLocationUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    return-void
.end method

.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->ci()V

    invoke-static {p3}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "detectionIntervalMillis must be >= 0"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/jf;->a(JZLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/jg;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/jh;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/jg;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMockLocation(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->setMockLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setMockMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->setMockMode(Z)V

    return-void
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jh;->at(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jf;

    move-result-object v0

    return-object v0
.end method
