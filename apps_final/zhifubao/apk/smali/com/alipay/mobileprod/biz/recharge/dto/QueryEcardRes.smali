.class public Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public areaName:Ljava/lang/String;

.field public catName:Ljava/lang/String;

.field public cmsMsg:Ljava/lang/String;

.field public ecardVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;",
            ">;"
        }
    .end annotation
.end field

.field public mobile:Ljava/lang/String;

.field public showCatname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->areaName:Ljava/lang/String;

    return-object v0
.end method

.method public getCatName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->catName:Ljava/lang/String;

    return-object v0
.end method

.method public getCmsMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->cmsMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getEcardVOList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->ecardVOList:Ljava/util/List;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getShowCatname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->showCatname:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->areaName:Ljava/lang/String;

    return-void
.end method

.method public setCatName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->catName:Ljava/lang/String;

    return-void
.end method

.method public setCmsMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->cmsMsg:Ljava/lang/String;

    return-void
.end method

.method public setEcardVOList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->ecardVOList:Ljava/util/List;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setShowCatname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;->showCatname:Ljava/lang/String;

    return-void
.end method
