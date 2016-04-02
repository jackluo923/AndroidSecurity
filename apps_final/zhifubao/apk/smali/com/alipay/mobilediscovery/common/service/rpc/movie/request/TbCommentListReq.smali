.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/TbCommentListReq;
.super Lcom/alipay/mobilediscovery/common/service/rpc/common/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentPage:I

.field public providerFilmId:Ljava/lang/String;

.field public queryFilm:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/common/ToString;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/TbCommentListReq;->queryFilm:Z

    return-void
.end method
