.class Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$1;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$1;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->dismiss()V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$1;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->g:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->access$000(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$1;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->g:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->access$000(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
