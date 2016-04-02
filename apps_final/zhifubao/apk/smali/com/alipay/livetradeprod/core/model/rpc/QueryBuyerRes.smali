.class public Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerRes;
.super Lcom/alipay/livetradeprod/core/model/base/SoundWaveBaseRes;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public action:Ljava/lang/String;

.field public amount:Ljava/lang/String;

.field public assignedChannel:Ljava/lang/String;

.field public attachAction:Ljava/lang/String;

.field public evaluatable:Z

.field public goodsList:Ljava/lang/String;

.field public headImageUrl:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public originAmount:Ljava/lang/String;

.field public outBizId:Ljava/lang/String;

.field public payChannelList:Ljava/lang/String;

.field public payDesc:Ljava/lang/String;

.field public payMoney:Ljava/lang/String;

.field public payType:Ljava/lang/String;

.field public payeeAccount:Ljava/lang/String;

.field public payeeName:Ljava/lang/String;

.field public promoUrl:Ljava/lang/String;

.field public realAmount:Ljava/lang/String;

.field public shareContent:Ljava/lang/String;

.field public shareImage:Ljava/lang/String;

.field public shareInfoModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/base/ShareInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field public shareSwitch:Z

.field public shareTitle:Ljava/lang/String;

.field public showAA:Z

.field public storeName:Ljava/lang/String;

.field public subActionType:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public totalDiscAmount:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/livetradeprod/core/model/base/SoundWaveBaseRes;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerRes;->shareInfoModels:Ljava/util/List;

    return-void
.end method
