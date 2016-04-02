.class public Lcom/alipay/mobile/command/rpc/proxy/RpcInvocationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvocationHandler;->a:Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvocationHandler;->a:Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
