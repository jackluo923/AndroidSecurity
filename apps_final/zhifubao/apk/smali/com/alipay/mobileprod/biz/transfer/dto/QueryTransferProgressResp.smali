.class public Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public gmtCreate:Ljava/lang/String;

.field public gmtPay:Ljava/lang/String;

.field public gmtSuccess:Ljava/lang/String;

.field public gmtSuccessDes:Ljava/lang/String;

.field public receiveCardLastNo:Ljava/lang/String;

.field public receiveInstName:Ljava/lang/String;

.field public transferAmount:Ljava/lang/String;

.field public transferStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getGmtCreate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;->gmtCreate:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtPay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;->gmtPay:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtSuccess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;->gmtSuccess:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;->transferAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;->transferStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setGmtCreate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;->gmtCreate:Ljava/lang/String;

    return-void
.end method

.method public setGmtPay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;->gmtPay:Ljava/lang/String;

    return-void
.end method

.method public setGmtSuccess(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;->gmtSuccess:Ljava/lang/String;

    return-void
.end method

.method public setTransferAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;->transferAmount:Ljava/lang/String;

    return-void
.end method

.method public setTransferStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;->transferStatus:Ljava/lang/String;

    return-void
.end method
