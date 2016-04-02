.class public Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->a:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->a:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    invoke-static {v0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->a:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->a:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->a:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;
    .locals 2

    sget-object v0, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b:Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b:Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b:Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b:Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addOrUpdate(Lcom/alipay/mobile/security/gesture/data/UserGestureData;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;-><init>()V

    iget-object v1, p1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setUdrtif(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setData(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->addOrUpdateUserGestureConfig(Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public addOrUpdateUserGestureConfig(Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;)Z
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "addOrUpdateUserGestureConfig begin"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v1, "addOrUpdateUserGestureConfig param is null"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-class v2, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->a()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->encrypt(Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;)Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v1, "addOrUpdateUserGestureConfig encrypt result is null"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_2
    invoke-interface {v1, v3}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addOrUpdateUserGestureConfig line:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->getNumLinesChanged()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->getNumLinesChanged()I

    move-result v3

    if-gtz v3, :cond_3

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->isCreated()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->isUpdated()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addOrUpdateUserGestureConfig end ret:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public decrypt(Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;)Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v0, " decrypt GestureConfigDBItem param is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->getUdrtif()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, " decrypt GestureConfigDBItem userid is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, " decrypt GestureConfigDBItem data is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;

    if-nez v0, :cond_3

    const-string/jumbo v0, " decrypt taobaoBlackboxService is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "userInfo"

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/security/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;->dynamicDecrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;->getAhead8BytesStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/security/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setUdrtif(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " decrypt gesture encrypt err Happen:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public delete(Lcom/alipay/mobile/security/gesture/data/UserGestureData;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-direct {v1}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;-><init>()V

    iget-object v2, p1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setUdrtif(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setData(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->a()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "udrtif"

    iget-object v1, p1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v4, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p1, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    const-string/jumbo v5, "userInfo"

    invoke-static {v1, v5}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delete err"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    goto :goto_2
.end method

.method public encrypt(Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;)Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v0, " GestureConfigDBItem param is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->getUdrtif()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, " GestureConfigDBItem userid is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, " GestureConfigDBItem data is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;

    if-nez v0, :cond_3

    const-string/jumbo v0, "taobaoBlackboxService is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "userInfo"

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;->getAhead8BytesStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;->dynamicEncrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setUdrtif(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "gesture encrypt err Happen:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method public getAllConfigs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;",
            ">;"
        }
    .end annotation

    const-class v2, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v0, "getAllConfigs begin"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->a()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "getAllConfigs query result is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    :try_start_4
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    :goto_2
    const-string/jumbo v0, "getAllConfigs end "

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->decrypt(Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;)Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->b()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public getUsersConfig()Lcom/alipay/mobile/security/gesture/data/UserGesture;
    .locals 7

    const-string/jumbo v0, "getUsersConfig begin"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getAllConfigs()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v0, "parseDBData begin"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "parseDBData cfgList is null or empty"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v1, "getUsersConfig null"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "getUsersConfig end"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v1, Lcom/alipay/mobile/security/gesture/data/UserGesture;

    invoke-direct {v1}, Lcom/alipay/mobile/security/gesture/data/UserGesture;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parseDBData cfgList size"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v4, :cond_3

    const-string/jumbo v0, "parseDBData end"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->l(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    invoke-direct {v5}, Lcom/alipay/mobile/security/gesture/data/UserGestureData;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->getUdrtif()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->getData()Ljava/lang/String;

    move-result-object v0

    const-class v6, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    iput-object v0, v5, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    iget-object v0, v1, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
