.class Lcom/alipay/mobile/common/rpc/RpcInvoker$3;
.super Ljava/lang/Object;
.source "RpcInvoker.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/RpcInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;->this$0:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;->val$proxy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;->val$clazz:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;->val$method:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/alipay/mobile/common/rpc/RpcInterceptor;Ljava/lang/annotation/Annotation;)Z
    .locals 9

    .prologue
    .line 293
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;->val$proxy:Ljava/lang/Object;

    # getter for: Lcom/alipay/mobile/common/rpc/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v2

    const/4 v0, 0x0

    new-array v3, v0, [B

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;->val$clazz:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;->val$method:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;->val$args:[Ljava/lang/Object;

    # getter for: Lcom/alipay/mobile/common/rpc/RpcInvoker;->EXT_PARAM:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v8

    move-object v0, p1

    move-object v7, p2

    invoke-interface/range {v0 .. v8}, Lcom/alipay/mobile/common/rpc/RpcInterceptor;->preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "preHandle stop this call."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
