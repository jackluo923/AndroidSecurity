.class public Lcom/alipay/mobilecsa/common/service/rpc/request/MenuRefreshRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "MenuRefreshRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public refreshList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;-><init>()V

    return-void
.end method
