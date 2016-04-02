.class public Lcom/alipay/mobilepromo/common/service/facade/ad/result/AdSpaceQueryResult;
.super Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public spaceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilepromo/common/service/facade/coupon/result/CommonResult;-><init>()V

    return-void
.end method
