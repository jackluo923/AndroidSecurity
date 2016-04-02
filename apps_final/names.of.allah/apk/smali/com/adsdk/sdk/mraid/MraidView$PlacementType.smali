.class public final enum Lcom/adsdk/sdk/mraid/MraidView$PlacementType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adsdk/sdk/mraid/MraidView$PlacementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

.field public static final enum INLINE:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

.field public static final enum INTERSTITIAL:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    const-string v1, "INLINE"

    invoke-direct {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INLINE:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INTERSTITIAL:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INLINE:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INTERSTITIAL:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/MraidView$PlacementType;
    .locals 1

    const-class v0, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/mraid/MraidView$PlacementType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
