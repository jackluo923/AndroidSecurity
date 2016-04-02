.class Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

.field final synthetic val$needUI:Z

.field final synthetic val$userinfo:Lcom/taobao/android/sso/UserInfo;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;ZLcom/taobao/android/sso/UserInfo;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iput-boolean p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$needUI:Z

    iput-object p3, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$userinfo:Lcom/taobao/android/sso/UserInfo;

    iput-object p4, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    iput-object p5, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$needUI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;
    invoke-static {v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->access$000(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$userinfo:Lcom/taobao/android/sso/UserInfo;

    invoke-static {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->access$100(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Landroid/content/Context;Lcom/taobao/android/sso/UserInfo;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v1, v1, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmView:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    invoke-interface {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;->onConfirmUIShowed(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iput-object v0, v1, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmView:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v2, v2, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmView:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    iget-object v3, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$userinfo:Lcom/taobao/android/sso/UserInfo;

    iget-object v4, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->access$200(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Landroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;Lcom/taobao/android/sso/UserInfo;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->Show()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;->val$userinfo:Lcom/taobao/android/sso/UserInfo;

    invoke-interface {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;->onSsoLoginClicked(Lcom/taobao/android/sso/UserInfo;)V

    goto :goto_0
.end method
