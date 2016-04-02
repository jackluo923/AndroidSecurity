.class public Lcom/alipay/pushsdk/data/NotifierInfo;
.super Ljava/lang/Object;
.source "NotifierInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:J

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Lcom/alipay/pushsdk/data/MsgInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/alipay/pushsdk/data/c;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/c;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/data/NotifierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    .line 26
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:J

    .line 27
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:J

    .line 28
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/MsgInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/MsgInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const-wide/16 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    .line 26
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:J

    .line 27
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:J

    .line 28
    iput-wide v1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/MsgInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    .line 50
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v0, "NotifierInfo"

    const-string/jumbo v1, "NotifierInfo.Parcel..."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setMissionId(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setMsgKey(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setPerMsgId(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setPubMsgId(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/alipay/pushsdk/data/NotifierInfo;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 244
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 245
    new-instance v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;-><init>()V

    .line 246
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setTitle(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setContent(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v2, "snd"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setSound(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setUri(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v2, "style"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setStyle(Ljava/lang/String;)V

    .line 251
    const-string/jumbo v2, "badge"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setBadge(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v2, "tMsgId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setTMsgId(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v2, "noticeExt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setNoticeExt(Ljava/lang/String;)V

    .line 254
    const-string/jumbo v2, "bizType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setBizType(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v2, "showOffset"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->setDelayOffset(J)V

    .line 256
    const-string/jumbo v2, "showToTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->setDelayToTime(J)V

    .line 257
    const-string/jumbo v2, "showTimeout"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->setDisplayTimeout(J)V

    .line 258
    const-string/jumbo v2, "idenOfUser"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setUserId(Ljava/lang/String;)V

    .line 260
    new-instance v2, Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-direct {v2}, Lcom/alipay/pushsdk/data/MsgInfo;-><init>()V

    .line 261
    const-string/jumbo v3, "pubmsgid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/data/MsgInfo;->setPubMsgId(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v3, "k"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/data/MsgInfo;->setMsgKey(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v3, "permsgid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/data/MsgInfo;->setPerMsgId(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v3, "notificationMissionId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setMissionId(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/data/NotifierInfo;->setMsgInfo(Lcom/alipay/pushsdk/data/MsgInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-object v0

    .line 267
    :catch_0
    move-exception v0

    .line 269
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const-string/jumbo v1, "NotifierInfo"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public getBadge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayOffset()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:J

    return-wide v0
.end method

.method public getDelayToTime()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:J

    return-wide v0
.end method

.method public getDisplayTimeout()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    return-object v0
.end method

.method public getNoticeExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public setBadge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setDelayOffset(J)V
    .locals 0

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:J

    .line 79
    return-void
.end method

.method public setDelayToTime(J)V
    .locals 0

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:J

    .line 87
    return-void
.end method

.method public setDisplayTimeout(J)V
    .locals 0

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    .line 95
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setMsgInfo(Lcom/alipay/pushsdk/data/MsgInfo;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    .line 187
    return-void
.end method

.method public setNoticeExt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setTMsgId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 202
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 204
    const-string/jumbo v1, "msgId"

    iget-object v2, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getPerMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string/jumbo v1, "msgTitle"

    iget-object v2, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 212
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 214
    :try_start_0
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string/jumbo v1, "content"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v1, "snd"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getSound()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string/jumbo v1, "uri"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string/jumbo v1, "style"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string/jumbo v1, "badge"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getBadge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string/jumbo v1, "tMsgId"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getTMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string/jumbo v1, "noticeExt"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getNoticeExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string/jumbo v1, "bizType"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getBizType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v1, "showOffset"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayOffset()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v1, "showToTime"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 225
    const-string/jumbo v1, "showTimeout"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDisplayTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 226
    const-string/jumbo v1, "idenOfUser"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string/jumbo v1, "pubmsgid"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getPubMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string/jumbo v1, "k"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string/jumbo v1, "permsgid"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getPerMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string/jumbo v1, "notificationMissionId"

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/MsgInfo;->getMissionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const-string/jumbo v1, "NotifierInfo"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 283
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v0, "NotifierInfo"

    const-string/jumbo v1, "NotifierInfo.writeToParcel..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 298
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget-wide v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const-string/jumbo v0, "NotifierInfo"

    const-string/jumbo v1, "NotifierInfo.writeToParcel msgInfo."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getMissionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getPerMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->o:Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getPubMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    return-void
.end method
