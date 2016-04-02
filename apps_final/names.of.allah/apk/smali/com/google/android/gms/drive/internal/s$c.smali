.class Lcom/google/android/gms/drive/internal/s$c;
.super Lcom/google/android/gms/drive/internal/c;


# instance fields
.field private final Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field private final yO:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$ContentsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$ContentsResult;",
            ">;",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/s$c;->yO:Lcom/google/android/gms/common/api/a$d;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/s$c;->Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/internal/OnContentsResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$c;->yO:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/drive/internal/p$a;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnContentsResponse;->go()Lcom/google/android/gms/drive/Contents;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/p$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$c;->Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$c;->Jb:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->gp()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->gq()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;->onProgress(JJ)V

    :cond_0
    return-void
.end method

.method public o(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/s$c;->yO:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/drive/internal/p$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/p$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    return-void
.end method
