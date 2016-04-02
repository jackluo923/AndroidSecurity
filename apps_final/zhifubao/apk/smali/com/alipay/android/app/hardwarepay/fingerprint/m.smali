.class Lcom/alipay/android/app/hardwarepay/fingerprint/m;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final k:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic b:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic c:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field final synthetic f:Landroid/content/BroadcastReceiver;

.field final synthetic g:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/hardwarepay/fingerprint/m;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.hardwarepay.fingerprint.FingerPrintPay$5"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x18b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->k:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Landroid/content/Context;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Landroid/content/BroadcastReceiver;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->a:Lcom/alipay/android/app/json/JSONObject;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->b:Lcom/alipay/android/app/json/JSONObject;

    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->c:Lcom/alipay/android/app/json/JSONObject;

    iput-object p5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->f:Landroid/content/BroadcastReceiver;

    iput-object p8, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->g:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iput p9, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->h:I

    iput p10, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->i:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    sget-object v0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->k:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v0, "result"

    const/4 v6, 0x0

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "msp.fp.register.broadcaster"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I
    invoke-static {v6}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I
    invoke-static {v6}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    const/4 v7, 0x1

    # setter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z
    invoke-static {v6, v7}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$802(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z

    :cond_1
    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z
    invoke-static {v6}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$800(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z

    move-result v6

    if-nez v6, :cond_2

    const/16 v6, 0x71

    if-ne v0, v6, :cond_3

    :cond_2
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1300(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v6, 0x2

    if-le v0, v6, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->e()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->d:Landroid/content/Context;

    const-string/jumbo v7, "flybird_fp_retry_tips"

    invoke-static {v7}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v6, v7, v8}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    const/16 v6, 0x320

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(I)V

    :cond_3
    :goto_0
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v0, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", cost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v6, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->a:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v6, "name"

    iget-object v7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->b:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v8, "actionType"

    invoke-virtual {v7, v8}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "responseMsg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->c:Lcom/alipay/android/app/json/JSONObject;

    iget-object v7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->b:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v8, "responseMsg"

    invoke-virtual {v7, v8}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->c:Lcom/alipay/android/app/json/JSONObject;

    iget-object v7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->b:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v8, "token"

    invoke-virtual {v7, v8}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->c()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->d:Landroid/content/Context;

    const-string/jumbo v7, "flybird_fp_val_ok"

    invoke-static {v7}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v6, v7, v8}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    const/16 v6, 0x320

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(I)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v6, 0x4

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iget-object v7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->b:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v8, "bizId"

    invoke-virtual {v7, v8}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->c:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->a:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v9}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toSubmit(Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v6, v7, v8, v9}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    const/4 v6, 0x1

    # setter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z
    invoke-static {v0, v6}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1202(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # operator++ for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1308(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->e()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->d:Landroid/content/Context;

    const-string/jumbo v7, "flybird_fp_val_failed"

    invoke-static {v7}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, -0x10000

    invoke-virtual {v0, v6, v7, v8}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v6

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1400(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->d:Landroid/content/Context;

    const-string/jumbo v7, "flybird_fp_open"

    invoke-static {v7}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v7, 0x5dc

    const/high16 v8, -0x1000000

    invoke-virtual {v6, v0, v7, v8}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->g:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    iget v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->h:I

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;
    invoke-static {v8}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->i:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->d:Landroid/content/Context;

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(IILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/m;->j:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    # getter for: Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1400(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
