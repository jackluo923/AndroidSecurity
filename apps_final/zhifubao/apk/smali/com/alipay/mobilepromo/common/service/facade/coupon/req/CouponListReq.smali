.class public Lcom/alipay/mobilepromo/common/service/facade/coupon/req/CouponListReq;
.super Lcom/alipay/mobilepromo/common/service/facade/coupon/req/CommonPageReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public needPaging:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilepromo/common/service/facade/coupon/req/CommonPageReq;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/req/CouponListReq;->needPaging:Z

    return-void
.end method
