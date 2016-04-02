.class Lcom/google/android/gms/drive/internal/p$1;
.super Lcom/google/android/gms/drive/internal/p$i;


# instance fields
.field final synthetic IH:Lcom/google/android/gms/drive/query/Query;

.field final synthetic II:Lcom/google/android/gms/drive/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/p;Lcom/google/android/gms/drive/query/Query;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$1;->II:Lcom/google/android/gms/drive/internal/p;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/p$1;->IH:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/p$i;-><init>(Lcom/google/android/gms/drive/internal/p;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/p$1;->a(Lcom/google/android/gms/drive/internal/r;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/r;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/r;->gk()Lcom/google/android/gms/drive/internal/aa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/QueryRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/p$1;->IH:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {v1, v2}, Lcom/google/android/gms/drive/internal/QueryRequest;-><init>(Lcom/google/android/gms/drive/query/Query;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/p$h;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/p$h;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/aa;->a(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/ab;)V

    return-void
.end method
