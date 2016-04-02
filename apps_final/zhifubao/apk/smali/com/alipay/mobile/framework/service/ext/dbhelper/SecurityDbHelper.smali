.class public Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;
.super Ljava/lang/Object;


# static fields
.field static b:Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;


# instance fields
.field final a:Ljava/lang/String;

.field c:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

.field d:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SecurityDbHelper"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->a:Ljava/lang/String;

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->d:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;
    .locals 2

    const-class v1, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->b:Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->b:Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->b:Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addDeviceInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getDeviceInfoSecurityDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao;->addDeviceInfo(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized addOrUpdateUserLogin(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;-><init>()V

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;->addOrUpdateUserLogin(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "addOrUpdateUserLogin success"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized addSecurityLevel(Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getSecurityLevelDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;->addSecurityLevel(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized addTaobaoUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getTaoBaoUserInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;->addTaoBaoUserInfo(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;-><init>()V

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;->addUserInfo(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u589e\u52a0\u7528\u6237\u4fe1\u606f\u6210\u529f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized cleanLocalAccount(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityDbHelper"

    const-string/jumbo v2, "\u5220\u9664\u7528\u6237\u4fe1\u606f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;->cleanLocalAccount(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5220\u9664\u7528\u6237\u4fe1\u606f\u6210\u529f  userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " retState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method protected declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->c:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteSecurityLevel(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getSecurityLevelDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;->deleteSecurityLevel(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized deleteTaobaoUserInfo(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getTaoBaoUserInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;->deleteTaobaoUserInfo(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized deleteTaobaoUserInfoByUserId(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getTaoBaoUserInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;->deleteTaobaoUserInfoByUserId(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized findDeviceInfoSecurity()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getDeviceInfoSecurityDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao;-><init>()V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao;->findDeviceInfoSecurity(Lcom/j256/ormlite/dao/Dao;)Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "did\u67e5\u8be2\u6210\u529f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized findSecurityLevel(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getSecurityLevelDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;-><init>()V

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;->findSecurityLevel(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SecurityDbHelper"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SecurityDbHelper"

    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized findUserInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoCache;->userInfoMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoCache;->userInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u4ece\u7f13\u5b58\u83b7\u53d6\u7528\u6237\u4fe1\u606f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v1, v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u67e5\u8be2\u51fa\u672c\u5730\u7528\u6237\u8be6\u7ec6\u4fe1\u606f"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;-><init>()V

    invoke-virtual {v2, v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;->findUserInfo(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoCache;->userInfoMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoCache;->userInfoMap:Ljava/util/HashMap;

    :cond_2
    if-eqz v0, :cond_3

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoCache;->userInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized findUserInfoByLoginId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u67e5\u8be2\u51fa\u672c\u5730\u7528\u6237\u8be6\u7ec6\u4fe1\u606f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;-><init>()V

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;->findUserInfoByLoginId(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized findUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoCache;->userInfoMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoCache;->userInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u4ece\u7f13\u5b58\u83b7\u53d6\u7528\u6237\u4fe1\u606f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "alipayclient.db"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;->findUserInfoBySql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoCache;->userInfoMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoCache;->userInfoMap:Ljava/util/HashMap;

    :cond_2
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoCache;->userInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->c:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    if-nez v0, :cond_1

    const-string/jumbo v1, "SecurityDbHelper"

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->c:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    invoke-static {v0, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->c:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->c:Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSecurityLevelCache(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->d:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putSecurityLevelCache(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->d:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryTaoBaoUserByLoginId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getTaoBaoUserInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;-><init>()V

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;->findTaobaoUserInfo(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized queryTaobaoUserList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getTaoBaoUserInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;-><init>()V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;->queryTaobaoUserList(Lcom/j256/ormlite/dao/Dao;)Ljava/util/List;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public queryUserInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u67e5\u8be2\u51fa\u672c\u5730\u7528\u6237\u5217\u8868"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;-><init>()V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;->queryUserInfoList(Lcom/j256/ormlite/dao/Dao;)Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
.end method

.method public declared-synchronized updateSecurityLevelRefresh(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->d:Landroid/support/v4/util/LruCache;

    const-string/jumbo v1, "refreshCache"

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getSecurityLevelDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;-><init>()V

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/security/dao/SecurityLevelDao;->updateSecurityLevelRefresh(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized updateUserAutoLoginFlag(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;->updateUserAutoLoginFlag(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55 \u6210\u529f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55 \u5931\u8d25"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateUserAutoLoginFlagByLogonId(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;->updateUserAutoLoginFlagByLogonId(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55 \u6210\u529f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55 \u5931\u8d25"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getHelper()Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;-><init>()V

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/framework/service/ext/security/dao/UserInfoDao;->updateUserGesture(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityDbHelper"

    const-string/jumbo v3, "\u66f4\u65b0\u624b\u52bf\u4fe1\u606f\u6210\u529f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
