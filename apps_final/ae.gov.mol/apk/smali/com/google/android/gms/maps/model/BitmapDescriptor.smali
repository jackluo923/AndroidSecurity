.class public final Lcom/google/android/gms/maps/model/BitmapDescriptor;
.super Ljava/lang/Object;


# instance fields
.field private final fO:Lcom/google/android/gms/internal/bi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bi;)V
    .locals 1
    .param p1, "remoteObject"    # Lcom/google/android/gms/internal/bi;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ac;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bi;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->fO:Lcom/google/android/gms/internal/bi;

    return-void
.end method


# virtual methods
.method public aU()Lcom/google/android/gms/internal/bi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->fO:Lcom/google/android/gms/internal/bi;

    return-object v0
.end method
