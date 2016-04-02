.class public abstract Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alipay/mobile/command/model/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/command/model/Request;

.field private b:Lcom/alipay/mobile/command/rpc/http/TransportCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/alipay/mobile/command/rpc/http/TransportCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;->b:Lcom/alipay/mobile/command/rpc/http/TransportCallback;

    return-object v0
.end method

.method public getRequest()Lcom/alipay/mobile/command/model/Request;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;->a:Lcom/alipay/mobile/command/model/Request;

    return-object v0
.end method

.method public setCallback(Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;->b:Lcom/alipay/mobile/command/rpc/http/TransportCallback;

    return-void
.end method

.method public setRequest(Lcom/alipay/mobile/command/model/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;->a:Lcom/alipay/mobile/command/model/Request;

    return-void
.end method
