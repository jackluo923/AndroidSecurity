.class public Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoReq;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public cardIndex:Ljava/lang/String;

.field public holderName:Ljava/lang/String;

.field public reqSource:Ljava/lang/String;

.field public transferNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoReq;->cardIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getHolderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoReq;->holderName:Ljava/lang/String;

    return-object v0
.end method

.method public getReqSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoReq;->reqSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoReq;->transferNo:Ljava/lang/String;

    return-object v0
.end method

.method public setCardIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoReq;->cardIndex:Ljava/lang/String;

    return-void
.end method

.method public setHolderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoReq;->holderName:Ljava/lang/String;

    return-void
.end method

.method public setReqSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoReq;->reqSource:Ljava/lang/String;

    return-void
.end method

.method public setTransferNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoReq;->transferNo:Ljava/lang/String;

    return-void
.end method
