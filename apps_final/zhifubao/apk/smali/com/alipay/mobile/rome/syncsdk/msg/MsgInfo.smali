.class public Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;
.super Ljava/lang/Object;
.source "MsgInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private msgData:Ljava/lang/String;

.field private msgKey:Ljava/lang/String;

.field private msgTimestamp:Ljava/lang/String;

.field private perMsgId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->msgData:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->userId:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->userId:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->msgData:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->msgKey:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->msgTimestamp:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->perMsgId:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getMsgData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->msgData:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->msgKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPerMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->perMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->msgTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->msgData:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setMsgKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->msgKey:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPerMsgId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->perMsgId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->msgTimestamp:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/msg/MsgInfo;->userId:Ljava/lang/String;

    .line 40
    return-void
.end method
