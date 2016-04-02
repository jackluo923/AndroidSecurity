.class final Lcom/google/android/gms/internal/e$d;
.super Lcom/google/android/gms/internal/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/g;",
        ">.c<",
        "Lcom/google/android/gms/appstate/OnStateListLoadedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/e;Lcom/google/android/gms/appstate/OnStateListLoadedListener;Lcom/google/android/gms/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e$d;->o:Lcom/google/android/gms/internal/e;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/u$c;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;Lcom/google/android/gms/internal/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appstate/OnStateListLoadedListener;Lcom/google/android/gms/internal/l;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/l;->getStatusCode()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/appstate/AppStateBuffer;

    invoke-direct {v1, p2}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/internal/l;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/appstate/OnStateListLoadedListener;->onStateListLoaded(ILcom/google/android/gms/appstate/AppStateBuffer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/l;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/appstate/OnStateListLoadedListener;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/e$d;->a(Lcom/google/android/gms/appstate/OnStateListLoadedListener;Lcom/google/android/gms/internal/l;)V

    return-void
.end method
