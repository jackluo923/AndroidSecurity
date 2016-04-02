.class Lcom/google/android/gms/games/internal/api/QuestsImpl$1;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;


# instance fields
.field final synthetic Qk:Ljava/lang/String;

.field final synthetic Ql:Lcom/google/android/gms/games/internal/api/QuestsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;->Ql:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;->Qk:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;->Qk:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->i(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V

    return-void
.end method
