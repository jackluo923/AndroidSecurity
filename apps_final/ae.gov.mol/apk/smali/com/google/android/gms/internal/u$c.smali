.class public abstract Lcom/google/android/gms/internal/u$c;
.super Lcom/google/android/gms/internal/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/u",
        "<TT;>.b<TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final N:Lcom/google/android/gms/internal/l;

.field final synthetic bz:Lcom/google/android/gms/internal/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;Lcom/google/android/gms/internal/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/google/android/gms/internal/l;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/u$c;->bz:Lcom/google/android/gms/internal/u;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/u$b;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/u$c;->N:Lcom/google/android/gms/internal/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic A()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/u$b;->A()V

    return-void
.end method

.method public bridge synthetic B()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/u$b;->B()V

    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/u$c;->N:Lcom/google/android/gms/internal/l;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/u$c;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/l;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Lcom/google/android/gms/internal/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/google/android/gms/internal/l;",
            ")V"
        }
    .end annotation
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u$c;->N:Lcom/google/android/gms/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$c;->N:Lcom/google/android/gms/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/l;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic unregister()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/u$b;->unregister()V

    return-void
.end method
