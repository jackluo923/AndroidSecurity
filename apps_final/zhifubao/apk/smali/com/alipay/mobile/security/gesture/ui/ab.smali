.class final Lcom/alipay/mobile/security/gesture/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/aa;

.field private final synthetic b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

.field private final synthetic c:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/aa;Lcom/alipay/mobile/security/gesture/data/ConfigItemData;Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iput-object p3, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->c:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v1, "convenient"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureAppearMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->c:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->getBlackMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/ConvenientMode;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Lcom/alipay/mobile/security/gesture/data/ConvenientMode;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->a()Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/service/j;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ab;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->notifyDataSetChanged()V

    goto :goto_0
.end method
