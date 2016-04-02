.class public Lcom/alipay/mobilecsa/common/service/rpc/response/CommentFriendQueryResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "CommentFriendQueryResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public commentDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/CommentDetail;",
            ">;"
        }
    .end annotation
.end field

.field public lastCommentId:Ljava/lang/String;

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
