.class public Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcJsonSerializer;
.super Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;
.source "SimpleRpcJsonSerializer.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getRequestDataJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcJsonSerializer;->mParams:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 27
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
