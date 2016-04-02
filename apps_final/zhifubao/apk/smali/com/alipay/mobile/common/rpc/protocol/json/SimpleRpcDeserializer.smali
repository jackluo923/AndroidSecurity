.class public Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcDeserializer;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;
.source "SimpleRpcDeserializer.java"


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 23
    return-void
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcDeserializer;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "response  ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcDeserializer;->mData:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
