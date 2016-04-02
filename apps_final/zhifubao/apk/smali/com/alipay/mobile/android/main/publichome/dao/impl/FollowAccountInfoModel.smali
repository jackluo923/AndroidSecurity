.class public Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;
.super Ljava/lang/Object;
.source "FollowAccountInfoModel.java"


# static fields
.field public static final FOLLOWTYPE_ALIPAY_MSG:Ljava/lang/String; = "ALIPAY_MSG"

.field public static final FOLLOWTYPE_APP:Ljava/lang/String; = "APP"

.field public static final FOLLOWTYPE_PERSONAL:Ljava/lang/String; = "PERSONAL"

.field public static final FOLLOWTYPE_PREFER_MSG:Ljava/lang/String; = "PREFER_MSG"

.field public static final FOLLOWTYPE_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field public static final uniqueIndexName:Ljava/lang/String; = "followaccountinfo_uniqueindex"


# instance fields
.field public avatar:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public cancelDefaultTop:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public cltDefIconType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public defaultOrder:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public deleteType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public disturb:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "1"
    .end annotation
.end field

.field public followObjectId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        uniqueIndex = true
        uniqueIndexName = "followaccountinfo_uniqueindex"
    .end annotation
.end field

.field public followType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public forceTopOrder:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public gmtFollowTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public gotoAppUri:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public lastOperateTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public latestMsg:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public latestMsgThridAccount:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public latestMsgTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public localDelete:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public msgNoteType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public publicType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public showUnReadCount:I

.field public tabCalculate:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "1"
    .end annotation
.end field

.field public top:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public topOperateTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public topType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public unReadMsgCount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        uniqueIndex = true
        uniqueIndexName = "followaccountinfo_uniqueindex"
    .end annotation
.end field

.field public wgtMsgId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->disturb:Z

    .line 395
    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->tabCalculate:Z

    .line 398
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->showUnReadCount:I

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/alipay/publiccore/client/model/FollowAccountInfo;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->disturb:Z

    .line 395
    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->tabCalculate:Z

    .line 398
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->showUnReadCount:I

    .line 26
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getOperateProperties()Lcom/alipay/publiccore/client/model/OperateProperties;

    move-result-object v2

    .line 27
    iget-object v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->avatar:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->cltDefIconType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cltDefIconType:Ljava/lang/String;

    .line 30
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alipay/publiccore/client/model/OperateProperties;->getDefaultOrder()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->defaultOrder:Ljava/lang/String;

    .line 31
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/publiccore/client/model/OperateProperties;->getDeleteType()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->deleteType:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getFollowObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getFollowType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followType:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getGmtFollowTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gmtFollowTime:J

    .line 36
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getGotoAppUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gotoAppUri:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->id:I

    .line 38
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getLatestMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsg:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getLatestMsgThridAccount()Ljava/lang/String;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgThridAccount:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getLatestMsgTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgTime:J

    .line 43
    iget-object v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->msgNoteType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->msgNoteType:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->name:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->publicType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->publicType:Ljava/lang/String;

    .line 48
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/publiccore/client/model/OperateProperties;->getTopType()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topType:Ljava/lang/String;

    .line 49
    iget v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->unReadMsgCount:I

    iput v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->unReadMsgCount:I

    .line 51
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getWgtMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->wgtMsgId:Ljava/lang/String;

    .line 52
    iget-boolean v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->disturb:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->disturb:Z

    .line 53
    return-void

    :cond_1
    move-object v0, v1

    .line 30
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 31
    goto :goto_1
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCltDefIconType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cltDefIconType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->defaultOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->deleteType:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followType:Ljava/lang/String;

    return-object v0
.end method

.method public getForceTopOrder()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->forceTopOrder:I

    return v0
.end method

.method public getGmtFollowTime()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gmtFollowTime:J

    return-wide v0
.end method

.method public getGotoAppUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gotoAppUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->id:I

    return v0
.end method

.method public getLatestMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMsgThridAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgThridAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMsgTime()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgTime:J

    return-wide v0
.end method

.method public getMsgNoteType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->msgNoteType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->publicType:Ljava/lang/String;

    return-object v0
.end method

.method public getTopOperateTime()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topOperateTime:J

    return-wide v0
.end method

.method public getTopType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topType:Ljava/lang/String;

    return-object v0
.end method

.method public getUnReadMsgCount()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->unReadMsgCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWgtMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->wgtMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelDefaultTop()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cancelDefaultTop:Z

    return v0
.end method

.method public isLocalDelete()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->localDelete:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->top:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->avatar:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setCancelDefaultTop(Z)V
    .locals 0

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cancelDefaultTop:Z

    .line 332
    return-void
.end method

.method public setCltDefIconType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cltDefIconType:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setDefaultOrder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->defaultOrder:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setDeleteType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->deleteType:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setFollowObjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setFollowType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followType:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setForceTopOrder(I)V
    .locals 0

    .prologue
    .line 359
    iput p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->forceTopOrder:I

    .line 360
    return-void
.end method

.method public setGmtFollowTime(J)V
    .locals 0

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gmtFollowTime:J

    .line 173
    return-void
.end method

.method public setGotoAppUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gotoAppUri:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->id:I

    .line 64
    return-void
.end method

.method public setLatestMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsg:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setLatestMsgThridAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgThridAccount:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setLatestMsgTime(J)V
    .locals 0

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgTime:J

    .line 187
    return-void
.end method

.method public setLocalDelete(Z)V
    .locals 0

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->localDelete:Z

    .line 318
    return-void
.end method

.method public setMsgNoteType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->msgNoteType:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->name:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setPublicType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->publicType:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setTop(Z)V
    .locals 0

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->top:Z

    .line 290
    return-void
.end method

.method public setTopOperateTime(J)V
    .locals 0

    .prologue
    .line 345
    iput-wide p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topOperateTime:J

    .line 346
    return-void
.end method

.method public setTopType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topType:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setUnReadMsgCount(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->unReadMsgCount:I

    .line 131
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->userId:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setWgtMsgId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->wgtMsgId:Ljava/lang/String;

    .line 372
    return-void
.end method
