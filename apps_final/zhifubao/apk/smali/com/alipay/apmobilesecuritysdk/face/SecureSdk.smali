.class public Lcom/alipay/apmobilesecuritysdk/face/SecureSdk;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getApdid(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v1, Lcom/alipay/apmobilesecuritysdk/face/SecureSdk;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->initApdid(Ljava/util/Map;)Ljava/lang/String;
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
