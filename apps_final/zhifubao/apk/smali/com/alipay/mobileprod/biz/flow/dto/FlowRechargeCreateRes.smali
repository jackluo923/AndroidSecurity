.class public Lcom/alipay/mobileprod/biz/flow/dto/FlowRechargeCreateRes;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizType:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    const-string/jumbo v0, "trade"

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/flow/dto/FlowRechargeCreateRes;->bizType:Ljava/lang/String;

    return-void
.end method
