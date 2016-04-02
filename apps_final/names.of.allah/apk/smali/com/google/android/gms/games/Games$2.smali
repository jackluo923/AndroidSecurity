.class final Lcom/google/android/gms/games/Games$2;
.super Lcom/google/android/gms/games/Games$SignOutImpl;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/Games$SignOutImpl;-><init>(Lcom/google/android/gms/games/Games$1;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;)V

    return-void
.end method
