.class final Lcom/alipay/mobile/security/gesture/ui/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ao;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ao;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    const-string/jumbo v1, "UC-SECURITY-150515-01"

    const-string/jumbo v2, "20000006"

    const-string/jumbo v3, "safegobxpage"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ao;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ao;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V

    return-void
.end method
