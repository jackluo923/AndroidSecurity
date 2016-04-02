.class public Lcom/alipay/mobilepromo/common/service/facade/coupon/model/Advertisement;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public adId:J

.field public adType:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public hrefUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/Advertisement;->adType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/Advertisement;->content:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/coupon/model/Advertisement;->hrefUrl:Ljava/lang/String;

    return-void
.end method
