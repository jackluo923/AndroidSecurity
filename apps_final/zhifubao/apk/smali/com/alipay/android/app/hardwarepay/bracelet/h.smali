.class final Lcom/alipay/android/app/hardwarepay/bracelet/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/g;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownloadService:Z
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$700(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/g;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->cancelDownloadService:Z
    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$702(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/g;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/f;->e:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/g;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/f;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/g;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/h;->a:Lcom/alipay/android/app/hardwarepay/bracelet/g;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/bracelet/g;->c:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget v3, v3, Lcom/alipay/android/app/hardwarepay/bracelet/f;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callbackWhenFailed(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    :cond_0
    return-void
.end method
