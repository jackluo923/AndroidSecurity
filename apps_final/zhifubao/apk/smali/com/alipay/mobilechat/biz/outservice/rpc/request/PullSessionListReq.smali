.class public Lcom/alipay/mobilechat/biz/outservice/rpc/request/PullSessionListReq;
.super Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public localChatSessionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/request/PullChatSessionReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;-><init>()V

    return-void
.end method
