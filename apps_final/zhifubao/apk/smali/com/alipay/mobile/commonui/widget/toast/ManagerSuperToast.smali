.class public Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;
.super Landroid/os/Handler;


# static fields
.field private static a:Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;


# instance fields
.field private final b:Ljava/util/Queue;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->b:Ljava/util/Queue;

    return-void
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x415354    # 5.9992E-39f

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const v1, 0x445354

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getDuration()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->a(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;IJ)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;IJ)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3, p4}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected static declared-synchronized getInstance()Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;
    .locals 2

    const-class v1, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->a:Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->a:Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;

    invoke-direct {v0}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;-><init>()V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->a:Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected add(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->a()V

    return-void
.end method

.method protected cancelAllSuperToasts()V
    .locals 3

    const v0, 0x415354    # 5.9992E-39f

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->removeMessages(I)V

    const v0, 0x445354

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->removeMessages(I)V

    const v0, 0x525354

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->removeMessages(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->a()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getWindowManagerParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const v1, 0x525354

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getDuration()I

    move-result v2

    add-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->a(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;IJ)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->removeSuperToast(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x415354 -> :sswitch_1
        0x445354 -> :sswitch_0
        0x525354 -> :sswitch_2
    .end sparse-switch
.end method

.method protected removeSuperToast(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const v0, 0x445354

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->a(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;IJ)V

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getOnDismissListener()Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getOnDismissListener()Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$OnDismissListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$OnDismissListener;->onDismiss(Landroid/view/View;)V

    :cond_0
    return-void
.end method
