.class public Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;
.super Ljava/lang/Object;
.source "LongLinkEventHandle.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Z

.field private static volatile c:Z

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    const-class v1, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    .line 22
    sput-boolean v2, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->b:Z

    .line 23
    sput-boolean v2, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Z

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->d:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAccount(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 51
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "clearAccount: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "EVENT_CLEAR_ACCOUNT"

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 54
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_0
    const-string/jumbo v0, "userId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive: [ delUserId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 64
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive: [ curUserId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "onReceive: delUserId not equals curUserId "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->startLink()V

    .line 87
    :goto_1
    return-void

    .line 78
    :cond_1
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception msg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static forceLogout(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "forceLogout, mmtp will unbinduser"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {p0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->clearAccount(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method public static frameworkActivityResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "frameworkActivityResume: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->FOREGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->updateAppStatus(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)V

    .line 148
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/service/LongLinkScreenOffService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    sget-boolean v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->b:Z

    if-eqz v0, :cond_0

    .line 151
    const-string/jumbo v0, "EVENT_FIRST_RESUME"

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 151
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sput-boolean v4, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->b:Z

    .line 159
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Z

    if-eqz v0, :cond_1

    .line 161
    const-string/jumbo v0, "EVENT_FIRST_RESUME_SCREENED"

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 161
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sput-boolean v4, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Z

    .line 168
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->startLinkOnResume()V

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->d:Z

    .line 172
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "frameworkActivityResume: [ screen off ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static frameworkActivityUserleavehint()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 125
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "frameworkActivityUserleavehint: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->BACKGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->updateAppStatus(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)V

    .line 127
    sput-boolean v2, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->d:Z

    .line 129
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->b:Z

    .line 130
    sput-boolean v2, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Z

    .line 133
    const-string/jumbo v0, "EVENT_USER_LEAVE"

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 133
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->setConnActionActive()V

    .line 141
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->stopLink()V

    .line 142
    return-void
.end method

.method public static gestureSuccess(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "gestureSuccess: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "state=validateGestureSucessAction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->startLink()V

    .line 119
    return-void
.end method

.method public static isResumedAndScreenOff()Z
    .locals 1

    .prologue
    .line 259
    sget-boolean v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->d:Z

    return v0
.end method

.method public static login()V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "login: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "EVENT_LOGIN"

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 34
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->setConnActionActive()V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->refreshUserInfo()V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->startLink()V

    .line 45
    return-void
.end method

.method public static logout()V
    .locals 4

    .prologue
    .line 93
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "logout: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "EVENT_LOGOUT"

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 96
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->refreshUserInfo()V

    .line 101
    return-void
.end method

.method public static refreshUserInfo()V
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "refreshUserInfo: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 222
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 224
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 225
    if-nez v0, :cond_0

    .line 226
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "refreshUserInfo: [ userInfo is null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "refreshUserInfo: [ userId is null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setFirstTimeResumeOrScreenOffed(Z)V
    .locals 0

    .prologue
    .line 250
    sput-boolean p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->c:Z

    .line 251
    return-void
.end method

.method public static uplinkData(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 180
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "uplinkData: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v0, "channel"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "push"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uplinkData: channel invalid [ channel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string/jumbo v0, "appId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "payload"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uplinkData: [ appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ appData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-nez v1, :cond_1

    .line 197
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    const-string/jumbo v1, "uplinkData: [ appData=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1000

    if-ge v2, v3, :cond_2

    .line 203
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->a:Ljava/lang/String;

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uplinkData: uplink data exceeded [ dataLen="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
