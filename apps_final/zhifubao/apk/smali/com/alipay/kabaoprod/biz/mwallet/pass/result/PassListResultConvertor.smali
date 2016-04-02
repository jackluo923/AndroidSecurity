.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResultConvertor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static converCouponListFromPreLoadPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->couponList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->couponList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->couponList:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passTimelineList:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    iget-boolean v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->success:Z

    iput-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    goto :goto_0
.end method

.method public static converTravelListFromPreLoadPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->travelList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->travelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->travelList:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passTimelineList:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->passListPreLoaderInterval:Ljava/lang/Long;

    iget-boolean v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;->success:Z

    iput-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    goto :goto_0
.end method
