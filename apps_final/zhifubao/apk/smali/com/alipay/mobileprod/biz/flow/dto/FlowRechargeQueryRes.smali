.class public Lcom/alipay/mobileprod/biz/flow/dto/FlowRechargeQueryRes;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public areaName:Ljava/lang/String;

.field public catName:Ljava/lang/String;

.field public globalFlowRechargeVos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/flow/vo/FlowRechargeVo;",
            ">;"
        }
    .end annotation
.end field

.field public localFlowRechargeVos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/flow/vo/FlowRechargeVo;",
            ">;"
        }
    .end annotation
.end field

.field public mobile:Ljava/lang/String;

.field public showCatname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/flow/dto/FlowRechargeQueryRes;->localFlowRechargeVos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/flow/dto/FlowRechargeQueryRes;->globalFlowRechargeVos:Ljava/util/List;

    return-void
.end method
