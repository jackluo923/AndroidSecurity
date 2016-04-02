.class public Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeInstListResp;
.super Lcom/alipay/mobileprod/core/model/puc/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementUrl:Ljava/lang/String;

.field public chargeInstList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/core/model/puc/domain/ChargeInst;",
            ">;"
        }
    .end annotation
.end field

.field public subBizTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/puc/BaseRespVO;-><init>()V

    return-void
.end method
