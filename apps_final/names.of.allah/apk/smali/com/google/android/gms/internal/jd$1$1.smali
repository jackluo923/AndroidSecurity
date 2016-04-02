.class Lcom/google/android/gms/internal/jd$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;


# instance fields
.field final synthetic VC:Lcom/google/android/gms/internal/jd$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jd$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jd$1$1;->VC:Lcom/google/android/gms/internal/jd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddGeofencesResult(I[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jd$1$1;->VC:Lcom/google/android/gms/internal/jd$1;

    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->cK(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jd$1;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
