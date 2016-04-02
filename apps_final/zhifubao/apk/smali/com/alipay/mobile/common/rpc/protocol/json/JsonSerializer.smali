.class public Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;
.source "JsonSerializer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JsonSerializer"

.field public static final VERSION:Ljava/lang/String; = "1.0.0"


# instance fields
.field private mExtParam:Ljava/lang/Object;

.field private mId:I

.field protected mRequestDataJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    iput p1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mId:I

    .line 53
    return-void
.end method


# virtual methods
.method public buildNameValuePairs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mExtParam:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "extParam"

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mExtParam:Ljava/lang/Object;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "operationType"

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mOperationType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "id"

    iget v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->scene:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "scene"

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->scene:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    const-string/jumbo v0, "JsonSerializer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mParams = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mParams:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " scene = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->scene:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->buildReqDataNVPair()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public buildReqDataNVPair()Lorg/apache/http/message/BasicNameValuePair;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "requestData"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->getRequestDataJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mId:I

    return v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDataDigest()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 175
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->getRequestDataJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 177
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string/jumbo v1, "JsonSerializer"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getRequestDataJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    .line 169
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mParams:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string/jumbo v0, "[]"

    :goto_1
    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mParams:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public nvpairs2Bytes(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 76
    const-string/jumbo v0, "utf-8"

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string/jumbo v2, "JsonSerializer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "request = "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public packet()[B
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->prePacket(Ljava/util/List;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->buildNameValuePairs(Ljava/util/List;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->postPacket(Ljava/util/List;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->nvpairs2Bytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public postPacket(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    return-void
.end method

.method public prePacket(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    return-void
.end method

.method public setExtParam(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mExtParam:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mId:I

    .line 148
    return-void
.end method
