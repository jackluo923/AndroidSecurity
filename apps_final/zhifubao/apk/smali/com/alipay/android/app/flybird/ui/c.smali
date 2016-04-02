.class final Lcom/alipay/android/app/flybird/ui/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/c;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/c;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/c;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->f()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v2, v1, v0

    const-string/jumbo v0, "\u670d\u52a1\u534f\u8bae"

    array-length v3, v1

    if-le v3, v4, :cond_0

    aget-object v0, v1, v4

    :cond_0
    if-eqz v2, :cond_2

    const-string/jumbo v1, "alipays://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/c;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/c;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/c;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/c;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Landroid/content/Intent;)V

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/c;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->d()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/c;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
