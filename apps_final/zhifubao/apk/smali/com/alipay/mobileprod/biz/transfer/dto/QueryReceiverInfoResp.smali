.class public Lcom/alipay/mobileprod/biz/transfer/dto/QueryReceiverInfoResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public headUrl:Ljava/lang/String;

.field public limitAmount:Ljava/lang/String;

.field public receiveFlag:Ljava/lang/String;

.field public receiveMemo:Ljava/lang/String;

.field public userAccount:Ljava/lang/String;

.field public userID:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public userRealName:Ljava/lang/String;

.field public warningMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryReceiverInfoResp;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryReceiverInfoResp;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setUserAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryReceiverInfoResp;->userAccount:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryReceiverInfoResp;->userName:Ljava/lang/String;

    return-void
.end method
