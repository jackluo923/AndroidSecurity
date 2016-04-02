.class Lcom/google/android/gms/games/internal/api/QuestsImpl$3;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# instance fields
.field final synthetic PB:I

.field final synthetic Pb:Z

.field final synthetic Ql:Lcom/google/android/gms/games/internal/api/QuestsImpl;

.field final synthetic Qn:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;[IIZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Ql:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Qn:[I

    iput p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->PB:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Pb:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Qn:[I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->PB:I

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Pb:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;[IIZ)V

    return-void
.end method
