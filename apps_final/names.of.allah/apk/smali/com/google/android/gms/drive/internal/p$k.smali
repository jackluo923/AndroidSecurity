.class Lcom/google/android/gms/drive/internal/p$k;
.super Lcom/google/android/gms/drive/internal/p$j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p$j;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/api/a$c;

    sget-object v0, Lcom/google/android/gms/drive/Drive;->yE:Lcom/google/android/gms/common/api/Api$c;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/r;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/a$c;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/internal/p$k;->a(Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/drive/internal/p$k;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/p$k;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 0

    return-void
.end method
