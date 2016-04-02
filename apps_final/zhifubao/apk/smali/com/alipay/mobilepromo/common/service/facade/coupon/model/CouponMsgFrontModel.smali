.class public Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public balance:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public campId:Ljava/lang/String;

.field public campUrl:Ljava/lang/String;

.field public comeFrom:Ljava/lang/String;

.field public couponId:Ljava/lang/String;

.field public couponName:Ljava/lang/String;

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

.field public gmtBegin:Ljava/util/Date;

.field public gmtCreate:Ljava/util/Date;

.field public gmtEnd:Ljava/util/Date;

.field public gmtModified:Ljava/util/Date;

.field public iconUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public newFlag:Z

.field public status:Ljava/lang/String;

.field public sysDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->id:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->newFlag:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->bizType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->iconUrl:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->couponName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->balance:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->couponId:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->sysDate:Ljava/util/Date;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->status:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->campUrl:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->comeFrom:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->campId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/CouponMsgFrontModel;->extInfo:Ljava/util/Map;

    return-void
.end method
