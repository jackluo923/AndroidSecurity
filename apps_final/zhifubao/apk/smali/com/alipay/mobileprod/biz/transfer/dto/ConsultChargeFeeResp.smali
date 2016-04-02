.class public Lcom/alipay/mobileprod/biz/transfer/dto/ConsultChargeFeeResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public chargeFee:Ljava/lang/String;

.field public transferSpeed:Ljava/lang/String;

.field public transferSpeedDes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getChargeFee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/ConsultChargeFeeResp;->chargeFee:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferSpeed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/ConsultChargeFeeResp;->transferSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferSpeedDes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/ConsultChargeFeeResp;->transferSpeedDes:Ljava/lang/String;

    return-object v0
.end method

.method public setChargeFee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/ConsultChargeFeeResp;->chargeFee:Ljava/lang/String;

    return-void
.end method

.method public setTransferSpeed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/ConsultChargeFeeResp;->transferSpeed:Ljava/lang/String;

    return-void
.end method

.method public setTransferSpeedDes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/ConsultChargeFeeResp;->transferSpeedDes:Ljava/lang/String;

    return-void
.end method
