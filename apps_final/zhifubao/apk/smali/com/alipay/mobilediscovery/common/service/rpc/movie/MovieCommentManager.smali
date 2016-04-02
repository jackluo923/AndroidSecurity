.class public interface abstract Lcom/alipay/mobilediscovery/common/service/rpc/movie/MovieCommentManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createComment(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CommentReq;)Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.createComment"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createTbComment(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/TbCommentReq;)Lcom/alipay/mobilediscovery/common/service/rpc/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.createTbComment"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCommentList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/CommentListReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CommentListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getCommentList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getTbCommentList(Lcom/alipay/mobilediscovery/common/service/rpc/movie/request/TbCommentListReq;)Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/TbCommentListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.discovery.movie.getTbCommentList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
