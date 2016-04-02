.class public Lcom/google/android/gms/internal/fy;
.super Lcom/google/android/gms/internal/hc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<",
        "Lcom/google/android/gms/internal/fv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 6

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected C(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fv;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/fv$a;->A(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fv;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hc$e;)V
    .locals 2

    const v0, 0x4d7808

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/hj;->b(Lcom/google/android/gms/internal/hi;ILjava/lang/String;)V

    return-void
.end method

.method protected bp()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.icing.LIGHTWEIGHT_INDEX_SERVICE"

    return-object v0
.end method

.method protected bq()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch"

    return-object v0
.end method

.method public dM()Lcom/google/android/gms/internal/fv;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fy;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fv;

    return-object v0
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fy;->C(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fv;

    move-result-object v0

    return-object v0
.end method
