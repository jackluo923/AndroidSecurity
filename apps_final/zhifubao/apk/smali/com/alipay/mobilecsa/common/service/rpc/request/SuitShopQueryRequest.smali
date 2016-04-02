.class public Lcom/alipay/mobilecsa/common/service/rpc/request/SuitShopQueryRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "SuitShopQueryRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public itemId:Ljava/lang/String;

.field public lastId:Ljava/lang/String;

.field public pageSize:I

.field public shopId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;-><init>()V

    return-void
.end method
