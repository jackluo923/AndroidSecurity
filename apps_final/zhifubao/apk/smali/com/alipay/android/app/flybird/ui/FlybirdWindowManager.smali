.class public Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;
.implements Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field private f:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

.field private j:I

.field private k:J

.field private l:Ljava/lang/Object;

.field private m:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

.field private n:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

.field private q:Landroid/content/BroadcastReceiver;

.field private r:Z

.field private s:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

    sput-object v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l:Ljava/lang/Object;

    iput-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->n:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    iput-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    iput-boolean v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->r:Z

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->n:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    return-object p1
.end method

.method static synthetic a(IILjava/lang/Object;I)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iput p0, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput p3, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    iput p1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iput-object p2, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "CallingPid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Ljava/lang/String;)Z
    .locals 9

    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;->a:[I

    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->k()V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->e()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k:J

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_1
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "param"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string/jumbo v2, "param"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "param"

    :goto_1
    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    :cond_4
    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "params"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "params"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    :cond_5
    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_6
    :goto_2
    const-string/jumbo v2, "l2rmode"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const-string/jumbo v3, "l2rmode"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->b(I)V

    :cond_7
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->e()Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "loadtxt"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "loadtxt"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-interface {v3, v4}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a([Ljava/lang/String;)V

    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->e()V

    :cond_9
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Z)V

    new-instance v2, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v2}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    iput v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    iput-object v3, v2, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v0, 0xb

    iput v0, v2, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v0, 0x7d3

    iput v0, v2, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    :cond_a
    :try_start_2
    const-string/jumbo v2, "params"
    :try_end_2
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a([Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_3
    array-length v0, v6

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v2, "param"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "param"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "nativeValidate"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string/jumbo v0, "nativeValidate"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    move v7, v0

    :goto_4
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const-string/jumbo v2, "fp"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    aget-object v0, v6, v0

    const-string/jumbo v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const/4 v5, 0x0

    const-string/jumbo v2, "fpProtocolType"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "fpProtocolType"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    const/4 v0, 0x1

    :goto_5
    move v5, v0

    :cond_c
    iget-object v8, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const-string/jumbo v0, "param"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "param"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    :goto_6
    const/4 v0, 0x1

    aget-object v2, v6, v0

    array-length v0, v6

    const/4 v1, 0x3

    if-le v0, v1, :cond_10

    const/4 v0, 0x3

    aget-object v0, v6, v0

    move-object v6, v0

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6307\u7eb9\u652f\u4ed8 isNativeValidate:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isSamsungFPPay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    if-eqz v5, :cond_11

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->r:Z

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/g;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->s:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/h;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/h;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_d

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/i;

    invoke-direct {v1, p0, v5, v6}, Lcom/alipay/android/app/flybird/ui/i;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "fingerprint_authenticate_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_f
    :try_start_4
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    goto/16 :goto_6

    :cond_10
    const/4 v0, 0x0

    move-object v6, v0

    goto/16 :goto_7

    :cond_11
    const/4 v0, 0x0

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    aget-object v0, v6, v0

    const-string/jumbo v2, "bl"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v0, "type"

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "version"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "data"

    const/4 v3, 0x2

    aget-object v3, v6, v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "param"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    :goto_9
    array-length v0, v6

    const/4 v3, 0x4

    if-le v0, v3, :cond_16

    const/4 v0, 0x4

    aget-object v0, v6, v0

    :goto_a
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Landroid/content/BroadcastReceiver;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v3, :cond_13

    :try_start_5
    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_13
    :goto_b
    :try_start_6
    new-instance v3, Lcom/alipay/android/app/flybird/ui/d;

    invoke-direct {v3, p0, v6, v1}, Lcom/alipay/android/app/flybird/ui/d;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;[Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    iput-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_14

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/alipay/android/app/flybird/ui/e;

    invoke-direct {v3, p0, v0}, Lcom/alipay/android/app/flybird/ui/e;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "bracelet_authenticate_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v1, v0

    goto :goto_9

    :cond_16
    const/4 v0, 0x0

    goto :goto_a

    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/Object;Landroid/app/Activity;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "fp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v2, "bizId"

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v2, "type"

    const/16 v3, 0x25a

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v2, "actionType"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "data"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "responseMsg"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "token"

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x5

    if-le v2, v3, :cond_17

    const-string/jumbo v2, "scanType"

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "tipsMsg"

    const/4 v3, 0x6

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_18
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v1, "bl"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.android.app.hardwarepay.bracelet.activity.HardwareHandleActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_19

    const-string/jumbo v2, "protocol"

    const-string/jumbo v3, "new"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "action"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "reqMsg"

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "submitMsgName"

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "bizId"

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_19
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->c()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->b()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1b

    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->b()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    const-string/jumbo v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_1a

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] type.getParams():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->e()V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v2, 0x10

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v2, 0x7d5

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    const-string/jumbo v2, "param"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getLastRequestTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;-><init>(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;J)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    :cond_1d
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a()Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->m:Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/alipay/android/app/flybird/ui/t;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/t;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/t;->start()V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/alipay/android/app/flybird/ui/c;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/c;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/c;->start()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "fp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v1, "bizId"

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    const/16 v2, 0x25b

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1e
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v2, "bizId"

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v2, "type"

    const/16 v3, 0x25c

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    :try_start_7
    const-string/jumbo v2, "data"

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const-string/jumbo v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :goto_d
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1f
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "bl"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v2, "type"

    const/16 v3, 0x1f7

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string/jumbo v0, "result"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    :cond_20
    :goto_e
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_21
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    :try_start_8
    const-string/jumbo v3, "data"

    const/4 v4, 0x2

    aget-object v0, v0, v4

    const-string/jumbo v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_f
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    const-string/jumbo v0, "result"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto :goto_e

    :cond_22
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "query"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string/jumbo v0, "result"

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto :goto_e

    :cond_23
    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "result"

    const/16 v2, 0xc8

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_e

    :cond_24
    const-string/jumbo v0, "result"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    goto/16 :goto_e

    :pswitch_c
    invoke-virtual {p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->b()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    array-length v1, v0

    if-lez v1, :cond_25

    const/4 v1, 0x0

    aget-object v1, v0, v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Landroid/content/Intent;)V

    :cond_25
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a([Ljava/lang/String;)V

    const/16 v1, 0xb

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x3ea

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->n:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-static {v0, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x3ec

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    goto/16 :goto_0

    :pswitch_11
    :try_start_9
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "phonenum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->f()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_f

    :catch_5
    move-exception v0

    goto/16 :goto_d

    :catch_6
    move-exception v3

    goto/16 :goto_b

    :cond_27
    move v7, v0

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method static synthetic b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method private b()V
    .locals 5

    const-class v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    instance-of v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->c()Lcom/alipay/android/app/IAlipayCallback;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->b()Lcom/alipay/android/app/IRemoteCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/android/app/IRemoteCallback;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v3, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    return v0
.end method

.method private c()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.UI_STATUS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.UI_STATUS_VALUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->n:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->p:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->o:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->r:Z

    return v0
.end method

.method static synthetic i(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->r:Z

    return v0
.end method

.method static synthetic j(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:I

    return v0
.end method

.method static synthetic k(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:I

    return v0
.end method

.method static synthetic l(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->j:I

    return v0
.end method

.method static synthetic m(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->c()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dispose()V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->a()Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/MiniSmsReaderHandler;->b()V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->c()V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->s:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->q:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "biz:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " EventType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " EventData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0, p2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;)V
    .locals 5

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    iput-object v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v0, 0xb

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v0, 0x7d3

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dispose  handler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/k;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispose(IILjava/lang/Object;I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dispose  handler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/l;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/l;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;IILjava/lang/Object;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->c()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v2, 0xf

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    new-instance v2, Lcom/alipay/android/app/flybird/ui/b;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/app/flybird/ui/b;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    iput-object v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->a(Lcom/alipay/android/app/base/message/MspMessage;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    goto :goto_0
.end method

.method public exit(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->c()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/util/Utils;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c()V

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x7d7

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iput-object p1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method

.method public getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->i:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    return-object v0
.end method

.method public getLastRequestTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->k:J

    return-wide v0
.end method

.method public onDataChange(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    return-void
.end method

.method public onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->a()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v3

    const-string/jumbo v0, ""

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "transition"

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a()[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    invoke-direct {p0, p1, v6, v3, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "toast"

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "dialog"

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    return v2
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b()V

    :cond_2
    instance-of v0, p1, Lcom/alipay/android/app/exception/NetErrorException;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "6004"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "mini_net_error"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    check-cast p1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-virtual {p1}, Lcom/alipay/android/app/exception/NetErrorException;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/n;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/flybird/ui/n;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "mini_net_error_weak"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v1

    const-string/jumbo v2, "6002"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/alipay/android/app/flybird/ui/m;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/m;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x2

    const-wide/16 v7, 0x1

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->d()V

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c()V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/o;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/o;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v2, "ex"

    const-string/jumbo v3, "createMainContainer"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    invoke-virtual {p0, v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/base/trade/Trade;->j()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    :cond_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-ne v1, v9, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    const-string/jumbo v0, "act"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    const/16 v0, 0x9c4

    const-string/jumbo v5, "time"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v0, "time"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-static {v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->c(J)V

    invoke-static {v7, v8}, Lcom/alipay/android/app/statistic/StatisticManager;->d(J)V

    invoke-static {v7, v8}, Lcom/alipay/android/app/statistic/StatisticManager;->b(J)V

    const-string/jumbo v1, "TOAST"

    invoke-static {v1}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/lang/String;)V

    const-string/jumbo v1, "msg"

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "img"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v5, Lcom/alipay/android/app/flybird/ui/p;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/alipay/android/app/flybird/ui/p;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/q;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/app/flybird/ui/q;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    int-to-long v5, v0

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_6

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Z)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(I)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    :cond_6
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->h()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->l()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_7
    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "msg"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "btns"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v1, v6}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    const-string/jumbo v3, "txt"

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "act"

    invoke-virtual {v4, v6}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v6

    new-instance v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v4, v6}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-static {v7, v8}, Lcom/alipay/android/app/statistic/StatisticManager;->c(J)V

    invoke-static {v7, v8}, Lcom/alipay/android/app/statistic/StatisticManager;->d(J)V

    invoke-static {v7, v8}, Lcom/alipay/android/app/statistic/StatisticManager;->b(J)V

    const-string/jumbo v6, "FRAME_DIALOG"

    invoke-static {v6}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v9, :cond_9

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "act"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    new-instance v6, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v6}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v6, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const-string/jumbo v1, ""

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->h()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->l()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v6

    if-le v6, v9, :cond_b

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    invoke-direct {v7}, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;-><init>()V

    iput-object v3, v7, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->a:Ljava/lang/String;

    iput-object v4, v7, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    if-ge v0, v5, :cond_a

    new-instance v3, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    invoke-direct {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    const-string/jumbo v7, "txt"

    invoke-virtual {v4, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->a:Ljava/lang/String;

    const-string/jumbo v7, "act"

    invoke-virtual {v4, v7}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    new-instance v7, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v7}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v7, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object v7, v3, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v2, v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const-string/jumbo v1, ""

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v7, v8}, Lcom/alipay/android/app/statistic/StatisticManager;->c(J)V

    invoke-static {v7, v8}, Lcom/alipay/android/app/statistic/StatisticManager;->d(J)V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->o()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/r;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/flybird/ui/r;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->h()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    if-eqz v4, :cond_e

    invoke-virtual {v5, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->l()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Z)V

    invoke-virtual {v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    :cond_e
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_10

    const-string/jumbo v0, ""

    :goto_4
    if-eqz v1, :cond_f

    const-string/jumbo v2, "fingerPay"

    invoke-virtual {v1, v2, v6}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/base/trade/Trade;->a(Z)V

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_5
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v8}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->n:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-static {v6, v7, v8, v0, v9}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->c(J)V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_11

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/s;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/s;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Lcom/alipay/android/app/base/trade/Trade;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catch_1
    move-exception v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "\u6a21\u677f\u68c0\u6d4b\u5f02\u5e38"

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_11
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g:I

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "\u6a21\u677f\u68c0\u6d4b\u9519\u8bef"

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public onReadSuccess(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    return-void
.end method

.method public onWindowLoaded(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-interface {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
