.class public Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;


# instance fields
.field public bankShortName:Ljava/lang/String;

.field public cardChannel:Ljava/lang/String;

.field public cardIndex:Ljava/lang/String;

.field public cardNo:Ljava/lang/String;

.field public cardNoHidden:Z

.field public chargeFee:Ljava/lang/String;

.field public emotionId:Ljava/lang/String;

.field public emotionSource:Ljava/lang/String;

.field public extPropMap:Ljava/util/Map;
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

.field public memo:Ljava/lang/String;

.field public mobileNo:Ljava/lang/String;

.field public orderSource:Ljava/lang/String;

.field public payCardChannel:Ljava/lang/String;

.field public payCardIndex:Ljava/lang/String;

.field public promotion:Ljava/lang/String;

.field public receiverName:Ljava/lang/String;

.field public transferAmount:Ljava/lang/String;

.field public transferSpeed:Ljava/lang/String;

.field public withVoice:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->bankShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->cardChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->cardIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeFee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->chargeFee:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->emotionId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmotionSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->emotionSource:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->mobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->orderSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPayCardChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->payCardChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPayCardIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->payCardIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->promotion:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->receiverName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->transferAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferSpeed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->transferSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public isCardNoHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->cardNoHidden:Z

    return v0
.end method

.method public isWithVoice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->withVoice:Z

    return v0
.end method

.method public setBankShortName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->bankShortName:Ljava/lang/String;

    return-void
.end method

.method public setCardChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->cardChannel:Ljava/lang/String;

    return-void
.end method

.method public setCardIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->cardIndex:Ljava/lang/String;

    return-void
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->cardNo:Ljava/lang/String;

    return-void
.end method

.method public setCardNoHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->cardNoHidden:Z

    return-void
.end method

.method public setChargeFee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->chargeFee:Ljava/lang/String;

    return-void
.end method

.method public setEmotionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->emotionId:Ljava/lang/String;

    return-void
.end method

.method public setEmotionSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->emotionSource:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->memo:Ljava/lang/String;

    return-void
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->mobileNo:Ljava/lang/String;

    return-void
.end method

.method public setOrderSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->orderSource:Ljava/lang/String;

    return-void
.end method

.method public setPayCardChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->payCardChannel:Ljava/lang/String;

    return-void
.end method

.method public setPayCardIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->payCardIndex:Ljava/lang/String;

    return-void
.end method

.method public setPromotion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->promotion:Ljava/lang/String;

    return-void
.end method

.method public setReceiverName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->receiverName:Ljava/lang/String;

    return-void
.end method

.method public setTransferAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->transferAmount:Ljava/lang/String;

    return-void
.end method

.method public setTransferSpeed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->transferSpeed:Ljava/lang/String;

    return-void
.end method

.method public setWithVoice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;->withVoice:Z

    return-void
.end method
