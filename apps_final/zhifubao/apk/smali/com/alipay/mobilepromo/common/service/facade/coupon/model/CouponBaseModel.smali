.class public Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activeDate:Ljava/lang/String;

.field public cardPrice:D

.field public couponBalance:D

.field public couponName:Ljava/lang/String;

.field public expiredDate:Ljava/lang/String;

.field public extInfo:Ljava/util/Map;
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

.field public gmtCreate:Ljava/util/Date;

.field public iconUrl:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;->iconUrl:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;->couponName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;->activeDate:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;->expiredDate:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;->type:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponBaseModel;->extInfo:Ljava/util/Map;

    return-void
.end method
