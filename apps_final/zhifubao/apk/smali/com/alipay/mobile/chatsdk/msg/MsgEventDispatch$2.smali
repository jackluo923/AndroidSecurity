.class Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$2;
.super Ljava/lang/Object;
.source "MsgEventDispatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

.field private final synthetic val$appId:Ljava/lang/String;

.field private final synthetic val$localMsgId:Ljava/lang/String;

.field private final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$2;->this$0:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$2;->val$localMsgId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$2;->val$status:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$2;->val$appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$2;->val$localMsgId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$2;->val$status:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispathMsgStatus(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    return-void
.end method
