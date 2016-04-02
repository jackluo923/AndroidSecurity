.class final Lcom/alipay/android/app/hardwarepay/fingerprint/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/h;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/h;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->d:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/h;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/h;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget v3, v3, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    # invokes: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V

    return-void
.end method
