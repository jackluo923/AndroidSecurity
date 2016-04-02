.class public Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;
.source "PBDeserializer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PBDeserializer"


# instance fields
.field private response:Lcom/alipay/mobile/common/transport/Response;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 29
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;->response:Lcom/alipay/mobile/common/transport/Response;

    .line 30
    return-void
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;->response:Lcom/alipay/mobile/common/transport/Response;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->preProcessResponse(Lcom/alipay/mobile/common/transport/Response;)V

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getProtobufCodec()Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;

    move-result-object v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "protobufCodec == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    instance-of v1, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    throw v0

    .line 41
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;->mType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;->mData:[B

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->deserialize(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 46
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v1
.end method
