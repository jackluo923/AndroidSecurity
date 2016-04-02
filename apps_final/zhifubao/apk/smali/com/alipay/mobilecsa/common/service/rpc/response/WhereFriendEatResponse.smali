.class public Lcom/alipay/mobilecsa/common/service/rpc/response/WhereFriendEatResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "WhereFriendEatResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public friendEatInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/FriendEatInfo;",
            ">;"
        }
    .end annotation
.end field

.field public fromFriend:Z

.field public hasMore:Z

.field public lastIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
