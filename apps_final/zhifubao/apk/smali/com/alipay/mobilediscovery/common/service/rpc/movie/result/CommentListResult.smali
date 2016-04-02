.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CommentListResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public commentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/CommentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public counts:I

.field public filmPlot:Ljava/lang/String;

.field public paginatorInfo:Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/PaginatorInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;-><init>()V

    return-void
.end method
