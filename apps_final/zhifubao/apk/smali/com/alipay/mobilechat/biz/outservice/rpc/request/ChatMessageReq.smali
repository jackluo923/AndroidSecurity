.class public Lcom/alipay/mobilechat/biz/outservice/rpc/request/ChatMessageReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appId:Ljava/lang/String;

.field public clientMsgId:Ljava/lang/String;

.field public extendParam:Ljava/lang/String;

.field public hintUsers:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public receiverId:Ljava/lang/String;

.field public receiverUserType:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public templateCode:Ljava/lang/String;

.field public templateData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "chat"

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/request/ChatMessageReq;->scene:Ljava/lang/String;

    return-void
.end method
