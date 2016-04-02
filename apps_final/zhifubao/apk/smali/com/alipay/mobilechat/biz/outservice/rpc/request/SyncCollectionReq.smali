.class public Lcom/alipay/mobilechat/biz/outservice/rpc/request/SyncCollectionReq;
.super Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionBaseRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public addCollections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionVO;",
            ">;"
        }
    .end annotation
.end field

.field public delTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionTagReq;",
            ">;"
        }
    .end annotation
.end field

.field public newTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionTagReq;",
            ">;"
        }
    .end annotation
.end field

.field public toDeleteCollections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public updateCollections:Ljava/util/List;
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
