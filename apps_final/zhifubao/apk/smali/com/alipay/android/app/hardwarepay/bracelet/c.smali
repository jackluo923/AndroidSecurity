.class final Lcom/alipay/android/app/hardwarepay/bracelet/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/down/FileDownloadService$IDownloadListener;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownload:Z
    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$1002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->receiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$1100(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/hardwarepay/bracelet/d;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/c;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownload:Z
    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$1002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
