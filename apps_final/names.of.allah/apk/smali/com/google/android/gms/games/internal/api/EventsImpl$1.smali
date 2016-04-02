.class Lcom/google/android/gms/games/internal/api/EventsImpl$1;
.super Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl;


# instance fields
.field final synthetic Pb:Z

.field final synthetic Pk:[Ljava/lang/String;

.field final synthetic Pl:Lcom/google/android/gms/games/internal/api/EventsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/EventsImpl;Z[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->Pl:Lcom/google/android/gms/games/internal/api/EventsImpl;

    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->Pb:Z

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->Pk:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/EventsImpl$LoadImpl;-><init>(Lcom/google/android/gms/games/internal/api/EventsImpl$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->Pb:Z

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$1;->Pk:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Z[Ljava/lang/String;)V

    return-void
.end method
