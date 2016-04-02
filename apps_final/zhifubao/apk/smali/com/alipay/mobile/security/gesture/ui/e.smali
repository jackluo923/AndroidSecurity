.class final Lcom/alipay/mobile/security/gesture/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/e;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/e;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->g:Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->getBasePwdInputBox()Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnShowEnableOk(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
