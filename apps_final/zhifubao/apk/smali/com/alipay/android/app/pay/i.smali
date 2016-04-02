.class final Lcom/alipay/android/app/pay/i;
.super Lcom/alipay/android/app/IRemoteServiceCallback$Stub;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/PageForBrowser;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/PageForBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/i;->a:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-direct {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final isHideLoadingScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final payEnd(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "mCallBack   startActivity"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    :try_start_0
    const-string/jumbo v0, "CallingPid"

    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/app/pay/i;->a:Lcom/alipay/android/app/pay/PageForBrowser;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/pay/PageForBrowser;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
