.class public Lcom/alipay/mobilerelation/biz/shared/resp/MobileContactListResult;
.super Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/core/model/mobile/AlipayMobileContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;-><init>()V

    return-void
.end method
