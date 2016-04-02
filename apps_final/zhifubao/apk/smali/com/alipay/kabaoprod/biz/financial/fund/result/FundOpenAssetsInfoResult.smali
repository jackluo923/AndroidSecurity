.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public account:Ljava/lang/String;

.field public certNo:Ljava/lang/String;

.field public fundInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getCertNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->certNo:Ljava/lang/String;

    return-object v0
.end method

.method public getFundInfo()Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->fundInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->account:Ljava/lang/String;

    return-void
.end method

.method public setCertNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->certNo:Ljava/lang/String;

    return-void
.end method

.method public setFundInfo(Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->fundInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundOpenAssetsInfoResult;->userName:Ljava/lang/String;

    return-void
.end method
