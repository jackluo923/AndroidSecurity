.class Lcom/alipay/android/app/flybird/ui/h;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final f:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/flybird/ui/h;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.flybird.ui.FlybirdWindowManager$14"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4d1

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/flybird/ui/h;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/h;->b:Lcom/alipay/android/app/json/JSONObject;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/h;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/android/app/flybird/ui/h;->d:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    sget-object v0, Lcom/alipay/android/app/flybird/ui/h;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string/jumbo v5, "result"

    const/16 v6, 0x270f

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x71

    if-ne v5, v6, :cond_3

    :cond_0
    const-string/jumbo v6, "false"

    new-instance v7, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v7}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v8, "maxretrytime"

    const-string/jumbo v9, "1"

    invoke-virtual {v7, v8, v9}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v5, :sswitch_data_0

    :goto_0
    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_7

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->e()V

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "flybird_fp_val_failed"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u8f6c\u5bc6\u7801\u652f\u4ed8["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/high16 v8, -0x10000

    invoke-virtual {v6, v5, v7, v8}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v5

    const/16 v6, 0x258

    invoke-virtual {v5, v6}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(I)V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    :cond_1
    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    :cond_2
    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v6, "fp"

    sget-object v7, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v8, "(\'status=0004\')"

    invoke-virtual {v5, v6, v7, v8}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    :cond_3
    :goto_1
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v5, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_1
    const-string/jumbo v5, "data"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "vendor"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "protocolVersion"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "protocolType"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "deviceId"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "fingerpwd"

    invoke-virtual {v7, v12, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "forcePwd"

    invoke-virtual {v7, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "vendor"

    invoke-virtual {v7, v5, v8}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "protocolVersion"

    invoke-virtual {v7, v5, v9}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "protocolType"

    invoke-virtual {v7, v5, v10}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "deviceId"

    invoke-virtual {v7, v5, v11}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v6, "fp"

    sget-object v8, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v9, "(\'status=0003\')"

    invoke-virtual {v5, v6, v8, v9}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v5

    const-string/jumbo v6, "flybird_fp_val_ok"

    invoke-static {v6}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/high16 v9, -0x1000000

    invoke-virtual {v5, v6, v8, v9}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->c()V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(I)V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/h;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/android/app/flybird/ui/h;->b:Lcom/alipay/android/app/json/JSONObject;

    invoke-static {v7, v8}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;)V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->e()V

    goto :goto_2

    :sswitch_2
    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    :cond_6
    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v6, "fp"

    sget-object v7, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v8, "(\'status=0009\')"

    invoke-virtual {v5, v6, v7, v8}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    goto/16 :goto_1

    :sswitch_3
    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->e()V

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "flybird_fp_val_failed"

    invoke-static {v8}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/high16 v8, -0x10000

    invoke-virtual {v6, v5, v7, v8}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    :cond_8
    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alipay/android/app/flybird/ui/h;->c:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, p1, v6, v7}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/alipay/android/app/flybird/ui/h;->d:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/h;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v6, "fp"

    sget-object v7, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v8, "(\'status=0005\')"

    invoke-virtual {v5, v6, v7, v8}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x66 -> :sswitch_2
        0x71 -> :sswitch_3
        0x79 -> :sswitch_0
    .end sparse-switch
.end method
