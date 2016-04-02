.class Lcom/google/android/gms/drive/internal/u$2;
.super Lcom/google/android/gms/drive/internal/u$c;


# instance fields
.field final synthetic Ja:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic Jf:Lcom/google/android/gms/drive/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/u;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/u$2;->Jf:Lcom/google/android/gms/drive/internal/u;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/u$2;->Ja:Lcom/google/android/gms/drive/MetadataChangeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/u$c;-><init>(Lcom/google/android/gms/drive/internal/u;Lcom/google/android/gms/drive/internal/u$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/u$2;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CreateFolderRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/u$2;->Jf:Lcom/google/android/gms/drive/internal/u;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/u;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/u$2;->Ja:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->gh()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CreateFolderRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/u$b;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/u$b;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/CreateFolderRequest;Lcom/google/android/gms/drive/internal/ab;)V

    return-void
.end method
