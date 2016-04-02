.class Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

.field final synthetic val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

.field final synthetic val$userinfo:Lcom/taobao/android/sso/UserInfo;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;Lcom/taobao/android/sso/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iput-object p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    iput-object p3, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->val$userinfo:Lcom/taobao/android/sso/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v0, v0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmDialog:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->dismiss()V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    const-string/jumbo v1, "sso:cancel_clicked"

    invoke-interface {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;->onFailedResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChangeAccountLogin()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v0, v0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmDialog:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->dismiss()V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    const-string/jumbo v1, "sso:change_account_login"

    invoke-interface {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;->onFailedResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinished()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v0, v0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmDialog:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->dismiss()V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;->val$userinfo:Lcom/taobao/android/sso/UserInfo;

    invoke-interface {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;->onSsoLoginClicked(Lcom/taobao/android/sso/UserInfo;)V

    :cond_0
    return-void
.end method
