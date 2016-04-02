.class public Lcom/alipay/mobileprod/biz/businesshall/dto/BusinessHallSwitchRes;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hallUrl:Ljava/lang/String;

.field public priority:Z

.field public showFlowRecharge:Z

.field public showHall:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/businesshall/dto/BusinessHallSwitchRes;->priority:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/businesshall/dto/BusinessHallSwitchRes;->showHall:Z

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/businesshall/dto/BusinessHallSwitchRes;->showFlowRecharge:Z

    return-void
.end method
