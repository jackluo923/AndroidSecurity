.class public Lcom/alipay/mobileapp/biz/rpc/RpcCommonRes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public memo:Ljava/lang/String;

.field public resultStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobileapp/biz/rpc/RpcCommonRes;->resultStatus:I

    return-void
.end method
