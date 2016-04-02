.class public Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public consumeBizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/BizItem;",
            ">;"
        }
    .end annotation
.end field

.field public mobilePhoneInfo:Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;

.field public providerBizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/BizItem;",
            ">;"
        }
    .end annotation
.end field

.field public refreshTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getConsumeBizItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/BizItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;->consumeBizItems:Ljava/util/List;

    return-object v0
.end method

.method public getMobilePhoneInfo()Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;->mobilePhoneInfo:Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;

    return-object v0
.end method

.method public getProviderBizItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/BizItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;->providerBizItems:Ljava/util/List;

    return-object v0
.end method

.method public getRefreshTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;->refreshTime:Ljava/lang/String;

    return-object v0
.end method

.method public setConsumeBizItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/BizItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;->consumeBizItems:Ljava/util/List;

    return-void
.end method

.method public setMobilePhoneInfo(Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;->mobilePhoneInfo:Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;

    return-void
.end method

.method public setProviderBizItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/BizItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;->providerBizItems:Ljava/util/List;

    return-void
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/phone/result/PhoneBillQueryResult;->refreshTime:Ljava/lang/String;

    return-void
.end method
