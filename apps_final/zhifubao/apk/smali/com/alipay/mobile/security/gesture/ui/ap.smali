.class final Lcom/alipay/mobile/security/gesture/ui/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitchListener(ZLandroid/view/View;)V
    .locals 5

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    const-string/jumbo v2, "MM-1031-1"

    const-string/jumbo v3, "20000169"

    const-string/jumbo v4, "SSMM"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "OPEN"

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)Lcom/alipay/mobile/base/config/ConfigService;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NO"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)Lcom/alipay/mobile/base/config/ConfigService;

    move-result-object v1

    const-string/jumbo v2, "SecurityGestureServiceShutdownEnabled"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->OPENPASSWORD:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Z)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "CLOSE"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->CLOSEPASSWORD:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ap;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Z)V

    goto :goto_1
.end method
