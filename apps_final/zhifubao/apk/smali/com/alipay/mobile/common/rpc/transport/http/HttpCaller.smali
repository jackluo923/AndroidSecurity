.class public Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;
.super Lcom/alipay/mobile/common/rpc/transport/AbstractRpcCaller;
.source "HttpCaller.java"


# instance fields
.field private context:Landroid/content/Context;

.field private extParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

.field private mConfig:Lcom/alipay/mobile/common/rpc/Config;

.field private mReqDataDigest:Ljava/lang/String;

.field private rpcVersion:Ljava/lang/String;

.field private scene:Ljava/lang/String;

.field private signData:Ljava/lang/String;

.field private timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 7

    .prologue
    .line 96
    iget-object v0, p8, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/rpc/transport/AbstractRpcCaller;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V

    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    .line 98
    iput-object p7, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->context:Landroid/content/Context;

    .line 99
    iput-object p8, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 100
    return-void
.end method

.method private addCustReqHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 326
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method

.method private addExtParam2Headers(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->extParam:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->extParam:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->extParam:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 321
    :cond_0
    return-void
.end method

.method private addHeader(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->addCustReqHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 265
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->isRpcVersion2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "did"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 268
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "clientId"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 270
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 272
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "TRACKERID"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string/jumbo v3, "actionToken"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "AppId"

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v2, v2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 307
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/Config;->addExtHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 308
    return-void

    .line 282
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->addExtParam2Headers(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 284
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Version"

    const-string/jumbo v2, "2"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 285
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Did"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 286
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Operation-Type"

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 287
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Ts"

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->timeStamp:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 288
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Content-Type"

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mContentType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->scene:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Scene"

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->scene:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->getSignData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "Sign"

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->signData:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 299
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "AppId"

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v2, v2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    goto/16 :goto_0

    .line 301
    :cond_4
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "AppId"

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    goto/16 :goto_0
.end method

.method private getBodyContent(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInLogBackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v0, "\u6839\u636e\u76f8\u5173\u6cd5\u5f8b\u6cd5\u89c4\u548c\u653f\u7b56\uff0c\u672c\u7ed3\u679c\u672a\u4e88\u663e\u793a"

    .line 184
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getResData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private getRequestBodyContent(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInLogBackList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 156
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",   \u6839\u636e\u76f8\u5173\u6cd5\u5f8b\u6cd5\u89c4\u548c\u653f\u7b56\uff0c\u90e8\u5206\u5185\u5bb9\u672a\u4e88\u663e\u793a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getTransport()Lcom/alipay/mobile/common/transport/Transport;
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->getTransport()Lcom/alipay/mobile/common/transport/Transport;

    move-result-object v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Not find this type Transport"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->getTransport()Lcom/alipay/mobile/common/transport/Transport;

    move-result-object v0

    return-object v0
.end method

.method private logResponseInfo(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V
    .locals 10

    .prologue
    const/4 v3, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "threadid = %s; Response success. mOperationType=[%s] . response header=[%s].  response body = %s  "

    .line 169
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    const-string/jumbo v2, "HttpCaller"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    aput-object v4, v3, v7

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v8

    const-string/jumbo v0, ""

    aput-object v0, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_1
    return-void

    .line 170
    :cond_0
    const-string/jumbo v0, "is null"

    goto :goto_0

    .line 174
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    aput-object v3, v2, v7

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v2, v8

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->getBodyContent(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "HttpCaller"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_2
    const-string/jumbo v0, "is null"

    goto :goto_2
.end method

.method private sendRequest(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;
    .locals 5

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->getTransport()Lcom/alipay/mobile/common/transport/Transport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transport/Transport;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-wide v1, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->timeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-wide v1, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->timeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/Response;

    .line 196
    :goto_0
    if-nez v0, :cond_1

    .line 197
    const-string/jumbo v0, "HttpCaller"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "threadid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; Response fail: [response is null]. mOperationType=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "response is null"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/Response;

    goto :goto_0

    .line 205
    :cond_1
    return-object v0
.end method

.method private setResponseHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHeaders()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseHeader:Ljava/util/Map;

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mConfig:Lcom/alipay/mobile/common/rpc/Config;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/Config;->giveResponseHeader(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;)V

    .line 211
    return-void
.end method

.method private transferCode(I)I
    .locals 0

    .prologue
    .line 221
    .line 222
    packed-switch p1, :pswitch_data_0

    .line 252
    :goto_0
    return p1

    .line 224
    :pswitch_0
    const/4 p1, 0x4

    .line 225
    goto :goto_0

    .line 227
    :pswitch_1
    const/4 p1, 0x7

    .line 228
    goto :goto_0

    .line 230
    :pswitch_2
    const/16 p1, 0x8

    .line 231
    goto :goto_0

    .line 233
    :pswitch_3
    const/4 p1, 0x6

    .line 234
    goto :goto_0

    .line 236
    :pswitch_4
    const/4 p1, 0x5

    .line 237
    goto :goto_0

    .line 239
    :pswitch_5
    const/4 p1, 0x3

    .line 240
    goto :goto_0

    .line 242
    :pswitch_6
    const/4 p1, 0x2

    .line 243
    goto :goto_0

    .line 245
    :pswitch_7
    const/16 p1, 0x10

    .line 246
    goto :goto_0

    .line 248
    :pswitch_8
    const/16 p1, 0xf

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7

    .prologue
    const/16 v6, 0xd

    .line 104
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v2, v2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mReqData:[B

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setReqData([B)V

    .line 107
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setContentType(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v2, v2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setResetCookie(Z)V

    .line 109
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v2, v2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->compress:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setCompress(Z)V

    .line 110
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->invokeContext:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v2, v2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setBgRpc(Z)V

    .line 111
    const-string/jumbo v2, "id"

    iget v3, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v2, "operationType"

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v2, "reqDataDigest"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->getReqDataDigest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "rpcVersion"

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->rpcVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->addHeader(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 118
    const-string/jumbo v2, "HttpCaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "threadid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; Request info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->getRequestBodyContent(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->sendRequest(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v2

    .line 123
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    move-object v1, v0

    .line 124
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->logResponseInfo(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V

    .line 125
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->setResponseHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    .line 126
    return-object v2

    .line 127
    :catch_0
    move-exception v1

    .line 128
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    .line 130
    :catch_1
    move-exception v1

    move-object v2, v1

    .line 131
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    if-eqz v3, :cond_0

    .line 133
    check-cast v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    .line 134
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->transferCode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 142
    :catch_2
    move-exception v1

    .line 143
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    .line 145
    :catch_3
    move-exception v1

    .line 146
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->extParam:Ljava/util/Map;

    return-object v0
.end method

.method public getReqDataDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mReqDataDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getRpcVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->rpcVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSignData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->signData:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public isRpcVersion2()Z
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->rpcVersion:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mContentType:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setExtObjectParam(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .line 415
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 417
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 420
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->extParam:Ljava/util/Map;

    .line 422
    :cond_1
    return-void
.end method

.method public setExtParam(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->extParam:Ljava/util/Map;

    .line 411
    return-void
.end method

.method public setReqDataDigest(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mReqDataDigest:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setRpcVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->rpcVersion:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->scene:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setSignData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->signData:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->timeStamp:Ljava/lang/String;

    .line 375
    return-void
.end method
