.class final Lcom/google/android/gms/games/multiplayer/InvitationEntity$a;
.super Lcom/google/android/gms/games/multiplayer/InvitationEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/multiplayer/InvitationEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntityCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->as()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/games/GameEntity;->CREATOR:Lcom/google/android/gms/games/GameEntityCreator;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/GameEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    sget-object v9, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;

    invoke-virtual {v9, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, -0x1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Ljava/lang/String;JILcom/google/android/gms/games/multiplayer/ParticipantEntity;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntity$a;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    move-result-object v0

    return-object v0
.end method
