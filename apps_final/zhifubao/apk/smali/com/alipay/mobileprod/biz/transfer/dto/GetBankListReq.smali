.class public Lcom/alipay/mobileprod/biz/transfer/dto/GetBankListReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;


# instance fields
.field public bankShortName:Ljava/lang/String;

.field public productName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/GetBankListReq;->bankShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/GetBankListReq;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public setBankShortName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/GetBankListReq;->bankShortName:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/GetBankListReq;->productName:Ljava/lang/String;

    return-void
.end method
