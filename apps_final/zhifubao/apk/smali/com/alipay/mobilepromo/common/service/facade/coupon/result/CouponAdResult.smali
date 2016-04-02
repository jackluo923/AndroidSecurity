.class public Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponAdResult;
.super Lcom/alipay/mobilepromo/common/service/facade/common/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public advertisements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilepromo/common/service/facade/coupon/model/Advertisement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilepromo/common/service/facade/common/result/CommonResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CouponAdResult;->advertisements:Ljava/util/List;

    return-void
.end method
