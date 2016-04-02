.class public Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# instance fields
.field private rpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->rpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 48
    return-void
.end method

.method private isPBInParam([Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getProtobufCodec()Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 187
    array-length v3, p1

    if-ne v3, v0, :cond_0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->isPBBean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 191
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string/jumbo v2, "SerializerFactory"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 195
    goto :goto_0
.end method

.method private isRpcV2([Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->isSupportRpcV2ForEnv(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->isPBInParam([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->rpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isEnableAmnetSetting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    .line 65
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledRpcV2()Z

    move-result v0

    goto :goto_0
.end method

.method private isSupportRpcV2ForEnv(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z
    .locals 3

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayUrl(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0xbba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Illegal url config"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getContentType(Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string/jumbo v0, "application/json"

    .line 213
    :goto_0
    return-object v0

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isPBV1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string/jumbo v0, "application/protobuf"

    goto :goto_0

    .line 213
    :cond_1
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    goto :goto_0
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Deserializer;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p3}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isSimpleJsonV1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcDeserializer;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 172
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p3}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isJsonV2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializerV2;-><init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p3}, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->isPBV1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBDeserializer;-><init>(Ljava/lang/reflect/Type;Lcom/alipay/mobile/common/transport/Response;)V

    goto :goto_0

    .line 172
    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    goto :goto_0
.end method

.method public getSerializer(ILjava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .locals 5

    .prologue
    .line 94
    const-class v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->isSimpleRpcAnnotation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcJsonSerializer;

    invoke-direct {v0, p1, p2, p4}, Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcJsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    const/4 v1, 0x1

    iput-byte v1, p7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    .line 116
    :goto_0
    new-instance v1, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;

    check-cast v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->rpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p6, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->isReq2Online()Z

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;-><init>(Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;Landroid/content/Context;Ljava/lang/String;Z)V

    move-object v0, v1

    .line 119
    :goto_1
    return-object v0

    .line 100
    :cond_0
    invoke-direct {p0, p4, p6}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->isRpcV2([Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-direct {p0, p4}, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->isPBInParam([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x3

    iput-byte v0, p7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    .line 103
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;

    invoke-direct {v0, p1, p2, p4}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 105
    :cond_1
    const/4 v0, 0x2

    iput-byte v0, p7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    .line 106
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;

    invoke-direct {v0, p1, p2, p4}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializerV2;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 109
    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-direct {v0, p1, p2, p4}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->setScene(Ljava/lang/String;)V

    .line 111
    const/4 v1, 0x0

    iput-byte v1, p7, Lcom/alipay/mobile/common/rpc/protocol/util/RPCProtoDesc;->protoType:B

    goto :goto_0
.end method

.method public isReq2Online()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/util/SerializerFactory;->rpcFactory:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getConfig()Lcom/alipay/mobile/common/rpc/Config;

    move-result-object v1

    .line 131
    invoke-interface {v1}, Lcom/alipay/mobile/common/rpc/Config;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "handler.getConfig().getUrl() is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-interface {v1}, Lcom/alipay/mobile/common/rpc/Config;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alipay.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    const-string/jumbo v2, "rpc"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
