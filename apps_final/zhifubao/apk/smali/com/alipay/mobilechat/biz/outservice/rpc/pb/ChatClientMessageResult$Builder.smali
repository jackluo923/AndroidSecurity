.class public final Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;",
        ">;"
    }
.end annotation


# instance fields
.field public diplayTips:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public msgId:Ljava/lang/Long;

.field public msgIndex:Ljava/lang/String;

.field public resultStatus:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->resultStatus:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->memo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->msgId:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->diplayTips:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->msgIndex:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;
    .locals 2

    new-instance v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;-><init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->build()Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;

    move-result-object v0

    return-object v0
.end method

.method public final diplayTips(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->diplayTips:Ljava/lang/String;

    return-object p0
.end method

.method public final memo(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->memo:Ljava/lang/String;

    return-object p0
.end method

.method public final msgId(Ljava/lang/Long;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->msgId:Ljava/lang/Long;

    return-object p0
.end method

.method public final msgIndex(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->msgIndex:Ljava/lang/String;

    return-object p0
.end method

.method public final resultStatus(Ljava/lang/Integer;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->resultStatus:Ljava/lang/Integer;

    return-object p0
.end method
