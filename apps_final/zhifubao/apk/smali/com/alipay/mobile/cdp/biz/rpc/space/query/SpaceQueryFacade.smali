.class public interface abstract Lcom/alipay/mobile/cdp/biz/rpc/space/query/SpaceQueryFacade;
.super Ljava/lang/Object;
.source "SpaceQueryFacade.java"


# virtual methods
.method public abstract initialSpaceInfo()Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.cdp.space.initialSpaceInfo"
    .end annotation
.end method

.method public abstract queryBySpaceCode(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;)Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.cdp.space.queryBySpaceCode"
    .end annotation
.end method

.method public abstract queryBySpaceType(Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceTypeQueryReq;)Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.cdp.space.queryBySpaceType"
    .end annotation
.end method
