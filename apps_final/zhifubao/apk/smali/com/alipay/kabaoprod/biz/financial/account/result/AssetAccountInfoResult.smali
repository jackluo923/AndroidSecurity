.class public Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;
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

.field public freezePhone:Z

.field public freezeTravel:Z

.field public freezeVoucher:Z

.field public hiddenPhone:Z

.field public hiddenTravel:Z

.field public hiddenVoucher:Z

.field public isShowRefreshBtn:Z

.field public markPhone:Z

.field public markTravel:Z

.field public markVoucher:Z

.field public phoneTitle:Ljava/lang/String;

.field public totalAmount:D

.field public travelTitle:Ljava/lang/String;

.field public voucherTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markTravel:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeTravel:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenTravel:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markVoucher:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeVoucher:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenVoucher:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markPhone:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezePhone:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenPhone:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->isShowRefreshBtn:Z

    return-void
.end method


# virtual methods
.method public getAvailableBalance()D
    .locals 2

    iget-wide v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->availableBalance:D

    return-wide v0
.end method

.method public getBindingMobileNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->bindingMobileNo:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->contextMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPhoneTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->phoneTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalAmount()D
    .locals 2

    iget-wide v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->totalAmount:D

    return-wide v0
.end method

.method public getTravelTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->travelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->voucherTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isFreezePhone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezePhone:Z

    return v0
.end method

.method public isFreezeTravel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeTravel:Z

    return v0
.end method

.method public isFreezeVoucher()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeVoucher:Z

    return v0
.end method

.method public isHiddenPhone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenPhone:Z

    return v0
.end method

.method public isHiddenTravel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenTravel:Z

    return v0
.end method

.method public isHiddenVoucher()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenVoucher:Z

    return v0
.end method

.method public isMarkPhone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markPhone:Z

    return v0
.end method

.method public isMarkTravel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markTravel:Z

    return v0
.end method

.method public isMarkVoucher()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markVoucher:Z

    return v0
.end method

.method public isShowRefreshBtn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->isShowRefreshBtn:Z

    return v0
.end method

.method public setAvailableBalance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->availableBalance:D

    return-void
.end method

.method public setBindingMobileNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->bindingMobileNo:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->contextMap:Ljava/util/Map;

    return-void
.end method

.method public setFreezePhone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezePhone:Z

    return-void
.end method

.method public setFreezeTravel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeTravel:Z

    return-void
.end method

.method public setFreezeVoucher(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->freezeVoucher:Z

    return-void
.end method

.method public setHiddenPhone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenPhone:Z

    return-void
.end method

.method public setHiddenTravel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenTravel:Z

    return-void
.end method

.method public setHiddenVoucher(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->hiddenVoucher:Z

    return-void
.end method

.method public setMarkPhone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markPhone:Z

    return-void
.end method

.method public setMarkTravel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markTravel:Z

    return-void
.end method

.method public setMarkVoucher(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->markVoucher:Z

    return-void
.end method

.method public setPhoneTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->phoneTitle:Ljava/lang/String;

    return-void
.end method

.method public setShowRefreshBtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->isShowRefreshBtn:Z

    return-void
.end method

.method public setTotalAmount(D)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->totalAmount:D

    return-void
.end method

.method public setTravelTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->travelTitle:Ljava/lang/String;

    return-void
.end method

.method public setVoucherTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetAccountInfoResult;->voucherTitle:Ljava/lang/String;

    return-void
.end method
