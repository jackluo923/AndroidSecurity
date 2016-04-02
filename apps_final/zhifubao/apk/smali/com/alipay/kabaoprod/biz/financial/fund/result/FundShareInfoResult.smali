.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundShareInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public extraInfo:Ljava/util/Map;
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

.field public fundShareInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundShareInfoResult;->extraInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getFundShareInfo()Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundShareInfoResult;->fundShareInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;

    return-object v0
.end method

.method public setExtraInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundShareInfoResult;->extraInfo:Ljava/util/Map;

    return-void
.end method

.method public setFundShareInfo(Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundShareInfoResult;->fundShareInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundShareInfo;

    return-void
.end method
