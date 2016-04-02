.class public Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;
.source "JsonDeserializerV2.java"


# instance fields
.field private response:Lcom/alipay/mobile/common/transport/Response;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 34
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->response:Lcom/alipay/mobile/common/transport/Response;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 30
    return-void
.end method

.method private logResult(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->response:Lcom/alipay/mobile/common/transport/Response;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->preProcessResponse(Lcom/alipay/mobile/common/transport/Response;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mData:[B

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->logResult(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mType:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 54
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "response  ="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;->mData:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/rpc/RpcException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 59
    throw v2

    .line 54
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
