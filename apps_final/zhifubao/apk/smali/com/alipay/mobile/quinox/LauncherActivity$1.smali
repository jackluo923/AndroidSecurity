.class Lcom/alipay/mobile/quinox/LauncherActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$1;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$1;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$000(Lcom/alipay/mobile/quinox/LauncherActivity;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getTarget()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getMicroApplicationContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$1;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$100(Lcom/alipay/mobile/quinox/LauncherActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "attachMicroApplicationContext"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$1;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # getter for: Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$100(Lcom/alipay/mobile/quinox/LauncherActivity;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getTopActivity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v3, v0, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "updateActivity"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherActivity$1;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "LauncherActivity.postInit(): boot finish, go to start entry app."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$1;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->postInit()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
