.class public Lcom/alipay/mobileprod/biz/transfer/dto/QueryReceiverInfoReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;


# instance fields
.field public receiverUserId:Ljava/lang/String;

.field public userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryReceiverInfoReq;->userAccount:Ljava/lang/String;

    return-object v0
.end method

.method public setUserAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryReceiverInfoReq;->userAccount:Ljava/lang/String;

    return-void
.end method
