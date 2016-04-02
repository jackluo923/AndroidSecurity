.class final Lcom/alipay/android/app/hardwarepay/bracelet/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/app/hardwarepay/bracelet/f;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/f;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->a:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->b:I

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Landroid/app/Activity;

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget v5, v5, Lcom/alipay/android/app/hardwarepay/bracelet/f;->c:I

    # invokes: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->showConfirmDialogToDownload(Ljava/lang/String;ILandroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)Landroid/app/Dialog;
    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$600(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Ljava/lang/String;ILandroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/h;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Landroid/app/Activity;

    const-string/jumbo v2, "mini_cannot_get_download_url"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget v3, v3, Lcom/alipay/android/app/hardwarepay/bracelet/f;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callbackWhenFailed(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    goto :goto_0
.end method
