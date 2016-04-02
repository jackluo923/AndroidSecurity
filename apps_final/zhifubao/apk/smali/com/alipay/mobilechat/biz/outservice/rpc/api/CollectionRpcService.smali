.class public interface abstract Lcom/alipay/mobilechat/biz/outservice/rpc/api/CollectionRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addCollection(Lcom/alipay/mobilechat/biz/outservice/rpc/request/AddCollectionReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.collection.add"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract addCollections(Lcom/alipay/mobilechat/biz/outservice/rpc/request/BatchAddCollectionReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.collection.batchAdd"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract addTags(Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionTagReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.collection.tag.add"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract delCollections(Lcom/alipay/mobilechat/biz/outservice/rpc/request/DelCollectionReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.collection.delete"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract delTags(Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionTagReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.collection.tag.delete"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCollectionListByUser(Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionBaseRequest;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.collection.getByUser"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryTagsByCollection(Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionQueryTagReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/TagRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.collection.tag.getByCollection"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryTagsByUser(Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionBaseRequest;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/TagRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.collection.tag.getByUser"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract syncCollections(Lcom/alipay/mobilechat/biz/outservice/rpc/request/SyncCollectionReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.collection.sync"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract updateCollectionContent(Lcom/alipay/mobilechat/biz/outservice/rpc/request/AddCollectionReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.collection.update"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
