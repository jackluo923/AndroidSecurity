.class Lcom/alipay/mobile/common/rpc/RpcInvoker$2;
.super Ljava/lang/Object;
.source "RpcInvoker.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/RpcInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$exception:Lcom/alipay/mobile/common/rpc/RpcException;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;

.field final synthetic val$rawResult:[B


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->this$0:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$proxy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$rawResult:[B

    iput-object p4, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$clazz:Ljava/lang/Class;

    iput-object p5, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$method:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$args:[Ljava/lang/Object;

    iput-object p7, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$exception:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/alipay/mobile/common/rpc/RpcInterceptor;Ljava/lang/annotation/Annotation;)Z
    .locals 9

    .prologue
    .line 261
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$proxy:Ljava/lang/Object;

    # getter for: Lcom/alipay/mobile/common/rpc/RpcInvoker;->RETURN_VALUE:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$rawResult:[B

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$clazz:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$method:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$args:[Ljava/lang/Object;

    iget-object v7, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$exception:Lcom/alipay/mobile/common/rpc/RpcException;

    move-object v0, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/alipay/mobile/common/rpc/RpcInterceptor;->exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string/jumbo v0, "Rpc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$exception:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "need process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    .line 267
    :cond_0
    const-string/jumbo v0, "Rpc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$exception:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "need not process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    goto :goto_0
.end method
