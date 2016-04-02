.class public Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionTagReq;
.super Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionBaseRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public objIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/String;

.field public tagId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/outservice/rpc/request/CollectionBaseRequest;-><init>()V

    return-void
.end method
