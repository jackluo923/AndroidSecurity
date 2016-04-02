.class final Lcom/alipay/android/app/hardwarepay/fingerprint/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic e:I

.field final synthetic f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Landroid/content/Context;ILcom/alipay/android/app/json/JSONObject;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->b:Landroid/content/Context;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->c:I

    iput-object p5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->d:Lcom/alipay/android/app/json/JSONObject;

    iput p6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->b:Landroid/content/Context;

    iget v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->c:I

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->properties:Ljava/util/Properties;
    invoke-static {v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(Landroid/content/Context;ILjava/util/Properties;)I

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->d:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;
    invoke-static {v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->c:I

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->f:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$400(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method
