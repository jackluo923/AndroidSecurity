.class public Lcom/alipay/mobileprod/biz/autopeerpay/dto/IntimateContractSignReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public acceptorUserId:Ljava/lang/String;

.field public acceptorUserName:Ljava/lang/String;

.field public ackCode:Ljava/lang/String;

.field public ackType:Ljava/lang/String;

.field public pwd:Ljava/lang/String;

.field public pwdType:Ljava/lang/String;

.field public requestSource:Ljava/lang/String;

.field public signBehaviour:Ljava/lang/String;

.field public signVersion:Ljava/lang/String;

.field public signingAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method
