.class public Lcom/alipay/mobilerelation/common/service/facade/result/CheckRelationShipResult;
.super Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isFriend:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilerelation/common/service/facade/result/CheckRelationShipResult;->isFriend:Z

    return-void
.end method
