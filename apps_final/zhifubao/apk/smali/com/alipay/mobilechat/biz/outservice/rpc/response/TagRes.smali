.class public Lcom/alipay/mobilechat/biz/outservice/rpc/response/TagRes;
.super Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionBaseResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public tagVOs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/response/TagVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/outservice/rpc/response/CollectionBaseResult;-><init>()V

    return-void
.end method
