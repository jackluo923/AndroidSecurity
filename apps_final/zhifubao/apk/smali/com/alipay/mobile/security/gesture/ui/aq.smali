.class final Lcom/alipay/mobile/security/gesture/ui/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/aq;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitchListener(ZLandroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/aq;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->SHOWORBIT:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;)V

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/aq;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    const-string/jumbo v2, "MM-1031-2"

    const-string/jumbo v3, "20000169"

    const-string/jumbo v4, "SSMMXSSS"

    if-eqz p1, :cond_1

    const-string/jumbo v0, "SHOW"

    :goto_1
    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/aq;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/aq;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/aq;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    sget-object v1, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;->HIDEORBIT:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity$BizType;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "HIDE"

    goto :goto_1
.end method
