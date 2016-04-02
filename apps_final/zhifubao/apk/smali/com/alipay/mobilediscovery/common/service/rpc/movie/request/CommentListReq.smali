.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CommentListReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public filmName:Ljava/lang/String;

.field public needPaging:Z

.field public pageNum:I

.field public pageSize:I

.field public providerFilmId:Ljava/lang/String;

.field public queryFilm:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CommentListReq;->queryFilm:Z

    iput-boolean v0, p0, Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CommentListReq;->needPaging:Z

    return-void
.end method
