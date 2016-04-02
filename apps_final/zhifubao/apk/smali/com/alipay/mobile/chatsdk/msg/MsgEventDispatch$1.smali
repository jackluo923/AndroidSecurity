.class Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$1;
.super Ljava/lang/Object;
.source "MsgEventDispatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

.field private final synthetic val$msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$1;->this$0:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$1;->val$msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$1;->this$0:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    # getter for: Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;
    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->access$0(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$1;->val$msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispathMsg(Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    .line 67
    return-void
.end method
