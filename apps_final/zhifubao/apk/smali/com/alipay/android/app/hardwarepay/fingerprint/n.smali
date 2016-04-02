.class final Lcom/alipay/android/app/hardwarepay/fingerprint/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field final synthetic c:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic d:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic e:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic f:Landroid/content/BroadcastReceiver;

.field final synthetic g:Landroid/content/BroadcastReceiver;

.field final synthetic h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Landroid/content/Context;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->b:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->c:Lcom/alipay/android/app/json/JSONObject;

    iput-object p5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->d:Lcom/alipay/android/app/json/JSONObject;

    iput-object p6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->e:Lcom/alipay/android/app/json/JSONObject;

    iput-object p7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->f:Landroid/content/BroadcastReceiver;

    iput-object p8, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->g:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-direct {v1}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;-><init>()V

    # setter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$902(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a:Landroid/content/Context;

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a:Landroid/content/Context;

    const-string/jumbo v4, "flybird_fp_open"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/app/hardwarepay/fingerprint/o;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/o;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/n;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Landroid/content/Context;ILjava/lang/String;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;)Landroid/app/Dialog;

    goto :goto_0
.end method
