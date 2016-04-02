.class Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

.field final synthetic val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$1;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iput-object p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$1;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$1;->val$listener:Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;

    const-string/jumbo v1, "sso:no_acount_matched"

    invoke-interface {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;->onFailedResult(Ljava/lang/String;)V

    return-void
.end method
