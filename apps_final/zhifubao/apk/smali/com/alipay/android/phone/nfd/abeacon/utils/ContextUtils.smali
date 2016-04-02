.class public final Lcom/alipay/android/phone/nfd/abeacon/utils/ContextUtils;
.super Ljava/lang/Object;


# direct methods
.method public static final declared-synchronized a()Landroid/app/Application;
    .locals 2

    const-class v1, Lcom/alipay/android/phone/nfd/abeacon/utils/ContextUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
