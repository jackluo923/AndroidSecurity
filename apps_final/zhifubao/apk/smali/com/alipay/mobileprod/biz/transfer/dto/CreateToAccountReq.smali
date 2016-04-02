.class public Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appId:Ljava/lang/String;

.field public certifyMobileNo:Ljava/lang/String;

.field public emotionId:Ljava/lang/String;

.field public emotionSource:Ljava/lang/String;

.field public extPropMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public forceCheck:Z

.field public hasRealNameChecked:Z

.field public hasRiskChecked:Z

.field public hasServiceFeeChecked:Z

.field public ingoreReceiveCertificate:Ljava/lang/String;

.field public inputRealName:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public mobileBindingType:Ljava/lang/String;

.field public mobileMatch:Z

.field public orderSource:Ljava/lang/String;

.field public payerNickName:Ljava/lang/String;

.field public promotion:Ljava/lang/String;

.field public receiverAccount:Ljava/lang/String;

.field public receiverMobile:Ljava/lang/String;

.field public receiverShowUserName:Ljava/lang/String;

.field public receiverUserId:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public sourceId:Ljava/lang/String;

.field public transferAmount:Ljava/lang/String;

.field public transferMode:Ljava/lang/String;

.field public useRiskCheck:Z

.field public useServiceFeeCheck:Z

.field public withVoice:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountReq;->forceCheck:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountReq;->useRiskCheck:Z

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountReq;->hasRiskChecked:Z

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountReq;->hasRealNameChecked:Z

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountReq;->useServiceFeeCheck:Z

    iput-boolean v1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountReq;->hasServiceFeeChecked:Z

    return-void
.end method
