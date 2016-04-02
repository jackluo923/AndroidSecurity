.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundGuideInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public imgUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/ImgInfo;",
            ">;"
        }
    .end annotation
.end field

.field public opText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/ImgInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundGuideInfoResult;->imgUrls:Ljava/util/List;

    return-object v0
.end method

.method public getOpText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundGuideInfoResult;->opText:Ljava/lang/String;

    return-object v0
.end method

.method public setImgUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/ImgInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundGuideInfoResult;->imgUrls:Ljava/util/List;

    return-void
.end method

.method public setOpText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/result/FundGuideInfoResult;->opText:Ljava/lang/String;

    return-void
.end method
