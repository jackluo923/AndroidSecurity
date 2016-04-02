.class final Lcom/alipay/mobile/security/gesture/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/c;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/c;->a:Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->f:Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->getBasePwdInputBox()Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->hideInputMethod()V

    return-void
.end method
