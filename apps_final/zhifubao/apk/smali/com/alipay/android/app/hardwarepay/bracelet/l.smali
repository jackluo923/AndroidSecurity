.class final Lcom/alipay/android/app/hardwarepay/bracelet/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/l;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/l;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->progressDialog:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$800(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/l;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->progressDialog:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$800(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/l;->a:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->progressDialog:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$802(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    :cond_0
    return-void
.end method
