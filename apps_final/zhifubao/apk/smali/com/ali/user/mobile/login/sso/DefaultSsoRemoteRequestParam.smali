.class public Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;
.super Ljava/lang/Object;
.source "DefaultSsoRemoteRequestParam.java"

# interfaces
.implements Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;


# instance fields
.field private a:Lcom/ali/user/mobile/login/sso/SSORequestParam;

.field private b:Lcom/ali/user/mobile/info/DeviceInfo;

.field private c:Lcom/ali/user/mobile/info/AppInfo;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/login/sso/SSORequestParam;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->a:Lcom/ali/user/mobile/login/sso/SSORequestParam;

    .line 21
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    .line 22
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->c:Lcom/ali/user/mobile/info/AppInfo;

    .line 23
    return-void
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "DefaultSsoRemoteRequestParam"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appKey:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->a:Lcom/ali/user/mobile/login/sso/SSORequestParam;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->a:Lcom/ali/user/mobile/login/sso/SSORequestParam;

    iget-object v0, v0, Lcom/ali/user/mobile/login/sso/SSORequestParam;->deviceId:Ljava/lang/String;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->b:Lcom/ali/user/mobile/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->a:Lcom/ali/user/mobile/login/sso/SSORequestParam;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->a:Lcom/ali/user/mobile/login/sso/SSORequestParam;

    iget-object v0, v0, Lcom/ali/user/mobile/login/sso/SSORequestParam;->ttid:Ljava/lang/String;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUmidToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/DefaultSsoRemoteRequestParam;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
