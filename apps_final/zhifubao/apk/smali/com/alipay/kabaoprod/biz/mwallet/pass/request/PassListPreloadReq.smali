.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public couponUpdateFlag:Ljava/lang/String;

.field public travelUpdateFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCouponUpdateFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;->couponUpdateFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getTravelUpdateFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;->travelUpdateFlag:Ljava/lang/String;

    return-object v0
.end method

.method public setCouponUpdateFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;->couponUpdateFlag:Ljava/lang/String;

    return-void
.end method

.method public setTravelUpdateFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;->travelUpdateFlag:Ljava/lang/String;

    return-void
.end method
