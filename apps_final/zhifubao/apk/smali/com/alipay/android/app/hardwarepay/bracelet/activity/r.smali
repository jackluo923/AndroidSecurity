.class Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.app.hardwarepay.bracelet.activity.HardwareHandleActivity$6"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "arg0:arg1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x126

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    sget-object v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v7, Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;

    invoke-direct {v7, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;)V

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    new-instance v6, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v6, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const-string/jumbo v7, "result"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;I)I

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->i(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v6, Lcom/alipay/android/app/hardwarepay/bracelet/activity/u;

    invoke-direct {v6, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/u;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;)V

    invoke-virtual {v5, v6}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
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

    aget-object v2, v2, v10

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
    :try_start_1
    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->j(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "new"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "data"

    invoke-virtual {v6, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v6}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iget-object v7, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v5}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v7, "name"

    iget-object v8, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->b:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v7}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget-object v8, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v8}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->k(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)I

    move-result v8

    iput v8, v7, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x1

    invoke-virtual {v5}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v6

    iput-object v8, v7, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v5, 0xb

    iput v5, v7, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v5, 0x7d3

    iput v5, v7, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    :goto_1
    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->finish()V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v5, "data"

    invoke-virtual {v6, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v6}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iget-object v7, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/alipay/android/app/json/JSONObject;

    iget-object v7, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->b:Ljava/lang/String;

    invoke-direct {v5, v7}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "params"

    invoke-virtual {v5, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "params"

    const-string/jumbo v8, "params"

    invoke-virtual {v5, v8}, Lcom/alipay/android/app/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    :cond_2
    new-instance v5, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v5}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget-object v7, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v7}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->k(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)I

    move-result v7

    iput v7, v5, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->b:Ljava/lang/String;

    aput-object v8, v7, v6

    iput-object v7, v5, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v6, 0xb

    iput v6, v5, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v6, 0x3eb

    iput v6, v5, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto :goto_1

    :sswitch_2
    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v6, Lcom/alipay/android/app/hardwarepay/bracelet/activity/t;

    invoke-direct {v6, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/t;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;)V

    invoke-virtual {v5, v6}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_0
        0x71 -> :sswitch_2
    .end sparse-switch
.end method
