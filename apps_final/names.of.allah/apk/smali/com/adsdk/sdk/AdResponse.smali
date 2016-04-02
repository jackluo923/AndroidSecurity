.class public Lcom/adsdk/sdk/AdResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/Ad;


# static fields
.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final WEB:Ljava/lang/String; = "web"

.field private static final serialVersionUID:J = 0x2d684300784e9155L


# instance fields
.field private bannerHeight:I

.field private bannerWidth:I

.field private clickType:Lcom/adsdk/sdk/data/ClickType;

.field private clickUrl:Ljava/lang/String;

.field private customEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/customevents/CustomEvent;",
            ">;"
        }
    .end annotation
.end field

.field private horizontalOrientationRequested:Z

.field private imageUrl:Ljava/lang/String;

.field private refresh:I

.field private scale:Z

.field private skipOverlay:I

.field private skipPreflight:Z

.field private text:Ljava/lang/String;

.field private timestamp:J

.field private type:I

.field private urlType:Ljava/lang/String;

.field private videoData:Lcom/adsdk/sdk/video/VideoData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/AdResponse;->skipOverlay:I

    return-void
.end method


# virtual methods
.method public getBannerHeight()I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/AdResponse;->bannerHeight:I

    return v0
.end method

.method public getBannerWidth()I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/AdResponse;->bannerWidth:I

    return v0
.end method

.method public getClickType()Lcom/adsdk/sdk/data/ClickType;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdResponse;->clickType:Lcom/adsdk/sdk/data/ClickType;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdResponse;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/customevents/CustomEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adsdk/sdk/AdResponse;->customEvents:Ljava/util/List;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdResponse;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh()I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/AdResponse;->refresh:I

    return v0
.end method

.method public getSkipOverlay()I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/AdResponse;->skipOverlay:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdResponse;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/adsdk/sdk/AdResponse;->timestamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/AdResponse;->type:I

    return v0
.end method

.method public getUrlType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdResponse;->urlType:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoData()Lcom/adsdk/sdk/video/VideoData;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/AdResponse;->videoData:Lcom/adsdk/sdk/video/VideoData;

    return-object v0
.end method

.method public isHorizontalOrientationRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/AdResponse;->horizontalOrientationRequested:Z

    return v0
.end method

.method public isScale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/AdResponse;->scale:Z

    return v0
.end method

.method public isSkipPreflight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/AdResponse;->skipPreflight:Z

    return v0
.end method

.method public setBannerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/AdResponse;->bannerHeight:I

    return-void
.end method

.method public setBannerWidth(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/AdResponse;->bannerWidth:I

    return-void
.end method

.method public setClickType(Lcom/adsdk/sdk/data/ClickType;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdResponse;->clickType:Lcom/adsdk/sdk/data/ClickType;

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdResponse;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public setCustomEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/customevents/CustomEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/adsdk/sdk/AdResponse;->customEvents:Ljava/util/List;

    return-void
.end method

.method public setHorizontalOrientationRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/AdResponse;->horizontalOrientationRequested:Z

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdResponse;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setRefresh(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/AdResponse;->refresh:I

    return-void
.end method

.method public setScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/AdResponse;->scale:Z

    return-void
.end method

.method public setSkipOverlay(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/AdResponse;->skipOverlay:I

    return-void
.end method

.method public setSkipPreflight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/AdResponse;->skipPreflight:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdResponse;->text:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/adsdk/sdk/AdResponse;->timestamp:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/AdResponse;->type:I

    return-void
.end method

.method public setUrlType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdResponse;->urlType:Ljava/lang/String;

    return-void
.end method

.method public setVideoData(Lcom/adsdk/sdk/video/VideoData;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdResponse;->videoData:Lcom/adsdk/sdk/video/VideoData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response [refresh="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/AdResponse;->refresh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/AdResponse;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/AdResponse;->bannerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/AdResponse;->bannerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdResponse;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdResponse;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdResponse;->clickType:Lcom/adsdk/sdk/data/ClickType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdResponse;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/AdResponse;->urlType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adsdk/sdk/AdResponse;->scale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skipPreflight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adsdk/sdk/AdResponse;->skipPreflight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
