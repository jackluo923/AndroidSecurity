.class public Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponDetailResult;
.super Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CommonPageResult;

# interfaces
.implements Ljava/io/Serializable;


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

.field public couponDetailModel:Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponDetailModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CommonPageResult;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponDetailResult;->contextMap:Ljava/util/Map;

    return-void
.end method
