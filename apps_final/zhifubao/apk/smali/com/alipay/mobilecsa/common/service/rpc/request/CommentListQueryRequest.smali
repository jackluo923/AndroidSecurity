.class public Lcom/alipay/mobilecsa/common/service/rpc/request/CommentListQueryRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "CommentListQueryRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lastCommentId:Ljava/lang/String;

.field public pageSize:I

.field public shopId:Ljava/lang/String;

.field public tagPageSize:I

.field public tradeNo:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;-><init>()V

    return-void
.end method
