.class Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$8;
.super Ljava/lang/Object;
.source "MsgEventDispatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

.field private final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$8;->this$0:Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$8;->val$userId:Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch$8;->val$userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->dispatchFeedsReaded(Ljava/lang/String;)V

    .line 200
    return-void
.end method
