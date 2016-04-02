.class Lcom/adsdk/sdk/mraid/MraidPlacementTypeProperty;
.super Lcom/adsdk/sdk/mraid/MraidProperty;


# instance fields
.field private final mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidProperty;-><init>()V

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidPlacementTypeProperty;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    return-void
.end method

.method public static createWithType(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Lcom/adsdk/sdk/mraid/MraidPlacementTypeProperty;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidPlacementTypeProperty;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidPlacementTypeProperty;-><init>(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "placementType: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidPlacementTypeProperty;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
