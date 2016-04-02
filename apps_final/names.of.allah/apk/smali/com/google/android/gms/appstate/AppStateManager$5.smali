.class final Lcom/google/android/gms/appstate/AppStateManager$5;
.super Lcom/google/android/gms/appstate/AppStateManager$b;


# instance fields
.field final synthetic yH:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$5;->yH:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$b;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/gb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5;->a(Lcom/google/android/gms/internal/gb;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/gb;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$5;->yH:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/common/api/a$d;I)V

    return-void
.end method

.method public final synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5;->g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$5$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$5$1;-><init>(Lcom/google/android/gms/appstate/AppStateManager$5;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
