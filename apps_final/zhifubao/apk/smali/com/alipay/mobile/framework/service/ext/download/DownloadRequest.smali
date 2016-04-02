.class public Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DownloadRequest"


# instance fields
.field private appId:Ljava/lang/String;

.field private autoInstall:Z

.field private autoLaunch:Z

.field private description:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private needProgress:Z

.field private showRunningNotification:Z

.field private targetFileName:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/download/a;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/download/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->needProgress:Z

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->needProgress:Z

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->title:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->description:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->showRunningNotification:Z

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->appId:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->fileName:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->autoInstall:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->needProgress:Z

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->autoLaunch:Z

    .line 183
    return-void

    :cond_0
    move v0, v2

    .line 176
    goto :goto_0

    :cond_1
    move v0, v2

    .line 180
    goto :goto_1

    :cond_2
    move v0, v2

    .line 181
    goto :goto_2

    :cond_3
    move v1, v2

    .line 182
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getDefaultDownloadDir()Ljava/lang/String;
    .locals 6

    .prologue
    .line 150
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 151
    const-string/jumbo v2, "com.alipay.android.phone.openplatform"

    const-string/jumbo v3, "downloads"

    .line 150
    invoke-direct {v1, v0, v2, v3}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "externalFile path:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "DownloadRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "downloadDir:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "path not exist but fail to create: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DownloadRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " dir exist,but not directory."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->targetFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoInstall()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->autoInstall:Z

    return v0
.end method

.method public isAutoLaunch()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->autoLaunch:Z

    return v0
.end method

.method public isNeedProgress()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->needProgress:Z

    return v0
.end method

.method public isShowRunningNotification()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->showRunningNotification:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->appId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setAutoInstall(Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->autoInstall:Z

    .line 126
    return-void
.end method

.method public setAutoLaunch(Z)V
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->autoLaunch:Z

    .line 142
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->description:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->fileName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setNeedProgress(Z)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->needProgress:Z

    .line 134
    return-void
.end method

.method public setShowRunningNotification(Z)V
    .locals 0

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->showRunningNotification:Z

    .line 110
    return-void
.end method

.method public setTargetFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->title:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->showRunningNotification:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->targetFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->autoInstall:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->needProgress:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->autoLaunch:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void

    :cond_0
    move v0, v2

    .line 195
    goto :goto_0

    :cond_1
    move v0, v2

    .line 199
    goto :goto_1

    :cond_2
    move v0, v2

    .line 200
    goto :goto_2

    :cond_3
    move v1, v2

    .line 201
    goto :goto_3
.end method
