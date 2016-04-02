.class public final Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private static c:Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "RpcUtils"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a()Lcom/alipay/mobile/framework/service/common/RpcService;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->d()Lcom/alipay/mobile/framework/service/common/RpcService;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-object v0
.end method

.method public static final declared-synchronized b()V
    .locals 3

    const-class v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->destroy(Landroid/os/Bundle;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;->destroy(Landroid/os/Bundle;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->b:Lcom/alipay/mobile/framework/service/common/RpcService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Lcom/alipay/mobile/common/transport/Transport;
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;

    return-object v0
.end method

.method private static final declared-synchronized d()Lcom/alipay/mobile/framework/service/common/RpcService;
    .locals 3

    const-class v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/b;-><init>()V

    new-instance v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/e;

    invoke-direct {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/e;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/b;->a(Lcom/alipay/mobile/common/rpc/Config;)V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->b:Lcom/alipay/mobile/framework/service/common/RpcService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
