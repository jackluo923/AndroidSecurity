.class public Lcom/ali/user/mobile/utils/LogItem;
.super Ljava/lang/Object;
.source "LogItem.java"


# instance fields
.field public appID:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public behaviourIdEnum:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public behaviourPro:Ljava/lang/String;

.field public behaviourStatus:Ljava/lang/String;

.field public extendParams:[Ljava/lang/String;

.field public logPro:Ljava/lang/String;

.field public refViewID:Ljava/lang/String;

.field public seed:Ljava/lang/String;

.field public statusMessage:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public viewID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "aliusersdk"

    iput-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->appID:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "1.0.0.0"

    iput-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->appVersion:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBehaviourIdEnum()Lcom/ali/user/mobile/log/BehaviourIdEnum;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->behaviourIdEnum:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    return-object v0
.end method

.method public getBehaviourPro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->behaviourPro:Ljava/lang/String;

    return-object v0
.end method

.method public getBehaviourStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->behaviourStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendParams()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->extendParams:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogPro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->logPro:Ljava/lang/String;

    return-object v0
.end method

.method public getRefViewID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->refViewID:Ljava/lang/String;

    return-object v0
.end method

.method public getSeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->seed:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViewID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/utils/LogItem;->viewID:Ljava/lang/String;

    return-object v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->appID:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->appVersion:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setBehaviourIdEnum(Lcom/ali/user/mobile/log/BehaviourIdEnum;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->behaviourIdEnum:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 81
    return-void
.end method

.method public setBehaviourPro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->behaviourPro:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setBehaviourStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->behaviourStatus:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setExtendParams([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->extendParams:[Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setLogPro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->logPro:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setRefViewID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->refViewID:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setSeed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->seed:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->statusMessage:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->url:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setViewID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/ali/user/mobile/utils/LogItem;->viewID:Ljava/lang/String;

    .line 121
    return-void
.end method
