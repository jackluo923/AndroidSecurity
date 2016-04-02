.class public final Lcom/google/android/gms/games/achievement/AchievementBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/games/achievement/Achievement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/l;)V
    .locals 0
    .param p1, "dataHolder"    # Lcom/google/android/gms/internal/l;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/internal/l;)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/games/achievement/Achievement;
    .locals 2
    .param p1, "position"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/bn;

    iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementBuffer;->N:Lcom/google/android/gms/internal/l;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/l;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->get(I)Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v0

    return-object v0
.end method
