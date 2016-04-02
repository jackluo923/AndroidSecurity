.class Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$6;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

.field final synthetic val$param:Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$6;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iput-object p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$6;->val$param:Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$6;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$6;->val$param:Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;

    # invokes: Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;)Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;
    invoke-static {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->access$300(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;)Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
