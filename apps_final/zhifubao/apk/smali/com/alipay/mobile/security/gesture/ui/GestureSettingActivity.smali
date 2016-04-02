.class public Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# instance fields
.field protected a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field private final b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private l:Landroid/os/Handler;

.field private m:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

.field private n:Lcom/alipay/mobile/base/config/ConfigService;

.field private o:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private p:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "GestureSettingActivity"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->d:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->f:Z

    iput-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->h:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->i:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->j:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->l:Landroid/os/Handler;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->p:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

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

.method protected static a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGesturePwd(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkip(Z)V

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkipStr(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureErrorNum(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureAppearMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureSettingActivity"

    const-string/jumbo v2, "\u7528\u6237\u8df3\u8fc7\u4e86\u624b\u52bf\uff0c\u66f4\u65b0\u6570\u636e\u5e93\uff0c\u624b\u52bf\u5bc6\u7801\u8bbe\u7f6e\u4e3a\u7a7a\uff0c\u8bbe\u7f6e\u5df2\u8df3\u8fc7"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/bi;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/bi;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    const-string/jumbo v1, "state=skipGestureAction"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;Ljava/lang/String;)V
    .locals 9

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

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

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

    move-result-object v8

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureSettingActivity"

    const-string/jumbo v2, "\u7528\u6237\u8bbe\u7f6e\u4e86\u624b\u52bf\uff0c\u66f4\u65b0\u6570\u636e\u5e93 \uff1a\u6ca1\u6709\u8df3\u8fc7\u3001\u624b\u52bf\u5bc6\u7801"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v5

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v2, "false"

    const-string/jumbo v3, "0"

    const/4 v4, 0x0

    move-object v1, v8

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->A:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->l:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/security/gesture/ui/bj;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/security/gesture/ui/bj;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->b()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->n:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "YES"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->n:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "GestureConvenientModeValidEnable"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "YES"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->n:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "GestureDefaultConvenientEnable"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v7, "convenient"

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->n:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NO"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->n:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "GestureDefaultConvenientAlertEnable"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureSettingActivity"

    const-string/jumbo v2, "GestureDefaultConvenientAlertEnable is NO"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v1, "MM-1225-6"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "20000183"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    const-string/jumbo v1, "sztk"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->F:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->E:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/bh;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/ui/bh;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v2, "false"

    const-string/jumbo v3, "0"

    const/4 v4, 0x0

    move-object v1, v8

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureSettingActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    :try_start_1
    const-string/jumbo v5, "normal"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    move-object v5, v7

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private a()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureSettingActivity"

    const-string/jumbo v3, "\u7279\u5f81\u503c\u6821\u9a8c\u5408\u6cd5"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureSettingActivity"

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

    const-string/jumbo v2, "GestureSettingActivity"

    const-string/jumbo v3, "\u7279\u5f81\u503c\u6821\u9a8c\u5f02\u5e38"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->m:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->settingCallBack(Z)V

    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "setGestureView"

    const-string/jumbo v2, "setGesture"

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->h:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureSettingActivity"

    const-string/jumbo v2, "send settingGestureSucessAction"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    const-string/jumbo v1, "state=settingGestureSucessAction"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->d:Z

    return-void
.end method

.method private c()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000008"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureSettingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reflect startApp sourceId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " targetId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "doStartApp"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->d()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->finish()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)Lcom/alipay/mobile/framework/service/ext/security/GestureService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->m:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureSettingActivity"

    const-string/jumbo v3, "new setting onCreate"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/alipay/mobile/a/e;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/a/d;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->m:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->n:Lcom/alipay/mobile/base/config/ConfigService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->o:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureSettingActivity"

    const-string/jumbo v3, "initIntentData()"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setChangeTime(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->o:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->o:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const-string/jumbo v2, "GestureCacheGroup"

    const-string/jumbo v3, "GestureActivityParams"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v2, "canBack"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->e:Z

    const-string/jumbo v2, "GestureShowSkipBtn"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->f:Z

    const-string/jumbo v2, "preCheck"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->g:Ljava/lang/String;

    const-string/jumbo v2, "GestureSendBroadcast"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->h:Z

    const-string/jumbo v2, "GestureModify"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->i:Z

    const-string/jumbo v2, "GestureSetNeedAlert"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->j:Z

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureSettingActivity"

    const-string/jumbo v3, "initPattern(checkOrSetPattern)"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0, v1, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureSettingActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cachedUserInfo:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ";gesturepwd:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->k:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    if-nez v0, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c()V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->p:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setIsCheckGesture(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureSettingActivity"

    const-string/jumbo v2, "\u8bbe\u7f6e\u624b\u52bf\u524d,\u7279\u5f81\u503c\u6821\u9a8c\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureSettingActivity"

    const-string/jumbo v2, "\u8bbe\u7f6e\u624b\u52bf\u524d,\u7279\u5f81\u503c\u6821\u9a8c\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/bf;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/bf;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->setOnPatternChangeListener(Lcom/alipay/mobile/security/gesture/component/t;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->e:Z

    invoke-virtual {v0, v1, v4, p0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->TryToSetPattern(ZZLcom/alipay/mobile/framework/app/ui/BaseActivity;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->n:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->n:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "GestureShipJumpBtn"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "YES"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->n:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "GestureShipJumpBtn"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->setIsShowSkipButton(Z)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->setIsShowSkipButton(Z)V

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureSettingActivity"

    const-string/jumbo v2, "\u8bbe\u7f6e\u624b\u52bf\u754c\u9762finish"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->d:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/a/f;->J:I

    invoke-static {p0, v0, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->d:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->c:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/bg;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/bg;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_STATUS_CHANGED"

    const-string/jumbo v1, "state=onPause"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    const-string/jumbo v0, "com.alipay.mobile.GESTURE_STATUS_CHANGED"

    const-string/jumbo v1, "state=onResume"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
