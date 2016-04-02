.class public Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;
.super Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "gesture_password_setting"
.end annotation


# static fields
.field private static synthetic u:[I


# instance fields
.field protected j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gestureState"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gestureOrbit"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "modifyGesturePassword"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "forgetGesturePassword"
    .end annotation
.end field

.field protected n:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gestureOperationMode"
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

.field private q:Z

.field private r:Lcom/alipay/mobile/base/config/ConfigService;

.field private s:Ljava/lang/String;

.field private t:Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;-><init>()V

    const-string/jumbo v0, "GesturePasswordSetActivity"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->o:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->NONE:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->p:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->q:Z

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/am;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/ui/am;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->t:Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://baoxian.alipay.com/zhx/m/handsecurityview.htm"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000067"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GesturePasswordSetActivity"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->p:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Z)V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->g()[I

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->p:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->MODIFYPASSWORD:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->p:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->t:Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->verifyGesture(ZLcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->t:Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->verifyGesture(ZLcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->p:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->a:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/au;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/au;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alipay/mobile/a/f;->o:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/security/gesture/ui/av;

    invoke-direct {v6, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/av;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Z)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureOrbitHide(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GesturePasswordSetActivity"

    const-string/jumbo v4, "gestureOrbit set error"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v2

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->q:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "IN"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void

    :cond_1
    const-string/jumbo v0, "OUT"

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)Lcom/alipay/mobile/base/config/ConfigService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->r:Lcom/alipay/mobile/base/config/ConfigService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->G:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u597d\u7684\uff0c\u8fd9\u5c31\u53bb\u770b"

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/ao;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/ui/ao;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method private d(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "canBack"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "GestureShowSkipBtn"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "GestureSendBroadcast"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "GestureModify"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    new-instance v2, Lcom/alipay/mobile/security/gesture/ui/an;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/gesture/ui/an;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "GestureSetNeedAlert"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GesturePasswordSetActivity"

    const-string/jumbo v2, "gestureService is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->e()V

    goto :goto_1
.end method

.method static synthetic f()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/GestureConfig;->startGestureConfigActivity()V

    return-void
.end method

.method private static synthetic g()[I
    .locals 3

    sget-object v0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->u:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->values()[Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->CLOSEPASSWORD:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->FORGETPASSWORD:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->HIDEORBIT:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->MODIFYPASSWORD:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->NONE:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->OPENPASSWORD:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->SETMODE:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->SHOWORBIT:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->u:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected a(Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Z)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->g()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->p:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected b(Z)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GesturePasswordSetActivity"

    const-string/jumbo v4, "startLogin set NeedAuthGesture false, NeedVerifyGesture true"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000184"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected c(Z)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GesturePasswordSetActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onVerifyGestureResult: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->p:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->g()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->p:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->l:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->m:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGesturePwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkip(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureSkipStr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureOrbitHide(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureAppearMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/security/gesture/GestureConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->removeUserGestureData(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_0

    invoke-direct {p0, v6}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final d()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->m:Lcom/alipay/mobile/commonui/widget/APTableView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->q:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setIsFromInside(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/ap;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/ap;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/aq;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/aq;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/ar;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/ar;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->l:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/as;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/as;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->m:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/at;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/at;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected e()V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0, v7, v7}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "GesturePasswordSetActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mUseInfo: "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->l:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->m:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "not null"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureOrbitHide()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->r:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "YES"

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->r:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v3, "GestureConvenientModeValidEnable"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v7, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->s:Ljava/lang/String;

    const-string/jumbo v0, "convenient"

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->v:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->s:Ljava/lang/String;

    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->l:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->m:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->r:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->s:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    const-string/jumbo v0, "convenient"

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureAppearMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->m:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setVisibility(I)V

    goto/16 :goto_1
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

.method public onBackPressed()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onBackPressed()V

    const-string/jumbo v0, "MM-1031-6"

    const-string/jumbo v1, "20000169"

    const-string/jumbo v2, "SSMMFH"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GesturePasswordSetActivity"

    const-string/jumbo v2, "onBackPressed()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GesturePasswordSetActivity"

    const-string/jumbo v2, "after close gesture and finish gesture app"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000006"

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->validateGesture()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->r:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "isFromInside"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->q:Z

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onResume()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->e()V

    return-void
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
