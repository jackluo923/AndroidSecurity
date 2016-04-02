.class final Lcom/alipay/android/app/hardwarepay/fingerprint/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/n;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->b:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->c:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v3, "bizId"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->d:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->e:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toSubmit(Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x7d6

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/o;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->c:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "bizId"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
