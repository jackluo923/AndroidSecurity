.class Lcom/google/android/gms/internal/fz$1;
.super Lcom/google/android/gms/internal/fz$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fz$c",
        "<",
        "Lcom/google/android/gms/internal/fu$a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected a(Lcom/google/android/gms/internal/fv;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fz$1$1;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/internal/fz$1$1;-><init>(Lcom/google/android/gms/internal/fz$1;Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fw;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/fu$a;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/fz$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/fz$b;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fz$1;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/fu$a;

    move-result-object v0

    return-object v0
.end method
