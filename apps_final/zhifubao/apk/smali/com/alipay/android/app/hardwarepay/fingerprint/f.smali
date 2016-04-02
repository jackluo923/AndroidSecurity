.class final Lcom/alipay/android/app/hardwarepay/fingerprint/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/f;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/f;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->d:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/f;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/f;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget v3, v3, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    # invokes: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V

    return-void
.end method
