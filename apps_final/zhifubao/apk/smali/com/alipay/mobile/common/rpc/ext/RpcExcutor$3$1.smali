.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3$1;
.super Ljava/lang/Object;
.source "RpcExcutor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:[Ljava/lang/Object;

.field final synthetic this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3$1;->a:[Ljava/lang/Object;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;

    # getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->access$0(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;)Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->hideTipView()V

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;

    # getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;->access$0(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;)Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3$1;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    .line 344
    return-void
.end method
