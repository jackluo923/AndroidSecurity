.class public Lcom/j256/ormlite/dao/DaoManager;
.super Ljava/lang/Object;


# static fields
.field private static classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static tableConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addCachedDatabaseConfigs(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;>;)V"
        }
    .end annotation

    const-class v2, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v5, "Loaded configuration for {}"

    invoke-virtual {v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    sput-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void
.end method

.method private static addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;)V"
        }
    .end annotation

    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;)V"
        }
    .end annotation

    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    :cond_0
    invoke-static {}, Lcom/j256/ormlite/dao/DaoManager;->clearDaoCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clearDaoCache()V
    .locals 2

    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)TD;"
        }
    .end annotation

    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)TD;"
        }
    .end annotation

    const-class v2, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v2

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionSource argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_2
    :try_start_2
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDaoFromConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    const-class v0, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Void;

    if-eq v1, v3, :cond_3

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-ne v1, v3, :cond_5

    :cond_3
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/j256/ormlite/db/DatabaseType;->extractDatabaseTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    :goto_1
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "created dao for class {} with reflection"

    invoke-virtual {v1, v3, p1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    invoke-static {p0, v0}, Lcom/j256/ormlite/dao/DaoManager;->registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v3, v1}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v1, v0

    invoke-static {v3, v1}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Could not find public constructor with ConnectionSource and optional Class parameters "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".  Missing static on class?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "created dao for class {} from constructor"

    invoke-virtual {v1, v4, p1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Could not call the constructor in class "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static createDaoFromConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)TD;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTableConfig;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/j256/ormlite/dao/DaoManager;->doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    goto :goto_0
.end method

.method private static doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)TD;"
        }
    .end annotation

    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v3, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v3}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Void;

    if-eq v4, v5, :cond_3

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "created dao for class {} from table config"

    invoke-virtual {v1, v4, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v3, v0}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v0, v5

    const/4 v5, 0x1

    aput-object p1, v0, v5

    invoke-static {v4, v0}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    if-nez v5, :cond_5

    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find public constructor with ConnectionSource, DatabaseTableConfig parameters in class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not call the constructor in class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private static findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v2, v5, v4

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v0, v7

    array-length v3, p1

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    move v0, v1

    :goto_1
    array-length v8, v7

    if-ge v0, v8, :cond_3

    aget-object v8, v7, v0

    aget-object v9, p1, v0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    move v0, v1

    :goto_2
    if-eqz v0, :cond_1

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method private static lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            ")",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;"
        }
    .end annotation

    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            ")",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;"
        }
    .end annotation

    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized lookupDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)TD;"
        }
    .end annotation

    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    invoke-static {v0}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized lookupDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)TD;"
        }
    .end annotation

    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;)V"
        }
    .end annotation

    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v0, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized registerDaoWithTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;)V"
        }
    .end annotation

    const-class v2, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v2

    if-nez p0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "connectionSource argument cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    instance-of v1, p1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v3, p0, v1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    invoke-static {v3, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v1, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static removeDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;)V"
        }
    .end annotation

    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static declared-synchronized unregisterDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao",
            "<**>;)V"
        }
    .end annotation

    const-class v1, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionSource argument cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v0, p1}, Lcom/j256/ormlite/dao/DaoManager;->removeDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method
