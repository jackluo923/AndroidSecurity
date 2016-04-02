.class Lcom/google/android/gms/drive/internal/s$2;
.super Lcom/google/android/gms/drive/internal/s$b;


# instance fields
.field final synthetic IJ:Lcom/google/android/gms/drive/Contents;

.field final synthetic IZ:Lcom/google/android/gms/drive/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/Contents;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/s$2;->IZ:Lcom/google/android/gms/drive/internal/s;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/s$2;->IJ:Lcom/google/android/gms/drive/Contents;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/s$b;-><init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/internal/s$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/s$2;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$2;->IJ:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/s$2;->IJ:Lcom/google/android/gms/drive/Contents;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(Lcom/google/android/gms/drive/Contents;Z)V

    new-instance v2, Lcom/google/android/gms/drive/internal/aw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/aw;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    return-void
.end method
