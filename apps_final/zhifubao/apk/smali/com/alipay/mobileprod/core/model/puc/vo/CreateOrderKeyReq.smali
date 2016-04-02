.class public Lcom/alipay/mobileprod/core/model/puc/vo/CreateOrderKeyReq;
.super Lcom/alipay/mobileprod/core/model/puc/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agentChannel:Ljava/lang/String;

.field public amount:Ljava/lang/String;

.field public billId:Ljava/lang/String;

.field public cacheKey:Ljava/lang/String;

.field public extend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/core/model/puc/vo/CreateOrderKeyReqExtendInfo;",
            ">;"
        }
    .end annotation
.end field

.field public outOrderNo:Ljava/lang/String;

.field public promotion:Ljava/lang/String;

.field public subBizType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/puc/BaseReqVO;-><init>()V

    return-void
.end method
