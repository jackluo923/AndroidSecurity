.class public final Lcom/taobao/wireless/security/adapter/datacollection/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/wireless/security/adapter/datacollection/a;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/wireless/security/adapter/datacollection/a;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/wireless/security/adapter/datacollection/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/adapter/datacollection/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/datacollection/a;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/taobao/wireless/security/adapter/datacollection/DeviceInfoCapturer;->initialize(Landroid/content/Context;Lcom/taobao/wireless/security/adapter/datacollection/a;)V

    iget-object v0, p0, Lcom/taobao/wireless/security/adapter/datacollection/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/wireless/security/adapter/datacollection/AppInfoCapturer;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/taobao/wireless/security/adapter/datacollection/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "DataCollectionData"

    const-string/jumbo v2, "key_umid"

    const-string/jumbo v3, ""

    invoke-static {v0, v2, v3}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/taobao/wireless/security/adapter/datacollection/a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getEncryptedDevAndEnvInfoNative(ILjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    sget-object v1, Lcom/taobao/wireless/security/adapter/datacollection/a;->c:Ljava/lang/Object;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string/jumbo p0, ""

    :cond_0
    invoke-static {}, Lcom/taobao/wireless/security/adapter/datacollection/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "DataCollectionData"

    const-string/jumbo v3, "key_nick"

    invoke-static {v2, v3, p0}, Lcom/taobao/wireless/security/adapter/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->updateNickNative()V

    :cond_1
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/taobao/wireless/security/adapter/datacollection/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "DataCollectionData"

    const-string/jumbo v2, "key_nick"

    const-string/jumbo v3, ""

    invoke-static {v0, v2, v3}, Lcom/taobao/wireless/security/adapter/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
