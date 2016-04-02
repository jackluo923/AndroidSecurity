.class public interface abstract Lcom/alipay/mobilecsa/common/service/rpc/service/CommentService;
.super Ljava/lang/Object;
.source "CommentService.java"


# virtual methods
.method public abstract commentFriendQuery(Lcom/alipay/mobilecsa/common/service/rpc/request/CommentFriendQueryRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/CommentFriendQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.commentFriendQuery"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract commentInit(Lcom/alipay/mobilecsa/common/service/rpc/request/CommentInitRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/CommentInitResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.commentInit"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract deleteComment(Lcom/alipay/mobilecsa/common/service/rpc/request/CommentDelRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.commentDelete"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCommentById(Lcom/alipay/mobilecsa/common/service/rpc/request/MyCommentRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/MyCommentResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.getCommentById"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract publishComment(Lcom/alipay/mobilecsa/common/service/rpc/request/CommentPublishRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.commentPublish"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCommentList(Lcom/alipay/mobilecsa/common/service/rpc/request/CommentListQueryRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/CommentQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.commentListQuery"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryShopTags(Lcom/alipay/mobilecsa/common/service/rpc/request/ShopTagsQueryRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/ShopTagsQueryResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.shopTagQuery"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract submitScore(Lcom/alipay/mobilecsa/common/service/rpc/request/ScorePublishRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.submitScore"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract whereFriendEat(Lcom/alipay/mobilecsa/common/service/rpc/request/WhereFriendEatRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/WhereFriendEatResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.whereFriendEat"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
