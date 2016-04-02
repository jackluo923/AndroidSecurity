.class public Lcom/alipay/mobilechat/biz/outservice/rpc/request/BatchAddCollectionReq;
.super Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionBaseRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public collectionVOs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionBaseRequest;-><init>()V

    return-void
.end method
