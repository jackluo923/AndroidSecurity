.class public Lcom/alipay/mobileprod/biz/transfer/dto/QueryBankInfoReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankShortName:Ljava/lang/String;

.field public needReceiveTimeOpt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    const-string/jumbo v0, "N"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryBankInfoReq;->needReceiveTimeOpt:Ljava/lang/String;

    return-void
.end method
