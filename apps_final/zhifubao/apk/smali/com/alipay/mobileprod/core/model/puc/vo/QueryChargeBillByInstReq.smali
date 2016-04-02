.class public Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillByInstReq;
.super Lcom/alipay/mobileprod/core/model/puc/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billAmount:Ljava/lang/String;

.field public billDate:Ljava/lang/String;

.field public billKey:Ljava/lang/String;

.field public billQueryMode:Ljava/lang/String;

.field public extend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillReqExtendInfo;",
            ">;"
        }
    .end annotation
.end field

.field public instId:Ljava/lang/String;

.field public ownerName:Ljava/lang/String;

.field public subBizType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/puc/BaseReqVO;-><init>()V

    return-void
.end method
