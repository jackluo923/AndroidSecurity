.class public Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
.super Ljava/lang/Object;
.source "FollowAccountBaseInfo.java"


# instance fields
.field public acceptMsg:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "1"
    .end annotation
.end field

.field public avatar:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public cltDefIconType:Ljava/lang/String;
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
        index = true
    .end annotation
.end field

.field public followType:Ljava/lang/String;
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

.field id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field public isFollow:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "1"
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

.field public pinyin:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = ""
    .end annotation
.end field

.field public pluginType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public publicType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public topType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
    .end annotation
.end field

.field public vip:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        defaultValue = "0"
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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    .line 124
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    .line 124
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->userId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followObjectId:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->id:Ljava/lang/String;

    .line 33
    return-void
.end method
