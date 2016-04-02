.class final Lcom/google/android/gms/internal/bp$e;
.super Lcom/google/android/gms/internal/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/u",
        "<",
        "Lcom/google/android/gms/internal/bu;",
        ">.b<",
        "Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dE:Lcom/google/android/gms/internal/bp;

.field private final dG:Ljava/lang/String;

.field private final p:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bp$e;->dE:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/u$b;-><init>(Lcom/google/android/gms/internal/u;Ljava/lang/Object;)V

    iput p3, p0, Lcom/google/android/gms/internal/bp$e;->p:I

    iput-object p4, p0, Lcom/google/android/gms/internal/bp$e;->dG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/bp$e;->p:I

    iget-object v1, p0, Lcom/google/android/gms/internal/bp$e;->dG:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;->onAchievementUpdated(ILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bp$e;->a(Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
