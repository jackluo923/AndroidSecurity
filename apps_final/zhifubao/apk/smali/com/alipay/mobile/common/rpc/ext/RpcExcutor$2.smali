.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;
.super Ljava/lang/Object;
.source "RpcExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->a:[Ljava/lang/Object;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->a:[Ljava/lang/Object;

    # invokes: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$2(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;[Ljava/lang/Object;)V

    .line 268
    return-void
.end method
