.class public Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;
.implements Lcom/alipay/android/app/ui/quickpay/data/FrameChangeObserver;
.implements Lcom/alipay/android/app/ui/quickpay/event/OnFormEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager$1;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

.field private e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

.field private k:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->k:J

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f:I

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->g:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b:Ljava/lang/String;

    const-string/jumbo v0, "source_id"

    invoke-static {v0, p2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->i:Ljava/lang/String;

    const-string/jumbo v0, "trade_no"

    invoke-static {v0, p2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->j:Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->j:Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a(Lcom/alipay/android/app/ui/quickpay/data/FrameChangeObserver;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "\""

    const-string/jumbo v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v6, v5

    if-le v6, v7, :cond_2

    aget-object v6, v5, v2

    aget-object v5, v5, v7

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "CallingPid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->k()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IFormShower;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f:I

    return v0
.end method

.method static synthetic h(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    return-object v0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->dispose()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    const-class v0, Lcom/alipay/android/app/ui/quickpay/window/MiniPayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    instance-of v0, v0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->c()Lcom/alipay/android/app/IAlipayCallback;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->b()Lcom/alipay/android/app/IRemoteCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/android/app/IRemoteCallback;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-class v1, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    const/4 v0, 0x0

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, v1, :cond_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " waitForContainer host "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const-wide/16 v2, 0x14

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x64

    if-lt v0, v2, :cond_2

    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/Trade;->g()V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;I)V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "can not use exit cmd(19)"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->j:Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->d()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->k:J

    return-void
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " onFrameChanged  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->a()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->l()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->s()V

    const-string/jumbo v3, "form_name"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    :cond_3
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->b()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->b(I)V

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;->t()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(I)V

    instance-of v5, p1, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    if-eqz v5, :cond_4

    check-cast p1, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->f()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->b(Z)V

    :cond_4
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/json/JSONObject;)V

    :cond_5
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->l()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/ay;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/app/ui/quickpay/window/ay;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-nez v4, :cond_2

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->k()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "form"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "onload"

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->d(Lcom/alipay/android/app/json/JSONObject;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->l()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/util/JsonUtil;->b(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v1, "subforms"

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->b(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v1, "guideform"

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->c(Lcom/alipay/android/app/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/aw;

    invoke-direct {v1, p0, v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/aw;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->d(Lcom/alipay/android/app/json/JSONObject;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->d(Lcom/alipay/android/app/json/JSONObject;)V

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v1, "subforms"

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->b(Lcom/alipay/android/app/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->l()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;)V

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/ax;

    invoke-direct {v1, p0, v0, v2}, Lcom/alipay/android/app/ui/quickpay/window/ax;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "msg"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    const-string/jumbo v1, "msg"

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->l()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->j()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Success:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v1, v2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_0
        0x4 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Lcom/alipay/android/app/ui/quickpay/data/MiniWindowData;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-interface {v0, p0}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Lcom/alipay/android/app/ui/quickpay/event/OnFormEventListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/util/Utils;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x3f7

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    iput-object p1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->l()V

    :cond_1
    instance-of v0, p1, Lcom/alipay/android/app/exception/NetErrorException;

    if-eqz v0, :cond_4

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

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "6004"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "mini_net_error"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-virtual {p1}, Lcom/alipay/android/app/exception/NetErrorException;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/ba;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/ba;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_3
    const-string/jumbo v0, "mini_net_error_weak"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v1

    const-string/jumbo v2, "6002"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/az;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/az;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager$1;->a:[I

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->k()V

    :cond_1
    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->a()Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;

    move-result-object v1

    const-string/jumbo v2, "6001"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ResultCodeInstance;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->j:Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/data/FrameStack;->a()Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Exit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, ""

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Exit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v3}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Back:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f:I

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v2, 0xb

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v2, 0x3ea

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h:Ljava/lang/String;

    return-object v0
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

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/av;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/av;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/alipay/android/app/ui/quickpay/data/FrameStack;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->j:Lcom/alipay/android/app/ui/quickpay/data/FrameStack;

    return-object v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->k:J

    return-wide v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 3

    const/16 v2, 0xa

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    iput v2, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x3ed

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method

.method public final j()V
    .locals 4

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->f:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v1, 0xb

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x3fa

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method
