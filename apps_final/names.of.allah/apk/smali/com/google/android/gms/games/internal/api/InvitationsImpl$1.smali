.class Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;
.super Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;


# instance fields
.field final synthetic PB:I

.field final synthetic PC:Lcom/google/android/gms/games/internal/api/InvitationsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/InvitationsImpl;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->PC:Lcom/google/android/gms/games/internal/api/InvitationsImpl;

    iput p2, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->PB:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;-><init>(Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->PB:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->c(Lcom/google/android/gms/common/api/a$d;I)V

    return-void
.end method
