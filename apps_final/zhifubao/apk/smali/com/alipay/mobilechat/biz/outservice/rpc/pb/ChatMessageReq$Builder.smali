.class public final Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;",
        ">;"
    }
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public bizMemo:Ljava/lang/String;

.field public bizRemind:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public clientMsgId:Ljava/lang/Long;

.field public extendParam:Ljava/lang/String;

.field public hintUsers:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public receiverId:Ljava/lang/String;

.field public receiverUserType:Ljava/lang/Integer;

.field public scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

.field public templateCode:Ljava/lang/Integer;

.field public templateData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->clientMsgId:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->receiverId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->receiverUserType:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->templateCode:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->templateData:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->appId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->hintUsers:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->link:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->bizType:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->extendParam:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->bizMemo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->bizRemind:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final appId(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public final bizMemo(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->bizMemo:Ljava/lang/String;

    return-object p0
.end method

.method public final bizRemind(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->bizRemind:Ljava/lang/String;

    return-object p0
.end method

.method public final bizType(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->bizType:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;
    .locals 2

    new-instance v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;-><init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->build()Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    move-result-object v0

    return-object v0
.end method

.method public final clientMsgId(Ljava/lang/Long;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->clientMsgId:Ljava/lang/Long;

    return-object p0
.end method

.method public final extendParam(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->extendParam:Ljava/lang/String;

    return-object p0
.end method

.method public final hintUsers(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->hintUsers:Ljava/lang/String;

    return-object p0
.end method

.method public final link(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method public final receiverId(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->receiverId:Ljava/lang/String;

    return-object p0
.end method

.method public final receiverUserType(Ljava/lang/Integer;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->receiverUserType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final scene(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    return-object p0
.end method

.method public final templateCode(Ljava/lang/Integer;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->templateCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final templateData(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->templateData:Ljava/lang/String;

    return-object p0
.end method
