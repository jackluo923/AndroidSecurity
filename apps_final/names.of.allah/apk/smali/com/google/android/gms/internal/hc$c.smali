.class public final Lcom/google/android/gms/internal/hc$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# instance fields
.field private final Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/hc$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    check-cast p1, Lcom/google/android/gms/internal/hc$c;

    iget-object v1, p1, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    invoke-interface {v0}, Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;->onDisconnected()V

    return-void
.end method
