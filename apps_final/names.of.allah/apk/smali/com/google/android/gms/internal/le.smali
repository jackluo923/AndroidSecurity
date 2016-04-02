.class public final Lcom/google/android/gms/internal/le;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->kX()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method

.method public final getAboutMe()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBraggingRights()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCircledByCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentLocation()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "displayName"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/le;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGender()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    const-string v0, "personId"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/le;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/kt$c;

    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/le;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/kt$c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getObjectType()I
    .locals 1

    const-string v0, "objectType"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/le;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kt$e;->bA(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final synthetic getOrganizations()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->kU()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getPlacesLived()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->kV()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getPlusOneCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getRelationshipStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTagline()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/le;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getUrls()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->kW()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final hasAboutMe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasAgeRange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasBirthday()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasBraggingRights()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasCircledByCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasCover()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasCurrentLocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasDisplayName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasGender()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasIsPlusUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasLanguage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasNickname()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasObjectType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasOrganizations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasPlacesLived()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasPlusOneCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasRelationshipStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasTagline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasUrl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasUrls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasVerified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isPlusUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isVerified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final kU()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final kV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final kW()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Urls;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final kX()Lcom/google/android/gms/plus/model/people/Person;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/kt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/kt$c;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->getObjectType()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/le;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/kt;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/kt$c;ILjava/lang/String;)V

    return-object v0
.end method
