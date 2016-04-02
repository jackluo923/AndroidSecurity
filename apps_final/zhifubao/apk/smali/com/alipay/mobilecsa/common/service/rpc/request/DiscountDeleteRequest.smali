.class public Lcom/alipay/mobilecsa/common/service/rpc/request/DiscountDeleteRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "DiscountDeleteRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public itemTicketid:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;-><init>()V

    return-void
.end method
