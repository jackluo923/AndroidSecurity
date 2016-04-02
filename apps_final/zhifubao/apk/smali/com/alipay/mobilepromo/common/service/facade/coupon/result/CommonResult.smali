.class public Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CommonResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultCode:Ljava/lang/String;

.field public resultDesc:Ljava/lang/String;

.field public success:Z

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CommonResult;->success:Z

    return-void
.end method
