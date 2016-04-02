.class public Lcom/alipay/mobilecsa/common/service/rpc/request/MerchantHomeRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "MerchantHomeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buryPointJsonString:Ljava/lang/String;

.field public clientVersion:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public itemId:Ljava/lang/String;

.field public searchItemId:Ljava/lang/String;

.field public shopId:Ljava/lang/String;

.field public systemType:Ljava/lang/String;

.field public templateParams:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;-><init>()V

    return-void
.end method
