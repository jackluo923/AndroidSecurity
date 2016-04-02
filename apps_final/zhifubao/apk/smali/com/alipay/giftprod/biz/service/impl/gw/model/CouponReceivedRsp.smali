.class public Lcom/alipay/giftprod/biz/service/impl/gw/model/CouponReceivedRsp;
.super Lcom/alipay/giftprod/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentIndex:J

.field public noMore:Z

.field public receiveCount:J

.field public receivedCouponList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/giftprod/biz/service/impl/gw/model/ReceivedCoupon;",
            ">;"
        }
    .end annotation
.end field

.field public totalAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/giftprod/common/service/facade/result/CommonResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/giftprod/biz/service/impl/gw/model/CouponReceivedRsp;->noMore:Z

    return-void
.end method
