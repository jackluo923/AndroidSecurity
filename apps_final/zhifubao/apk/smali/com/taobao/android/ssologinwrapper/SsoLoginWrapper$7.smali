.class Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$7;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$7;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$7;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->updateWhiteList()V
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
