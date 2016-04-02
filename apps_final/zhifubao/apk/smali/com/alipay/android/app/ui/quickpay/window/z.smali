.class Lcom/alipay/android/app/ui/quickpay/window/z;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final f:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

.field final synthetic d:J

.field final synthetic e:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/ui/quickpay/window/z;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.ui.quickpay.window.MiniEventHandleHelper$12"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x46d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/window/z;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;[Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/event/ActionType;Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->e:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->b:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    iput-object p4, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    iput-wide p5, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->d:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/z;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "bracelet_authenticate_result"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v6, "result"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "type"

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "result"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "data"

    invoke-virtual {v0, v8}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x9

    if-ne v6, v8, :cond_2

    const/16 v6, 0x64

    if-eq v7, v6, :cond_0

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->e:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->e:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Activity;

    move-result-object v6

    new-instance v8, Lcom/alipay/android/app/ui/quickpay/window/aa;

    invoke-direct {v8, p0, v7}, Lcom/alipay/android/app/ui/quickpay/window/aa;-><init>(Lcom/alipay/android/app/ui/quickpay/window/z;I)V

    invoke-virtual {v6, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v6, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v6}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->a:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v6, v8, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->a:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v0, v0, v8

    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->a:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v0, v8}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->b:Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v8

    const/4 v0, 0x0

    const-string/jumbo v9, "params"

    invoke-virtual {v8, v9}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v0, "params"

    invoke-virtual {v8, v0}, Lcom/alipay/android/app/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    :cond_1
    new-instance v6, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v6}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget-object v9, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->c:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v9}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b()I

    move-result v9

    iput v9, v6, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    invoke-virtual {v8}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v0

    iput-object v9, v6, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v0, 0xb

    iput v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v0, 0x3eb

    iput v0, v6, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->d:J

    sub-long/2addr v8, v10

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-static {v0, v8, v9}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;J)V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/z;->e:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

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

    aget-object v2, v2, v12

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

    :catch_0
    move-exception v0

    goto :goto_0
.end method
