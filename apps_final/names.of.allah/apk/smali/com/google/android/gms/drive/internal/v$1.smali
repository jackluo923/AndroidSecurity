.class Lcom/google/android/gms/drive/internal/v$1;
.super Lcom/google/android/gms/drive/internal/v$a;


# instance fields
.field final synthetic Ji:Lcom/google/android/gms/drive/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/v;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/v$1;->Ji:Lcom/google/android/gms/drive/internal/v;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/v$a;-><init>(Lcom/google/android/gms/drive/internal/v;Lcom/google/android/gms/drive/internal/v$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/v$1;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/GetMetadataRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/v$1;->Ji:Lcom/google/android/gms/drive/internal/v;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/v;->Hw:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/v$d;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/v$d;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/ab;)V

    return-void
.end method
