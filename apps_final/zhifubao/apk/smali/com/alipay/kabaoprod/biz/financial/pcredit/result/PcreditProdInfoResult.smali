.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public prodInfoImgUrl:Ljava/lang/String;

.field public prodInfoText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getProdInfoImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;->prodInfoImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProdInfoText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;->prodInfoText:Ljava/lang/String;

    return-object v0
.end method

.method public setProdInfoImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;->prodInfoImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setProdInfoText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/PcreditProdInfoResult;->prodInfoText:Ljava/lang/String;

    return-void
.end method
