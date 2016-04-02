.class public Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;
.super Ljava/lang/Object;


# static fields
.field private static spList:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->spList:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .locals 2

    const-class v0, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .locals 3

    const-class v1, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->spList:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->spList:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
