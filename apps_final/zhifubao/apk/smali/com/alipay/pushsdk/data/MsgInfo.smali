.class public Lcom/alipay/pushsdk/data/MsgInfo;
.super Ljava/lang/Object;
.source "MsgInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private msgKey:Ljava/lang/String;

.field private msgMissionId:Ljava/lang/String;

.field private perMsgId:Ljava/lang/String;

.field private pubMsgId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/MsgInfo;->msgKey:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/MsgInfo;->pubMsgId:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/MsgInfo;->perMsgId:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/MsgInfo;->msgMissionId:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getMissionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/pushsdk/data/MsgInfo;->msgMissionId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/pushsdk/data/MsgInfo;->msgKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPerMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/pushsdk/data/MsgInfo;->perMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getPubMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/pushsdk/data/MsgInfo;->pubMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public setMissionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/pushsdk/data/MsgInfo;->msgMissionId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setMsgKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/pushsdk/data/MsgInfo;->msgKey:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPerMsgId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/pushsdk/data/MsgInfo;->perMsgId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPubMsgId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/pushsdk/data/MsgInfo;->pubMsgId:Ljava/lang/String;

    .line 39
    return-void
.end method
