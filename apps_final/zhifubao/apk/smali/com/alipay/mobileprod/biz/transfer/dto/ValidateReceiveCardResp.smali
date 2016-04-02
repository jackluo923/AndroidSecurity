.class public Lcom/alipay/mobileprod/biz/transfer/dto/ValidateReceiveCardResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canContinue:Z

.field public showMessage:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/ValidateReceiveCardResp;->canContinue:Z

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/ValidateReceiveCardResp;->success:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/ValidateReceiveCardResp;->showMessage:Ljava/lang/String;

    return-void
.end method
