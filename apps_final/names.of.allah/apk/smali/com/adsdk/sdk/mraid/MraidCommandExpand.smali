.class Lcom/adsdk/sdk/mraid/MraidCommandExpand;
.super Lcom/adsdk/sdk/mraid/MraidCommand;


# static fields
.field private static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$MraidView$PlacementType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$MraidView$PlacementType()[I
    .locals 3

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MraidView$PlacementType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->values()[Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INLINE:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INTERSTITIAL:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MraidView$PlacementType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adsdk/sdk/mraid/MraidView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommand;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 6

    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->getIntFromParamsForKey(Ljava/lang/String;)I

    move-result v2

    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->getIntFromParamsForKey(Ljava/lang/String;)I

    move-result v3

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v4

    const-string v0, "lockOrientation"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v5

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    iget v2, v0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenWidth:I

    :cond_0
    if-gtz v3, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    iget v3, v0, Lcom/adsdk/sdk/mraid/MraidDisplayController;->mScreenHeight:I

    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->expand(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method protected isCommandDependentOnUserClick(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Z
    .locals 2

    invoke-static {}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MraidView$PlacementType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/adsdk/sdk/mraid/MraidCommand;->isCommandDependentOnUserClick(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
