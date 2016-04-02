.class public Lcom/alipay/mobilecsa/common/service/rpc/response/SuitShopQueryResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "SuitShopQueryResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasNext:Z

.field public shopDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/ShopDetail;",
            ">;"
        }
    .end annotation
.end field

.field public totolShops:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
