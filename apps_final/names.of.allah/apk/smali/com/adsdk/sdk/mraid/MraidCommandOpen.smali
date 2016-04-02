.class Lcom/adsdk/sdk/mraid/MraidCommandOpen;
.super Lcom/adsdk/sdk/mraid/MraidCommand;


# direct methods
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
    .locals 3

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidCommandOpen;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandOpen;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->OPEN:Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Url can not be null."

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidCommandOpen;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getBrowserController()Lcom/adsdk/sdk/mraid/MraidBrowserController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->open(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isCommandDependentOnUserClick(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
