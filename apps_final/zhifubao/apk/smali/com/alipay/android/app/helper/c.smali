.class final Lcom/alipay/android/app/helper/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(I)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/android/app/tid/TidInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(I)V

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(I)V

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/alipay/android/app/helper/TidHelper;->a(I)V

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method
