.class public final Lcom/alipay/android/app/display/windows/WindowsManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/display/event/OnContainerEventListener;
.implements Lcom/alipay/android/lib/plusin/ui/IWindowManager;


# instance fields
.field private a:Lcom/alipay/android/app/data/BizUiData;

.field private b:Lcom/alipay/android/app/data/DataProcessor;

.field private c:Lcom/alipay/android/app/display/windows/IContainer;

.field private d:Lcom/alipay/android/app/display/windows/MspWindow;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/windows/WindowsManager;)Lcom/alipay/android/app/display/windows/IContainer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/display/windows/MspWindow;

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->f:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/display/windows/MspWindow;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->a:Lcom/alipay/android/app/data/BizUiData;

    iget-object v2, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/data/BizUiData;Lcom/alipay/android/app/script/IWindowScriptable;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    instance-of v0, v0, Lcom/alipay/android/app/display/uielement/IElementFocusChanged;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    check-cast v0, Lcom/alipay/android/app/display/uielement/IElementFocusChanged;

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/uielement/IElementFocusChanged;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p1, :cond_2

    :cond_1
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->b:Lcom/alipay/android/app/data/DataProcessor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->b:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    :cond_2
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "can not use exit cmd"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->a:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->a()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->a:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->b()Lcom/alipay/android/app/IRemoteCallback;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->e:Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, Lcom/alipay/android/app/IRemoteCallback;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "CallingPid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/app/display/event/MspEventArgs;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/alipay/android/app/display/event/MspEventArgs;->getEventType()Lcom/alipay/android/app/display/event/EventType;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/display/event/EventType;->Back:Lcom/alipay/android/app/display/event/EventType;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->b:Lcom/alipay/android/app/data/DataProcessor;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->b:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->f:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/android/app/display/windows/h;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/display/windows/h;-><init>(Lcom/alipay/android/app/display/windows/WindowsManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "forbidden"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->b:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->g()Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/android/app/display/event/MspEventArgs;->getEventType()Lcom/alipay/android/app/display/event/EventType;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Loaded:Lcom/alipay/android/app/display/event/EventType;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->g:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/uielement/IUIElement;Lcom/alipay/android/app/display/event/MspEventArgs;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/app/display/windows/WindowsManager;)Lcom/alipay/android/app/display/windows/MspWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    return-object v0
.end method

.method private b()V
    .locals 1

    const-class v0, Lcom/alipay/android/app/pay/TransContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/windows/WindowsManager;->a(Ljava/lang/String;)V

    const-class v0, Lcom/alipay/android/app/pay/TransContainer;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/display/windows/WindowsManager;->a(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/data/BizUiData;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->a:Lcom/alipay/android/app/data/BizUiData;

    return-void
.end method

.method public final a(Lcom/alipay/android/app/data/DataProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->b:Lcom/alipay/android/app/data/DataProcessor;

    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/WindowsManager;->a()V

    return-void
.end method

.method public final declared-synchronized a(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/lib/plusin/ui/WindowData;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;->c()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/WindowsManager;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/alipay/android/lib/plusin/ui/WindowData;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/data/Orientation;->LeftInAndRightOut:Lcom/alipay/android/app/data/Orientation;

    :goto_1
    check-cast p2, Lcom/alipay/android/app/data/WindowFrameData;

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->b:Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {p2}, Lcom/alipay/android/app/data/WindowFrameData;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_2
    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/WindowsManager;->a()V

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-virtual {v1, p2}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/data/WindowFrameData;)Lcom/alipay/android/app/display/windows/UIWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/display/windows/UIWindow;->a()Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "window data error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/android/app/data/WindowFrameData;->k()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "msp_debug_win_data_error"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/alipay/android/app/data/Orientation;->RightInAndLeftOut:Lcom/alipay/android/app/data/Orientation;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/windows/MspWindow;->dispose()V

    :cond_2
    new-instance v1, Lcom/alipay/android/app/display/windows/MspWindow;

    iget-object v2, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->f:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/display/windows/MspWindow;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/alipay/android/app/data/WindowFrameData;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const-class v2, Lcom/alipay/android/app/pay/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    instance-of v3, v3, Lcom/alipay/android/app/pay/MainActivity;

    if-nez v3, :cond_5

    :cond_4
    invoke-direct {p0, v2}, Lcom/alipay/android/app/display/windows/WindowsManager;->a(Ljava/lang/String;)V

    const-class v2, Lcom/alipay/android/app/pay/MainActivity;

    invoke-direct {p0, v2}, Lcom/alipay/android/app/display/windows/WindowsManager;->a(Ljava/lang/Class;)V

    :cond_5
    iget-object v2, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->f:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/android/app/display/windows/f;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/android/app/display/windows/f;-><init>(Lcom/alipay/android/app/display/windows/WindowsManager;Lcom/alipay/android/app/display/windows/UIWindow;Lcom/alipay/android/app/data/Orientation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/WindowsManager;->b()V

    :cond_6
    iget-object v2, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->f:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/android/app/display/windows/g;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/android/app/display/windows/g;-><init>(Lcom/alipay/android/app/display/windows/WindowsManager;Lcom/alipay/android/app/display/windows/UIWindow;Lcom/alipay/android/app/data/Orientation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/alipay/android/app/data/DataProcessor;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/WindowsManager;->b()V

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->b:Lcom/alipay/android/app/data/DataProcessor;

    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/WindowsManager;->a()V

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-interface {v0}, Lcom/alipay/android/app/display/windows/IContainer;->dispose()V

    :cond_0
    check-cast p1, Lcom/alipay/android/app/display/windows/IContainer;

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-interface {v0, p0}, Lcom/alipay/android/app/display/windows/IContainer;->a(Lcom/alipay/android/app/display/event/OnContainerEventListener;)V

    invoke-direct {p0}, Lcom/alipay/android/app/display/windows/WindowsManager;->a()V

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->a:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z
    .locals 1

    check-cast p2, Lcom/alipay/android/app/display/event/MspEventArgs;

    invoke-direct {p0, p2}, Lcom/alipay/android/app/display/windows/WindowsManager;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)Z

    move-result v0

    return v0
.end method

.method public final dispose()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    invoke-interface {v0}, Lcom/alipay/android/app/display/windows/IContainer;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->dispose()V

    :cond_1
    iput-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->c:Lcom/alipay/android/app/display/windows/IContainer;

    iput-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->a:Lcom/alipay/android/app/data/BizUiData;

    iput-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->b:Lcom/alipay/android/app/data/DataProcessor;

    iput-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->d:Lcom/alipay/android/app/display/windows/MspWindow;

    iput-object v1, p0, Lcom/alipay/android/app/display/windows/WindowsManager;->f:Landroid/os/Handler;

    return-void
.end method
