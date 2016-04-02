.class public Lcom/alipay/pushsdk/AliPushAppInfo;
.super Ljava/lang/Object;
.source "AliPushAppInfo.java"

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/alipay/pushsdk/a;

    invoke-direct {v0}, Lcom/alipay/pushsdk/a;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/AliPushAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->a:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->b:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->c:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->d:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->e:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->f:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->g:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->h:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->i:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->a:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->b:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->c:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->d:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->e:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->f:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->g:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->h:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->i:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->a:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->b:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->c:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->d:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->e:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->f:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->g:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->h:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->i:Ljava/lang/String;

    .line 35
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v0, "AliPushAppInfo"

    const-string/jumbo v1, "AliPushAppInfo.Parcel..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->d:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->e:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->f:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->g:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->h:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->i:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMsptId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->f:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->b:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setMsptId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->d:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->g:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->i:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setTrigger(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->a:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->e:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setUtdId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->c:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->h:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 133
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "AliPushAppInfo"

    const-string/jumbo v1, "AliPushAppInfo.writeToParcel..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/alipay/pushsdk/AliPushAppInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return-void
.end method
