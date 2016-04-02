.class public Lcom/adsdk/sdk/nativeads/NativeAd;
.super Ljava/lang/Object;


# instance fields
.field private clickUrl:Ljava/lang/String;

.field private imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private textAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->imageAssets:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->textAssets:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->trackers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addImageAsset(Ljava/lang/String;Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTextAsset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->textAssets:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageAsset(Ljava/lang/String;)Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;

    return-object v0
.end method

.method public getTextAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->textAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->trackers:Ljava/util/List;

    return-object v0
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public setTrackers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAd;->trackers:Ljava/util/List;

    return-void
.end method
