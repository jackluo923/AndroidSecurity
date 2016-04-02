.class public Lcom/alipay/mobilecsa/common/service/rpc/request/CommentPublishRequest;
.super Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;
.source "CommentPublishRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public anonymous:Z

.field public content:Ljava/lang/String;

.field public imgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public itemId:Ljava/lang/String;

.field public personNum:I

.field public score:I

.field public shopId:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/request/BaseRpcRequest;-><init>()V

    return-void
.end method
