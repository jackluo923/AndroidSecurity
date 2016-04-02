.class public Lcom/alipay/mobilepromo/common/service/facade/ad/result/AdSpaceBehaviorResult;
.super Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public close:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CommonResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilepromo/common/service/facade/ad/result/AdSpaceBehaviorResult;->close:Z

    return-void
.end method
