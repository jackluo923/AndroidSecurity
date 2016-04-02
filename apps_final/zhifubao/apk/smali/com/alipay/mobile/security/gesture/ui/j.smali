.class final Lcom/alipay/mobile/security/gesture/ui/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->g(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/security/gesture/component/AlipayPattern;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "0"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/f;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "setGestureView"

    const-string/jumbo v3, "skipButton"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/j;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    return-void
.end method
