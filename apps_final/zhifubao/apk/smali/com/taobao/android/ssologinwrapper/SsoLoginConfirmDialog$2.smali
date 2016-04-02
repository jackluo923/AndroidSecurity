.class Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$2;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$2;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->g:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->access$000(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$2;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->g:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->access$000(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$2;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->access$100(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
