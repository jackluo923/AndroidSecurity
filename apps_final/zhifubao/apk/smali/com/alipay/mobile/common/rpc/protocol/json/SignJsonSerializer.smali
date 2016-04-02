.class public Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;
.super Ljava/lang/Object;
.source "SignJsonSerializer.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/protocol/Serializer;


# static fields
.field public static final APP_KEY_DEBUG:Ljava/lang/String; = "rpc-sdk"

.field public static final APP_KEY_ONLINE:Ljava/lang/String; = "rpc-sdk-online"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJsonSerializer:Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

.field private mOnline:Z

.field private mOutAppKey:Ljava/lang/String;

.field private mSignTimestamp:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mSignTimestamp:J

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mJsonSerializer:Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mContext:Landroid/content/Context;

    .line 49
    iput-boolean p4, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mOnline:Z

    .line 50
    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mOutAppKey:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private buildSignNameValuePairs(Ljava/util/List;)V
    .locals 5
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
    .line 69
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "ts"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->getSignTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->sortNVPairList(Ljava/util/List;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 77
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mOutAppKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mOnline:Z

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/alipay/mobile/common/rpc/util/RpcSignUtil;->signature(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "sign"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    return-void
.end method

.method private sortNVPairList(Ljava/util/List;)V
    .locals 1
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
    .line 90
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer$1;-><init>(Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getRequestDataDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mJsonSerializer:Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignTimestamp()J
    .locals 4

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mSignTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 113
    iget-wide v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mSignTimestamp:J

    .line 116
    :goto_0
    return-wide v0

    .line 115
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mSignTimestamp:J

    .line 116
    iget-wide v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mSignTimestamp:J

    goto :goto_0
.end method

.method public packet()[B
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mJsonSerializer:Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->buildNameValuePairs(Ljava/util/List;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->buildSignNameValuePairs(Ljava/util/List;)V

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->mJsonSerializer:Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->nvpairs2Bytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public setExtParam(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
