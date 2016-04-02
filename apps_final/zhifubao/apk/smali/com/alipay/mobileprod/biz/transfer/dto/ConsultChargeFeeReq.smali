.class public Lcom/alipay/mobileprod/biz/transfer/dto/ConsultChargeFeeReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankShortName:Ljava/lang/String;

.field public choosedTransferSpeed:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public transferAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method
