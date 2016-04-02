.class final Lcom/alipay/mobile/security/gesture/ui/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bi;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bi;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bi;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->e(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bi;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bi;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bi;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bi;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bi;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "setGestureView"

    const-string/jumbo v3, "skipButton"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bi;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->f(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->settingCallBack(Z)V

    return-void
.end method
