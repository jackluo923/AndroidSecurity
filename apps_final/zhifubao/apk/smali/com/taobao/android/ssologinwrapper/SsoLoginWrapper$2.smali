.class Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

.field final synthetic val$accordingUserinfo:Lcom/taobao/android/sso/UserInfo;

.field final synthetic val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;Lcom/taobao/android/sso/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$2;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iput-object p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$2;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    iput-object p3, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$2;->val$accordingUserinfo:Lcom/taobao/android/sso/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$2;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$2;->val$accordingUserinfo:Lcom/taobao/android/sso/UserInfo;

    invoke-interface {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;->onSsoLoginClicked(Lcom/taobao/android/sso/UserInfo;)V

    return-void
.end method
