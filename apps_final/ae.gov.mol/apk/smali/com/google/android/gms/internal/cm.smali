.class public Lcom/google/android/gms/internal/cm;
.super Lcom/google/android/gms/internal/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cm$1;,
        Lcom/google/android/gms/internal/cm$d;,
        Lcom/google/android/gms/internal/cm$a;,
        Lcom/google/android/gms/internal/cm$b;,
        Lcom/google/android/gms/internal/cm$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/ck;",
        ">;"
    }
.end annotation


# instance fields
.field private final fA:Lcom/google/android/gms/internal/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cp",
            "<",
            "Lcom/google/android/gms/internal/ck;",
            ">;"
        }
    .end annotation
.end field

.field private final fG:Lcom/google/android/gms/internal/cl;

.field private final fH:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/u;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/cm$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cm$c;-><init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/cm$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cm;->fA:Lcom/google/android/gms/internal/cp;

    new-instance v0, Lcom/google/android/gms/internal/cl;

    iget-object v1, p0, Lcom/google/android/gms/internal/cm;->fA:Lcom/google/android/gms/internal/cp;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/cl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    iput-object p4, p0, Lcom/google/android/gms/internal/cm;->fH:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cm;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->y()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/cm;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->z()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/u$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/cm;->fH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x31360c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/z;->e(Lcom/google/android/gms/internal/y;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .locals 3
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/cn;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "geofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/internal/cn;>;"
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->y()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "At least one geofence must be specified."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ac;->b(ZLjava/lang/Object;)V

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OnAddGeofencesResultListener not provided."

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ck;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ck;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/cj;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cm$b;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/cm$b;-><init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected synthetic c(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cm;->q(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ck;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public disconnect()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cl;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cl;->aP()V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/u;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cl;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected q(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ck;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ck$a;->p(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ck;

    move-result-object v0

    return-object v0
.end method

.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->y()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ac;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ck;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ck;->removeActivityUpdates(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->y()V

    const-string v0, "PendingIntent must be specified."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OnRemoveGeofencesResultListener not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ck;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ck;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/cj;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cm$b;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/cm$b;-><init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .locals 4
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;
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

    .prologue
    .local p1, "geofenceRequestIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->y()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "geofenceRequestIds can\'t be null nor empty."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ac;->b(ZLjava/lang/Object;)V

    const-string v0, "OnRemoveGeofencesResultListener not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->z()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ck;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ck;->a([Ljava/lang/String;Lcom/google/android/gms/internal/cj;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/cm$b;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/cm$b;-><init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cl;->removeLocationUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/location/LocationListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cl;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    return-void
.end method

.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
    .locals 3
    .param p1, "detectionIntervalMillis"    # J
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->y()V

    invoke-static {p3}, Lcom/google/android/gms/internal/ac;->d(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    :goto_0
    const-string v1, "detectionIntervalMillis must be >= 0"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ac;->b(ZLjava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cm;->z()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ck;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/ck;->a(JZLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cl;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationListener;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/cm;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cl;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMockLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "mockLocation"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cl;->setMockLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setMockMode(Z)V
    .locals 1
    .param p1, "isMockMode"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->fG:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cl;->setMockMode(Z)V

    return-void
.end method
