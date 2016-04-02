.class public Lcom/alipay/mobile/command/api/model/ConfigInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x50c41a026e71d288L


# instance fields
.field private logSwitch:I

.field private rbtMaxTimes:I

.field private rpcRetry:I

.field private syncInterval:I

.field private syncNetworks:I

.field private taskInterval:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->syncInterval:I

    iput v1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->syncNetworks:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->rpcRetry:I

    iput v1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->taskInterval:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->rbtMaxTimes:I

    iput v1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->logSwitch:I

    return-void
.end method


# virtual methods
.method public getLogSwitch()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->logSwitch:I

    return v0
.end method

.method public getRbtMaxTimes()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->rbtMaxTimes:I

    return v0
.end method

.method public getRpcRetry()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->rpcRetry:I

    return v0
.end method

.method public getSyncInterval()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->syncInterval:I

    return v0
.end method

.method public getSyncNetworks()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->syncNetworks:I

    return v0
.end method

.method public getTaskInterval()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->taskInterval:I

    return v0
.end method

.method public setLogSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->logSwitch:I

    return-void
.end method

.method public setRbtMaxTimes(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->rbtMaxTimes:I

    return-void
.end method

.method public setRpcRetry(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->rpcRetry:I

    return-void
.end method

.method public setSyncInterval(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->syncInterval:I

    return-void
.end method

.method public setSyncNetworks(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->syncNetworks:I

    return-void
.end method

.method public setTaskInterval(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/command/api/model/ConfigInfo;->taskInterval:I

    return-void
.end method
