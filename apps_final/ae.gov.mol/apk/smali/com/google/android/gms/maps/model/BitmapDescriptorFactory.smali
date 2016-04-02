.class public final Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;


# static fields
.field public static final HUE_AZURE:F = 210.0f

.field public static final HUE_BLUE:F = 240.0f

.field public static final HUE_CYAN:F = 180.0f

.field public static final HUE_GREEN:F = 120.0f

.field public static final HUE_MAGENTA:F = 300.0f

.field public static final HUE_ORANGE:F = 30.0f

.field public static final HUE_RED:F = 0.0f

.field public static final HUE_ROSE:F = 330.0f

.field public static final HUE_VIOLET:F = 270.0f

.field public static final HUE_YELLOW:F = 60.0f

.field private static gI:Lcom/google/android/gms/internal/dt;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/dt;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->gI:Lcom/google/android/gms/internal/dt;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ac;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dt;

    sput-object v0, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->gI:Lcom/google/android/gms/internal/dt;

    goto :goto_0
.end method

.method private static bn()Lcom/google/android/gms/internal/dt;
    .locals 2

    sget-object v0, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->gI:Lcom/google/android/gms/internal/dt;

    const-string v1, "IBitmapDescriptorFactory is not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dt;

    return-object v0
.end method

.method public static defaultMarker()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->bn()Lcom/google/android/gms/internal/dt;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/dt;->bs()Lcom/google/android/gms/internal/bi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/internal/bi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2
    .param p0, "hue"    # F

    .prologue
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->bn()Lcom/google/android/gms/internal/dt;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/dt;->c(F)Lcom/google/android/gms/internal/bi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/internal/bi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static fromAsset(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->bn()Lcom/google/android/gms/internal/dt;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/dt;->B(Ljava/lang/String;)Lcom/google/android/gms/internal/bi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/internal/bi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->bn()Lcom/google/android/gms/internal/dt;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/dt;->a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/bi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/internal/bi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->bn()Lcom/google/android/gms/internal/dt;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/dt;->C(Ljava/lang/String;)Lcom/google/android/gms/internal/bi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/internal/bi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static fromPath(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2
    .param p0, "absolutePath"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->bn()Lcom/google/android/gms/internal/dt;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/dt;->D(Ljava/lang/String;)Lcom/google/android/gms/internal/bi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/internal/bi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 2
    .param p0, "resourceId"    # I

    .prologue
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->bn()Lcom/google/android/gms/internal/dt;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/dt;->N(I)Lcom/google/android/gms/internal/bi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/internal/bi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
