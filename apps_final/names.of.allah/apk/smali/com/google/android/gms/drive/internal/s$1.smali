.class Lcom/google/android/gms/drive/internal/s$1;
.super Lcom/google/android/gms/drive/internal/s$d;


# instance fields
.field final synthetic IX:I

.field final synthetic IY:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field final synthetic IZ:Lcom/google/android/gms/drive/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/s;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/s$1;->IZ:Lcom/google/android/gms/drive/internal/s;

    iput p2, p0, Lcom/google/android/gms/drive/internal/s$1;->IX:I

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/s$1;->IY:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/s$d;-><init>(Lcom/google/android/gms/drive/internal/s;Lcom/google/android/gms/drive/internal/s$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/s$1;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/OpenContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/s$1;->IZ:Lcom/google/android/gms/drive/internal/s;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/s;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/drive/internal/s$1;->IX:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    new-instance v2, Lcom/google/android/gms/drive/internal/s$c;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/s$1;->IY:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/drive/internal/s$c;-><init>(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/ab;)V

    return-void
.end method
