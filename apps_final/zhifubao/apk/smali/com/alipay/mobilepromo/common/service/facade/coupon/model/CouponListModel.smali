.class public Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponListModel;
.super Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public couponId:Ljava/lang/String;

.field public newFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponListModel;->newFlag:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponListModel;->couponId:Ljava/lang/String;

    return-void
.end method
