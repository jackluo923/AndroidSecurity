.class final Lcom/alipay/android/app/hardwarepay/fingerprint/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Landroid/content/Context;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->d:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->d:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->properties:Ljava/util/Properties;
    invoke-static {v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/util/Properties;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(Landroid/content/Context;ILjava/util/Properties;)I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_0

    new-instance v2, Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/d;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/c;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->b()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->c()I

    move-result v2

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    if-eqz v2, :cond_1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x4

    aget-object v1, v1, v2

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->d:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    const/4 v2, 0x0

    # setter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->iscancel:Z
    invoke-static {v1, v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$702(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z

    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/g;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method
