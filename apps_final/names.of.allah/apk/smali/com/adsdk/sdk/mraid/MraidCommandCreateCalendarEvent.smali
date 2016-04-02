.class Lcom/adsdk/sdk/mraid/MraidCommandCreateCalendarEvent;
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
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandCreateCalendarEvent;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidCommandCreateCalendarEvent;->mParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->createCalendarEvent(Ljava/util/Map;)V

    return-void
.end method

.method protected isCommandDependentOnUserClick(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
