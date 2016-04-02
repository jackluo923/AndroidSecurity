.class Lcom/adsdk/sdk/mraid/MraidCommandPlayVideo;
.super Lcom/adsdk/sdk/mraid/MraidCommand;


# static fields
.field private static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$MraidView$PlacementType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$adsdk$sdk$mraid$MraidView$PlacementType()[I
    .locals 3

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidCommandPlayVideo;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MraidView$PlacementType:[I

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
    sput-object v0, Lcom/adsdk/sdk/mraid/MraidCommandPlayVideo;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MraidView$PlacementType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V
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
    .locals 3

    const-string v0, "uri"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandPlayVideo;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidCommandPlayVideo;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->showVideo(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandPlayVideo;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->PLAY_VIDEO:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Video can\'t be played with null or empty URL"

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isCommandDependentOnUserClick(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Z
    .locals 2

    invoke-static {}, Lcom/adsdk/sdk/mraid/MraidCommandPlayVideo;->$SWITCH_TABLE$com$adsdk$sdk$mraid$MraidView$PlacementType()[I

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
