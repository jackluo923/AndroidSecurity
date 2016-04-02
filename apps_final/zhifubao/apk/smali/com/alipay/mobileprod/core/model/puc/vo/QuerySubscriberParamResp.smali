.class public Lcom/alipay/mobileprod/core/model/puc/vo/QuerySubscriberParamResp;
.super Lcom/alipay/mobileprod/core/model/puc/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ackCodeTip:Ljava/lang/String;

.field public agreementUrl:Ljava/lang/String;

.field public canSubscriber:Z

.field public cannotCancelPaperBill:Z

.field public groupId:Ljava/lang/String;

.field public inputFieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/core/model/puc/domain/ModelField;",
            ">;"
        }
    .end annotation
.end field

.field public instName:Ljava/lang/String;

.field public isActualTimeSubscribe:Z

.field public needAckCode:Z

.field public needCancelPaperBill:Z

.field public ownerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/puc/BaseRespVO;-><init>()V

    return-void
.end method
