.class public Lcom/alipay/mobilechat/biz/outservice/rpc/response/ChatQueryListResult;
.super Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasMore:Z

.field public lastMarkReadKey:J

.field public lastSkey:J

.field public markReadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/outservice/rpc/response/ClientMarkMsgReadModel;",
            ">;"
        }
    .end annotation
.end field

.field public userChatMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/common/service/facade/model/UserChatMessageResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method
