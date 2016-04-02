.class public abstract Lcom/google/android/gms/internal/hc$d;
.super Lcom/google/android/gms/internal/hc$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/hc",
        "<TT;>.b<TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final DD:Lcom/google/android/gms/common/data/DataHolder;

.field final synthetic Gf:Lcom/google/android/gms/internal/hc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hc$d;->Gf:Lcom/google/android/gms/internal/hc;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/hc$d;->DD:Lcom/google/android/gms/common/data/DataHolder;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation
.end method

.method protected final d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$d;->DD:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/hc$d;->a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method protected fp()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$d;->DD:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hc$d;->DD:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic fq()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/hc$b;->fq()V

    return-void
.end method

.method public bridge synthetic fr()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/hc$b;->fr()V

    return-void
.end method

.method public bridge synthetic unregister()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/hc$b;->unregister()V

    return-void
.end method
