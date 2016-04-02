.class final Lcom/alipay/android/app/hardwarepay/bracelet/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/q;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/q;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/q;->b:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/q;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/q;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownload:Z
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$1000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/q;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/q;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/q;->b:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/q;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callbackWhenFailed(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/q;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownload:Z
    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$1002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Z)Z

    :cond_0
    return-void
.end method
