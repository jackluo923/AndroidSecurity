.class final Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserLoginActivity.java"


# static fields
.field private static final synthetic a:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "UserLoginActivity.java"

    const-class v2, Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.ali.user.mobile.login.ui.UserLoginActivity$BizNotifyReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;->a:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/ali/user/mobile/login/ui/UserLoginActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;->this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    .line 1
    sget-object v0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;->a:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v0, "BizNotifyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "intent:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "com.ali.user.login.biz.NOTIFYLOGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "currentStep"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "loginRes"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    const-string/jumbo v8, "BizNotifyReceiver"

    const-string/jumbo v9, "action:%s, step:%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v7, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;->this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    iget-object v8, v8, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v8

    const-string/jumbo v9, "BizNotifyReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\u5f53\u524dBackStackEntryCount:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;->this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    iget-object v8, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;->this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getLoginFragment(Ljava/lang/String;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_4

    const-string/jumbo v0, "UserLoginActivity"

    const-string/jumbo v1, "\u7f13\u5b58\u4e2d\u6ca1\u6709\u627e\u5230\u5bf9\u5e94\u7684fragment"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x1

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", cost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v0, v5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v8, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;->this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getLoginFragment(Ljava/lang/String;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;->this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-virtual {v8}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/ali/user/mobile/AliUserInit;->isAppDebug(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u767b\u9646fragment\u5207\u6362\u6709\u5f02\u5e382"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v8, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v9, "\u767b\u9646fragment\u5207\u6362\u6709\u5f02\u5e382"

    invoke-static {v8, v9}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "postFinish"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "UserLoginActivity"

    const-string/jumbo v8, "receive NotifyActions.LOGIN_POST_FINISH"

    invoke-static {v7, v8}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity$BizNotifyReceiver;->this$0:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mIsLoginSuccess:Z

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginPostFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_1
.end method
