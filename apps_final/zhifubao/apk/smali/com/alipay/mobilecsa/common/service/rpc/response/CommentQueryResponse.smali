.class public Lcom/alipay/mobilecsa/common/service/rpc/response/CommentQueryResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "CommentQueryResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public briefTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/TagDetail;",
            ">;"
        }
    .end annotation
.end field

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

.field public evarScore:D

.field public friendCommentSum:Ljava/lang/String;

.field public lastCommentId:Ljava/lang/String;

.field public pageSize:I

.field public totalCommentSum:Ljava/lang/String;

.field public totalTags:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
