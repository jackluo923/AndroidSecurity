.class public Lcom/alipay/mobilecsa/common/service/rpc/request/WhereFriendEatRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "WhereFriendEatRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lastIndex:Ljava/lang/String;

.field public pageSize:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;-><init>()V

    return-void
.end method
