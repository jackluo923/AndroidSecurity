.class public Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatSessionListResult;
.super Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public chatSessionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/common/service/facade/model/message/ChatSession;",
            ">;"
        }
    .end annotation
.end field

.field public lastKey:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
