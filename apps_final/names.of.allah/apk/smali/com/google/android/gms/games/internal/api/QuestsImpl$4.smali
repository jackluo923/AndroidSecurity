.class Lcom/google/android/gms/games/internal/api/QuestsImpl$4;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# instance fields
.field final synthetic Pb:Z

.field final synthetic Ql:Lcom/google/android/gms/games/internal/api/QuestsImpl;

.field final synthetic Qo:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Z[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Ql:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Pb:Z

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Qo:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Pb:Z

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Qo:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;Z[Ljava/lang/String;)V

    return-void
.end method
