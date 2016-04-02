.class public final Lcom/taobao/securityjni/GlobalInit;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/securityjni/GlobalInit;->a:Ljava/lang/String;

    sput-object v0, Lcom/taobao/securityjni/GlobalInit;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized GetGlobalAppKey()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/taobao/securityjni/GlobalInit;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static GlobalSecurityInitAsync(Landroid/content/ContextWrapper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitAsync(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->a(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method public static GlobalSecurityInitAsync(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->b:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibraryAsync(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->a(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method public static GlobalSecurityInitAsyncSDK(Landroid/content/ContextWrapper;)V
    .locals 2

    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->b:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibraryAsync(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->a(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method public static GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;)V
    .locals 0

    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->a(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method public static GlobalSecurityInitAsyncSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->b:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibraryAsync(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->a(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method public static GlobalSecurityInitSync(Landroid/content/ContextWrapper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitSync(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public static GlobalSecurityInitSync(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->b:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibrarySync(Landroid/content/Context;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->a(Landroid/content/ContextWrapper;)V

    return-void
.end method

.method public static GlobalSecurityInitSyncSDK(Landroid/content/ContextWrapper;)V
    .locals 2

    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->b:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibrarySync(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->a(Landroid/content/ContextWrapper;)V

    goto :goto_0
.end method

.method public static GlobalSecurityInitSyncSo(Landroid/content/ContextWrapper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitSyncSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public static GlobalSecurityInitSyncSo(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->b:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->loadLibrarySync(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/taobao/securityjni/GlobalInit;->a(Landroid/content/ContextWrapper;)V

    goto :goto_0
.end method

.method public static declared-synchronized SetGlobalAppKey(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/taobao/securityjni/GlobalInit;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/taobao/securityjni/GlobalInit;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/ContextWrapper;)V
    .locals 3

    invoke-static {p0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetGlobalAppKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {v2, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->initSecurityBody(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static getGlobalContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/taobao/securityjni/GlobalInit;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static setEnableOutPutExpInfo(Z)V
    .locals 0

    return-void
.end method
