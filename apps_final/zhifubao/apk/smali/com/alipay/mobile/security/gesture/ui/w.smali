.class final Lcom/alipay/mobile/security/gesture/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/GestureConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->a()Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, v2, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2, v5, v5}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Ljava/lang/String;)V

    const-string/jumbo v0, "convenient"

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->setOn(Ljava/lang/Integer;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/GestureConfig;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->setInEditMode(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->getBlackMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/ConvenientMode;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Lcom/alipay/mobile/security/gesture/data/ConvenientMode;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/w;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->setOn(Ljava/lang/Integer;)V

    goto :goto_1
.end method
