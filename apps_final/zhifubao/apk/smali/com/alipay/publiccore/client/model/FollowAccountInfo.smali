.class public Lcom/alipay/publiccore/client/model/FollowAccountInfo;
.super Ljava/lang/Object;
.source "FollowAccountInfo.java"


# static fields
.field public static final uniqueIndexName:Ljava/lang/String; = "followaccountinfo_uniqueindex"


# instance fields
.field public acceptMsg:Z

.field public avatar:Ljava/lang/String;

.field public cltDefIconType:Ljava/lang/String;

.field public disturb:Z

.field public followObjectId:Ljava/lang/String;

.field public followType:Ljava/lang/String;

.field public gmtFollowTime:J

.field public gotoAppUri:Ljava/lang/String;

.field public id:I

.field public isFollow:Ljava/lang/String;

.field public latestMsg:Ljava/lang/String;

.field public latestMsgThridAccount:Ljava/lang/String;

.field public latestMsgTime:J

.field public msgNoteType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

.field public pinyin:Ljava/lang/String;

.field public pluginType:Ljava/lang/String;

.field public publicType:Ljava/lang/String;

.field public unReadMsgCount:I

.field public vip:Ljava/lang/String;

.field public wgtMsgId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->isFollow:Ljava/lang/String;

    .line 265
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->vip:Ljava/lang/String;

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->acceptMsg:Z

    .line 9
    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCltDefIconType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->cltDefIconType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    invoke-virtual {v0}, Lcom/alipay/publiccore/client/model/OperateProperties;->getDeleteType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFollowObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followType:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtFollowTime()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gmtFollowTime:J

    return-wide v0
.end method

.method public getGotoAppUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gotoAppUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->id:I

    return v0
.end method

.method public getLatestMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMsgThridAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsgThridAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMsgTime()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsgTime:J

    return-wide v0
.end method

.method public getMsgNoteType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->msgNoteType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperateProperties()Lcom/alipay/publiccore/client/model/OperateProperties;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    return-object v0
.end method

.method public getPublicType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->publicType:Ljava/lang/String;

    return-object v0
.end method

.method public getTopType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    invoke-virtual {v0}, Lcom/alipay/publiccore/client/model/OperateProperties;->getTopType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnReadMsgCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->unReadMsgCount:I

    return v0
.end method

.method public getWgtMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->wgtMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public isDisturb()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->disturb:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setCltDefIconType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->cltDefIconType:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setDisturb(Z)V
    .locals 0

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->disturb:Z

    .line 254
    return-void
.end method

.method public setFollowObjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setFollowType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followType:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setGmtFollowTime(J)V
    .locals 0

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gmtFollowTime:J

    .line 121
    return-void
.end method

.method public setGotoAppUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gotoAppUri:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->id:I

    .line 18
    return-void
.end method

.method public setLatestMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsg:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setLatestMsgThridAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setLatestMsgTime(J)V
    .locals 0

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsgTime:J

    .line 134
    return-void
.end method

.method public setMsgNoteType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->msgNoteType:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setOperateProperties(Lcom/alipay/publiccore/client/model/OperateProperties;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    .line 186
    return-void
.end method

.method public setPublicType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->publicType:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setUnReadMsgCount(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->unReadMsgCount:I

    .line 80
    return-void
.end method

.method public setWgtMsgId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->wgtMsgId:Ljava/lang/String;

    .line 227
    return-void
.end method
