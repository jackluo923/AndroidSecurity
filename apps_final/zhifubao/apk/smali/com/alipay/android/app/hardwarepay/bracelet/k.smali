.class final Lcom/alipay/android/app/hardwarepay/bracelet/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/i;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/i;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/k;->a:Lcom/alipay/android/app/hardwarepay/bracelet/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/k;->a:Lcom/alipay/android/app/hardwarepay/bracelet/i;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/i;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/k;->a:Lcom/alipay/android/app/hardwarepay/bracelet/i;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/i;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/k;->a:Lcom/alipay/android/app/hardwarepay/bracelet/i;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/i;->b:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/k;->a:Lcom/alipay/android/app/hardwarepay/bracelet/i;

    iget v3, v3, Lcom/alipay/android/app/hardwarepay/bracelet/i;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callbackWhenFailed(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    return-void
.end method
