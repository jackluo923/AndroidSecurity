.class public Lcom/alipay/mobileprod/biz/transfer/dto/CreateMobileToCardResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public bizSubType:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public transferNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateMobileToCardResp;->bizSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateMobileToCardResp;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateMobileToCardResp;->transferNo:Ljava/lang/String;

    return-object v0
.end method

.method public setBizSubType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateMobileToCardResp;->bizSubType:Ljava/lang/String;

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateMobileToCardResp;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setTransferNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateMobileToCardResp;->transferNo:Ljava/lang/String;

    return-void
.end method
