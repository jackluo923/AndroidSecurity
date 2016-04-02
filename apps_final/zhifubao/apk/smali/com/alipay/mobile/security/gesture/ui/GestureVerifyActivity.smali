.class public Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;
.super Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "alipay_pattern_verify"
.end annotation


# instance fields
.field protected j:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "topTextView"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/security/gesture/component/LockView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "lockView"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "bottomTextView"
    .end annotation
.end field

.field private final m:Ljava/lang/String;

.field private n:Z

.field private final o:I

.field private p:Landroid/view/animation/Animation;

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;-><init>()V

    const-string/jumbo v0, "GestureVerifyActivity"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->m:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->n:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->p:Landroid/view/animation/Animation;

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/bk;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/ui/bk;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->q:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureErrorNum(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->k:Lcom/alipay/mobile/security/gesture/component/LockView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->k:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->k:Lcom/alipay/mobile/security/gesture/component/LockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/LockView;->setIsCheckError(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->q:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureVerifyActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureVerifyActivity"

    const-string/jumbo v2, "the only way to set NeedVerifyGesture false"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    move-object v7, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureVerifyActivity"

    const-string/jumbo v2, "\u5fd8\u8bb0\u624b\u52bf\u5bc6\u7801\uff0c\u8df3\u8f6c\u767b\u5f55\u524d\uff0c\u6e05\u9664\u7528\u6237\u7684\u514d\u767b\u6807\u8bb0\u548c\u624b\u52bf\u5bc6\u7801"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "false"

    const-string/jumbo v4, "0"

    const-string/jumbo v6, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureVerifyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mUserInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->b()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->L:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/bm;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/ui/bm;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;)V

    move-object v0, p0

    move-object v2, v7

    move-object v5, v8

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    move-object v7, v0

    goto/16 :goto_0
.end method

.method private static b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureErrorNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :try_start_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->p:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->p:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->p:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureVerifyActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->verifyCallBack(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->finish()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000008"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureVerifyActivity"

    const-string/jumbo v2, "startLoginApp set NeedVerifyGesture true"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->finish()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/bo;

    invoke-direct {v4, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/bo;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/bp;

    invoke-direct {v4, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/bp;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected a(ZZ)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(ZZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->b(Z)V

    return-void
.end method

.method protected final d()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v1, 0x0

    const/high16 v6, 0x43960000    # 300.0f

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0, v1, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->e()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->h:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureVerifyActivity"

    const-string/jumbo v2, "GestureVerifyActivity setNeedVerifyGesture true"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/bl;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/bl;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureVerifyActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "display width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->k:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2, p0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureVerifyActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "lockview width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->k:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->k:Lcom/alipay/mobile/security/gesture/component/LockView;

    new-instance v2, Lcom/alipay/mobile/security/gesture/ui/bn;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/security/gesture/ui/bn;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/component/LockView;->setOnLockInputListener(Lcom/alipay/mobile/security/gesture/component/v;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->n:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onBackPressed()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->b(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->n:Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->n:Z

    :cond_0
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
