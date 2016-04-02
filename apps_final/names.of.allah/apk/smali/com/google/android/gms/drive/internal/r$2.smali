.class Lcom/google/android/gms/drive/internal/r$2;
.super Lcom/google/android/gms/drive/internal/p$j;


# instance fields
.field final synthetic IT:Lcom/google/android/gms/drive/DriveId;

.field final synthetic IU:I

.field final synthetic IV:Lcom/google/android/gms/drive/internal/x;

.field final synthetic IW:Lcom/google/android/gms/drive/internal/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/r;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/internal/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/r$2;->IW:Lcom/google/android/gms/drive/internal/r;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/r$2;->IT:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/internal/r$2;->IU:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/r$2;->IV:Lcom/google/android/gms/drive/internal/x;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p$j;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/r$2;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/r$2;->IT:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/drive/internal/r$2;->IU:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/r$2;->IV:Lcom/google/android/gms/drive/internal/x;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/drive/internal/aw;

    invoke-direct {v4, p0}, Lcom/google/android/gms/drive/internal/aw;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Lcom/google/android/gms/drive/internal/ac;Ljava/lang/String;Lcom/google/android/gms/drive/internal/ab;)V

    return-void
.end method
