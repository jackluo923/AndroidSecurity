.class public Lcom/alipay/mobilecsa/common/service/rpc/request/DiscountApplyRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "DiscountApplyRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buryPointJsonString:Ljava/lang/String;

.field public itemId:Ljava/lang/String;

.field public shopId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;-><init>()V

    return-void
.end method
