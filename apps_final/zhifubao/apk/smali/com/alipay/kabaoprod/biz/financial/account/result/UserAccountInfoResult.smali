.class public Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public availableBalance:D

.field public bindingMobileNo:Ljava/lang/String;

.field public contextMap:Ljava/util/Map;
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

.field public couponNums:I

.field public pointNums:I

.field public queryCoupon:Z

.field public showCreditScore:Z

.field public userAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->queryCoupon:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->showCreditScore:Z

    return-void
.end method


# virtual methods
.method public getAvailableBalance()D
    .locals 2

    iget-wide v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->availableBalance:D

    return-wide v0
.end method

.method public getBindingMobileNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->bindingMobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public getContextMap()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->contextMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCouponNums()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->couponNums:I

    return v0
.end method

.method public getPointNums()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->pointNums:I

    return v0
.end method

.method public getUserAssetInfo()Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->userAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;

    return-object v0
.end method

.method public isQueryCoupon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->queryCoupon:Z

    return v0
.end method

.method public isShowCreditScore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->showCreditScore:Z

    return v0
.end method

.method public setAvailableBalance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->availableBalance:D

    return-void
.end method

.method public setBindingMobileNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->bindingMobileNo:Ljava/lang/String;

    return-void
.end method

.method public setContextMap(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->contextMap:Ljava/util/Map;

    return-void
.end method

.method public setCouponNums(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->couponNums:I

    return-void
.end method

.method public setPointNums(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->pointNums:I

    return-void
.end method

.method public setQueryCoupon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->queryCoupon:Z

    return-void
.end method

.method public setShowCreditScore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->showCreditScore:Z

    return-void
.end method

.method public setUserAssetInfo(Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/UserAccountInfoResult;->userAssetInfo:Lcom/alipay/kabaoprod/biz/financial/account/model/UserAssetInfo;

    return-void
.end method
