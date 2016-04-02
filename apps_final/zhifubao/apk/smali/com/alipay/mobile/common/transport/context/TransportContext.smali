.class public Lcom/alipay/mobile/common/transport/context/TransportContext;
.super Ljava/lang/Object;
.source "TransportContext.java"


# static fields
.field private static final a:Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;


# instance fields
.field public api:Ljava/lang/String;

.field private b:Ljava/util/Map;
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

.field public context:Landroid/content/Context;

.field public currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

.field public dcList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/monitor/DataContainer;",
            ">;"
        }
    .end annotation
.end field

.field public logRandom:I

.field public mInitd:Z

.field public net0:I

.field public net1:I

.field public reqGzip:Z

.field public routeInfo:Ljava/lang/String;

.field public rpcUUID:Ljava/lang/String;

.field public rpcVersion:Ljava/lang/String;

.field public testUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext$EmptyDataContainer;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext$EmptyDataContainer;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->a:Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mInitd:Z

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->b:Ljava/util/Map;

    .line 144
    return-void
.end method


# virtual methods
.method public addExtInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->use:Z

    if-nez v0, :cond_2

    .line 100
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->a:Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;

    .line 110
    :cond_1
    :goto_0
    return-object v0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    .line 105
    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getExtInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->net0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->net1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInitd()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mInitd:Z

    return v0
.end method

.method public setInitd(Z)V
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mInitd:Z

    .line 187
    return-void
.end method
