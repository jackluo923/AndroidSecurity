.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a()Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v2, "alipay_hw_buildmodle"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->k(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3, v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;ILjava/util/Properties;)I

    move-result v0

    const/16 v3, 0x69

    if-eq v0, v3, :cond_0

    const/16 v3, 0x6a

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->b()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v5, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;

    invoke-direct {v5, p0, v3, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3, v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;->a(Landroid/content/Context;ILjava/util/Properties;)I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/c;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->finish()V

    goto :goto_1

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->d(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method
