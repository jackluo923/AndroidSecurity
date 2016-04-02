.class public Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static declared-synchronized getExtConfigManager(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManager;
    .locals 4

    const-class v2, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManager;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManager;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_2
    new-instance v1, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManager;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManager;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/manager/ext/ExtConfigManagerFactory;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
