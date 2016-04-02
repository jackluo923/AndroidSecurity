.class Lcom/google/android/gms/internal/jd$3;
.super Lcom/google/android/gms/internal/jd$a;


# instance fields
.field final synthetic VB:Lcom/google/android/gms/internal/jd;

.field final synthetic VE:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jd;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/jd$3;->VB:Lcom/google/android/gms/internal/jd;

    iput-object p2, p0, Lcom/google/android/gms/internal/jd$3;->VE:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jd$a;-><init>(Lcom/google/android/gms/internal/jd$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/jh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jd$3;->a(Lcom/google/android/gms/internal/jh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jh;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/jd$3$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jd$3$1;-><init>(Lcom/google/android/gms/internal/jd$3;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/jd$3;->VE:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/jh;->removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V

    return-void
.end method
