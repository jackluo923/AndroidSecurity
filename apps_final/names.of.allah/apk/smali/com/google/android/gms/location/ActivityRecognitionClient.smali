.class public Lcom/google/android/gms/location/ActivityRecognitionClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final UR:Lcom/google/android/gms/internal/jh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/jh;

    const-string v1, "activity_recognition"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/jh;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->disconnect()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->removeActivityUpdates(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/jh;->requestActivityUpdates(JLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->UR:Lcom/google/android/gms/internal/jh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method
