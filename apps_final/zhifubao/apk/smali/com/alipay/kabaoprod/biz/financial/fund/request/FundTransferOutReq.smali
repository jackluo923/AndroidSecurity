.class public Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public fundCode:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public transferOutAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getFundCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->fundCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferOutAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->transferOutAmount:Ljava/lang/String;

    return-object v0
.end method

.method public setFundCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->fundCode:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->password:Ljava/lang/String;

    return-void
.end method

.method public setTransferOutAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/request/FundTransferOutReq;->transferOutAmount:Ljava/lang/String;

    return-void
.end method
