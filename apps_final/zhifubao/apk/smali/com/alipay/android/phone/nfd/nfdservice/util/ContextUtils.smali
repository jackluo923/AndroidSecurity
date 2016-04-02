.class public final Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getApplication()Landroid/app/Application;
    .locals 2

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->a:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized setApplication(Landroid/app/Application;)V
    .locals 2

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->a:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
