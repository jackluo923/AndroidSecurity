.class public Lcom/alipay/mobile/security/gesture/ui/GestureActivity;
.super Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

# interfaces
.implements Lcom/alipay/mobile/nfc/NFCResponsable;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field static l:Ljava/lang/String;

.field static m:Ljava/lang/String;


# instance fields
.field public final j:Ljava/lang/String;

.field k:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

.field private n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;

.field private t:Lcom/alipay/mobile/base/config/ConfigService;

.field private u:Ljava/lang/String;

.field private v:Z

.field private final w:Ljava/lang/String;

.field private x:Z

.field private y:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private z:Lcom/alipay/mobile/security/gesture/ui/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;-><init>()V

    const-string/jumbo v0, "GestureActivity"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->j:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->p:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->r:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->s:Landroid/os/Handler;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->k:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    iput-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->u:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->v:Z

    const-string/jumbo v0, "show_color_window"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->w:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->x:Z

    return-void
.end method

.method private a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "security"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->i()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v2, "\u5fd8\u8bb0\u624b\u52bf\u5bc6\u7801\uff0c\u8df3\u8f6c\u767b\u5f55\u524d\uff0c\u6e05\u9664\u7528\u6237\u7684\u514d\u767b\u6807\u8bb0\u548c\u624b\u52bf\u5bc6\u7801"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    const-string/jumbo v0, "false###switchAccount-GestureActivity"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c(Ljava/lang/String;)V

    const-string/jumbo v0, "setAutoLogin=false###switchAccount-GestureActivity"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureErrorNum(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mUserInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->k:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setHasGestureView(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "performance_gesture_set"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userInfo"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/util/SHA1;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->dynamicEncrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v3, "\u7528\u6237\u8bbe\u7f6e\u4e86\u624b\u52bf\uff0c\u66f4\u65b0\u6570\u636e\u5e93 \uff1a\u6ca1\u6709\u8df3\u8fc7\u3001\u624b\u52bf\u5bc6\u7801"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v3, "false"

    const-string/jumbo v4, "0"

    const/4 v5, 0x0

    const-string/jumbo v6, "convenient"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->A:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "setGestureView"

    const-string/jumbo v2, "setGesture"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->x:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v2, "send settingGestureSucessAction"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    const-string/jumbo v1, "state=settingGestureSucessAction"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v2, "\u5fd8\u8bb0\u624b\u52bf\u5bc6\u7801\uff0c\u8df3\u8f6c\u767b\u5f55\u524d\uff0c\u6e05\u9664\u7528\u6237\u7684\u514d\u767b\u6807\u8bb0\u548c\u624b\u52bf\u5bc6\u7801"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "false"

    const-string/jumbo v4, "0"

    const-string/jumbo v6, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mUserInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getmLockView()Lcom/alipay/mobile/security/gesture/component/LockView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/security/gesture/ui/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->z:Lcom/alipay/mobile/security/gesture/ui/a/a;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GestureActivity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private f()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureActivity"

    const-string/jumbo v3, "initIntentData()"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setChangeTime(Z)V

    iput-boolean v5, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->v:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->y:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->y:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->y:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const-string/jumbo v2, "GestureCacheGroup"

    const-string/jumbo v3, "GestureActivityParams"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v2, "setORcheck"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->v:Z

    const-string/jumbo v2, "canBack"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->o:Z

    const-string/jumbo v2, "GestureShowSkipBtn"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->r:Z

    const-string/jumbo v2, "preCheck"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->u:Ljava/lang/String;

    const-string/jumbo v2, "GestureSendBroadcast"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->x:Z

    :cond_0
    iget-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->v:Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "GestureActivity"

    const-string/jumbo v4, "initPattern(checkOrSetPattern)"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0, v1, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "GestureActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cachedUserInfo:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ";gesturepwd:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    if-nez v0, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->i()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->setUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->k:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setIsCheckGesture(Z)V

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->h()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v2, "\u8bbe\u7f6e\u624b\u52bf\u524d,\u7279\u5f81\u503c\u6821\u9a8c\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v2, "\u8bbe\u7f6e\u624b\u52bf\u524d,\u7279\u5f81\u503c\u6821\u9a8c\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/m;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/m;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->setOnPatternChangeListener(Lcom/alipay/mobile/security/gesture/component/m;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v0, v6, p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->TryToSetPattern(ZLcom/alipay/mobile/framework/app/ui/BaseActivity;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->t:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->t:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "GestureShipJumpBtn"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NO"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->t:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "GestureShipJumpBtn"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->setIsShowSkipButton(Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v2, "checkedGestureView setNeedAuthGesture true"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/i;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/i;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->setOnPatternCheckedListener(Lcom/alipay/mobile/security/gesture/component/n;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->checkPattern(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->checkGestureErrorAlert(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    goto/16 :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->i()V

    goto/16 :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->i()V

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->i()V

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->s:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/n;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/n;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/security/gesture/component/AlipayPattern;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000006"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->finish()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/j;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/j;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private h()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->u:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureActivity"

    const-string/jumbo v3, "\u7279\u5f81\u503c\u6821\u9a8c\u5408\u6cd5"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureActivity"

    const-string/jumbo v3, "\u7279\u5f81\u503c\u6821\u9a8c\u5931\u8d25"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureActivity"

    const-string/jumbo v3, "\u7279\u5f81\u503c\u6821\u9a8c\u5f02\u5e38"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000008"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->g()V

    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->c:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->H:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/k;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/ui/k;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/a/f;->a:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/security/gesture/ui/l;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/security/gesture/ui/l;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->p:Z

    return-void
.end method

.method private j()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "show_color_window"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v2, "closeGesturePwd"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGesturePwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkip(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkipStr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureOrbitHide(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureAppearMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->removeUserGestureData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->k:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setHasGestureView(Z)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "performance_gesture_check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->SLIDED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "checkGestureView"

    const-string/jumbo v2, "checkGesture"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000169"

    invoke-interface {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000181"

    invoke-interface {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000183"

    invoke-interface {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    const-string/jumbo v1, "state=validateGestureSucessAction"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->s:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/h;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->finish()V

    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v3, "oncreate"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->q:Z

    sget v0, Lcom/alipay/mobile/a/e;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->setContentView(I)V

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Z

    sget v0, Lcom/alipay/mobile/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v3, "initWidget"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->t:Lcom/alipay/mobile/base/config/ConfigService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f()V

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/ui/a/a;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->z:Lcom/alipay/mobile/security/gesture/ui/a/a;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/GestureConfig;

    const-string/jumbo v4, "convenient"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v5, "MM-1113-1"

    const-string/jumbo v6, "SSJMDQ"

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isChangeTime()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Y"

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/GestureConfig;->getBlackListAppNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v5, v6, v4, v3, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    const-string/jumbo v4, "N"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "MM-1113-1"

    const-string/jumbo v4, "SSJMDQ"

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isChangeTime()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Y"

    :goto_3
    invoke-static {v1, v4, v0, v3, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "N"

    goto :goto_3

    :cond_4
    move-object v1, v2

    move-object v3, v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v2, "\u624b\u52bf\u754c\u9762finish"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->p:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/a/f;->J:I

    invoke-static {p0, v0, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->p:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/o;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/o;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->setIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v2, "onNewIntent"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Z

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onPause()V

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->l:Ljava/lang/String;

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_STATUS_CHANGED"

    const-string/jumbo v1, "state=onPause"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onResume()V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_STATUS_CHANGED"

    const-string/jumbo v1, "state=onResume"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->q:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "isShowGestureConvenientPopupWindow before"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_2

    move v0, v3

    :cond_0
    :goto_0
    if-eqz v0, :cond_9

    const-string/jumbo v0, "isShowGestureConvenientPopupWindow show"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->setAct(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->showPopWindow(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isUserConvenientPopupShowed_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->m:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isUserCheckedShowPopup_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, " isUserCheckedShowPopup  isShowPopupWindow return false "

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_4
    sput-object v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->l:Ljava/lang/String;

    const-string/jumbo v0, "isShowPopupWindow begin"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_5

    const-string/jumbo v1, "YES"

    const-string/jumbo v2, "GestureConvenientModeValidEnable"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_2
    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isShowPopupWindow GestureConvenientModeValidEnabl main server config:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "isUpgradeSwitchConvenientEnable "

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v6, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/security/gesture/GestureConfig;->isUpgradeSwitchConvenientEnable(Ljava/lang/String;)Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isUpgradeSwitchConvenientEnable "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Ljava/lang/String;)V

    if-eqz v2, :cond_b

    if-eqz v0, :cond_7

    const-string/jumbo v5, "NO"

    const-string/jumbo v6, "GestureUpgradeDefaultConvenientAlertEnable"

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    if-eqz v0, :cond_8

    move v0, v3

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isUpgradeConvenientAlertEnable server value:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Ljava/lang/String;)V

    :goto_4
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v2, "switch to  convenient not alert"

    invoke-static {v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v3, "convenient"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureAppearMode(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_8
    move v0, v4

    goto :goto_3

    :cond_9
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isUserConvenientPopupShowed_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->setIsSetConvenientMode(Z)V

    const-string/jumbo v0, "show_color_window"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->n:Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->showPopWindow(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_b
    move v0, v3

    goto :goto_4
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
