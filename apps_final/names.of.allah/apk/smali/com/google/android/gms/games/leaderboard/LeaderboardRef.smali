.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboard;


# instance fields
.field private final RD:I

.field private final Sp:Lcom/google/android/gms/games/Game;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput p3, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->RD:I

    new-instance v0, Lcom/google/android/gms/games/GameRef;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/GameRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->Sp:Lcom/google/android/gms/games/Game;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->a(Lcom/google/android/gms/games/leaderboard/Leaderboard;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->iu()Lcom/google/android/gms/games/leaderboard/Leaderboard;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getGame()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->Sp:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public final getIconImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "board_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "board_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLeaderboardId()Ljava/lang/String;
    .locals 1

    const-string v0, "external_leaderboard_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScoreOrder()I
    .locals 1

    const-string v0, "score_order"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getVariants()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->RD:I

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->RD:I

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;

    iget-object v3, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->DD:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardRef;->Ez:I

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->a(Lcom/google/android/gms/games/leaderboard/Leaderboard;)I

    move-result v0

    return v0
.end method

.method public final iu()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;-><init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->b(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
