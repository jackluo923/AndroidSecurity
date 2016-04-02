.class public Lcom/alipay/mobileprod/biz/transfer/dto/QueryBankInfoResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankName:Ljava/lang/String;

.field public bankNotice:Ljava/lang/String;

.field public bankShortName:Ljava/lang/String;

.field public defaultReceiveTimeOpt:Lcom/alipay/mobileprod/biz/transfer/model/ReceiveTimeOpt;

.field public receiveTimeDes:Ljava/lang/String;

.field public receiveTimeOpts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/transfer/model/ReceiveTimeOpt;",
            ">;"
        }
    .end annotation
.end field

.field public serivceFlag:Ljava/lang/String;

.field public speedForceNotice:Ljava/lang/String;

.field public transferSpeed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryBankInfoResp;->receiveTimeOpts:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryBankInfoResp;->defaultReceiveTimeOpt:Lcom/alipay/mobileprod/biz/transfer/model/ReceiveTimeOpt;

    return-void
.end method
