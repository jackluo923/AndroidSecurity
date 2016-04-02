.class public Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponDetailModel;
.super Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionText:Ljava/lang/String;

.field public actionUrl:Ljava/lang/String;

.field public isWithdrawAble:Z

.field public memo:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public urlType:Ljava/lang/String;

.field public usingUrl:Ljava/lang/String;

.field public withdrawAccountTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponDetailModel;->usingUrl:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponDetailModel;->urlType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponDetailModel;->memo:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponDetailModel;->status:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponDetailModel;->isWithdrawAble:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponDetailModel;->withdrawAccountTarget:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponDetailModel;->actionText:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponDetailModel;->actionUrl:Ljava/lang/String;

    return-void
.end method
