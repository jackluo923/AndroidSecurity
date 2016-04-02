.class final Lcom/google/android/gms/plus/internal/e$c;
.super Lcom/google/android/gms/internal/hc$d;

# interfaces
.implements Lcom/google/android/gms/plus/Moments$LoadMomentsResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<",
        "Lcom/google/android/gms/plus/internal/d;",
        ">.d<",
        "Lcom/google/android/gms/common/api/a$d",
        "<",
        "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
        ">;>;",
        "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;"
    }
.end annotation


# instance fields
.field private final HP:Ljava/lang/String;

.field final synthetic abJ:Lcom/google/android/gms/plus/internal/e;

.field private final abK:Ljava/lang/String;

.field private abL:Lcom/google/android/gms/plus/model/moments/MomentBuffer;

.field private final yw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$c;->abJ:Lcom/google/android/gms/plus/internal/e;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/hc$d;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/e$c;->yw:Lcom/google/android/gms/common/api/Status;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/e$c;->HP:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/e$c;->abK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    invoke-direct {v0, p2}, Lcom/google/android/gms/plus/model/moments/MomentBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->abL:Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/a$d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/plus/internal/e$c;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public final getMomentBuffer()Lcom/google/android/gms/plus/model/moments/MomentBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->abL:Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    return-object v0
.end method

.method public final getNextPageToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->HP:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->yw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final getUpdated()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->abK:Ljava/lang/String;

    return-object v0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->abL:Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$c;->abL:Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/model/moments/MomentBuffer;->close()V

    :cond_0
    return-void
.end method
