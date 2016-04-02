.class public Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
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

.field public markBank:Z

.field public markCredit:Z

.field public markFund:Z

.field public markMobile:Z

.field public markTravel:Z

.field public markVoucher:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markTravel:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markBank:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markCredit:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markMobile:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markVoucher:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markFund:Z

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->contextMap:Ljava/util/Map;

    return-object v0
.end method

.method public isMarkBank()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markBank:Z

    return v0
.end method

.method public isMarkCredit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markCredit:Z

    return v0
.end method

.method public isMarkFund()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markFund:Z

    return v0
.end method

.method public isMarkMobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markMobile:Z

    return v0
.end method

.method public isMarkTravel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markTravel:Z

    return v0
.end method

.method public isMarkVoucher()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markVoucher:Z

    return v0
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

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->contextMap:Ljava/util/Map;

    return-void
.end method

.method public setMarkBank(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markBank:Z

    return-void
.end method

.method public setMarkCredit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markCredit:Z

    return-void
.end method

.method public setMarkFund(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markFund:Z

    return-void
.end method

.method public setMarkMobile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markMobile:Z

    return-void
.end method

.method public setMarkTravel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markTravel:Z

    return-void
.end method

.method public setMarkVoucher(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/AssetSignResult;->markVoucher:Z

    return-void
.end method
