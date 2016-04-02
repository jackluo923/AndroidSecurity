.class public Lcom/alipay/mobilecsa/common/service/rpc/response/CommentInitResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "CommentInitResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public itemId:Ljava/lang/String;

.field public lastTagMd5:Ljava/lang/String;

.field public pageSize:I

.field public shopId:Ljava/lang/String;

.field public shopName:Ljava/lang/String;

.field public tagDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/TagDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
