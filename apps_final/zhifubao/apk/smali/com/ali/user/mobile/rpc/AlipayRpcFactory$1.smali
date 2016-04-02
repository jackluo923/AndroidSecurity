.class Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;
.super Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;
.source "AlipayRpcFactory.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/rpc/AlipayRpcFactory;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/rpc/AlipayRpcFactory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;->this$0:Lcom/ali/user/mobile/rpc/AlipayRpcFactory;

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransport()Lcom/alipay/mobile/common/transport/Transport;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1$1;-><init>(Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;->this$0:Lcom/ali/user/mobile/rpc/AlipayRpcFactory;

    # getter for: Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;->access$0(Lcom/ali/user/mobile/rpc/AlipayRpcFactory;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
