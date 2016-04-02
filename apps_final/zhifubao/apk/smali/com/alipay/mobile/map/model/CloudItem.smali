.class public Lcom/alipay/mobile/map/model/CloudItem;
.super Ljava/lang/Object;


# instance fields
.field private createTime:Ljava/lang/String;

.field private customeField:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private describeContents:I

.field private distance:I

.field private latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

.field private poiID:Ljava/lang/String;

.field private snippet:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/alipay/mobile/map/model/CloudItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/map/model/CloudItem;

    iget-object v0, p0, Lcom/alipay/mobile/map/model/CloudItem;->poiID:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/map/model/CloudItem;->poiID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/CloudItem;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomeField()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/map/model/CloudItem;->customeField:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDescribeContents()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/map/model/CloudItem;->describeContents:I

    return v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/map/model/CloudItem;->distance:I

    return v0
.end method

.method public getLatLonPoint()Lcom/alipay/mobile/map/model/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/CloudItem;->latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-object v0
.end method

.method public getPoiID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/CloudItem;->poiID:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/CloudItem;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/CloudItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/CloudItem;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/CloudItem;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setCustomeField(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/map/model/CloudItem;->customeField:Ljava/util/HashMap;

    return-void
.end method

.method public setDescribeContents(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/map/model/CloudItem;->describeContents:I

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/map/model/CloudItem;->distance:I

    return-void
.end method

.method public setLatLonPoint(Lcom/alipay/mobile/map/model/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/CloudItem;->latLonPoint:Lcom/alipay/mobile/map/model/LatLonPoint;

    return-void
.end method

.method public setPoiID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/CloudItem;->poiID:Ljava/lang/String;

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/CloudItem;->snippet:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/CloudItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/CloudItem;->updateTime:Ljava/lang/String;

    return-void
.end method
