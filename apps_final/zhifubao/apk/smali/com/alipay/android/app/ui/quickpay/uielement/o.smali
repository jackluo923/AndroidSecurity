.class Lcom/alipay/android/app/ui/quickpay/uielement/o;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/ui/quickpay/uielement/o;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.ui.quickpay.uielement.UIFingerPwd$2"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    const/16 v6, 0x270f

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const/4 v0, 0x0

    sparse-switch v6, :sswitch_data_0

    const-string/jumbo v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v6, "mini_fp_validate_failuer_for"

    invoke-static {v6}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->d(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->d(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)V

    :cond_1
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

    :sswitch_0
    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    const-string/jumbo v7, "data"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    const-string/jumbo v7, "vendor"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    const-string/jumbo v7, "protocolVersion"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->c(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    const-string/jumbo v7, "protocolType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->d(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    const-string/jumbo v7, "deviceId"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->e(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    const-string/jumbo v7, "true"

    invoke-static {v6, v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->f(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/alipay/android/app/ui/quickpay/uielement/p;

    invoke-direct {v7, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/p;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/o;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v6, "mini_fp_validate_failuer"

    invoke-static {v6}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v6, "mini_fp_no_open_pay"

    invoke-static {v6}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/o;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;

    invoke-static {v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UIFingerPwd;)Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "mini_fp_validate_failuer_for"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0x66 -> :sswitch_2
        0x67 -> :sswitch_4
        0x79 -> :sswitch_1
    .end sparse-switch
.end method
