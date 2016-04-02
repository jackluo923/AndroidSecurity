.class public Lcom/alipay/mobilecsa/common/service/rpc/request/ShopTagsQueryRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "ShopTagsQueryRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lastTagMd5:Ljava/lang/String;

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
