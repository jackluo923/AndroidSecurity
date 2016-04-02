.class public Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "EncryptOrmliteSqliteOpenHelper.java"


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    iput-object v2, p0, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->a:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->isDebug(Landroid/content/Context;)Z

    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 36
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1, p5}, Lcom/alipay/mobile/framework/service/ext/security/TaobaoBlackboxService;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->a:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->setPassword(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->setWALEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 146
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 153
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V
    .locals 1

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    :try_start_0
    invoke-interface {p1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized createTableIfNotExist(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->isTableExist(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5efa\u8868"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->getCreateTableStatements(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Ljava/util/List;

    move-result-object v2

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 78
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 79
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->onTableCreated(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    :try_start_3
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_1
    :try_start_4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 83
    :try_start_6
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    .line 84
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v2

    .line 55
    invoke-virtual {v2, p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->setTableName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :try_start_1
    invoke-virtual {p0, v0, p2, v2}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->createTableIfNotExist(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 59
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_PersonalBase"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected isTableExist(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 88
    .line 89
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "select count(*) as c from Sqlite_master  where type =\'table\' and name =\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\' "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 96
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 98
    if-lez v1, :cond_2

    .line 99
    const/4 v0, 0x1

    .line 105
    :cond_2
    if-eqz v2, :cond_0

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "SocialSdk_PersonalBase"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    if-eqz v2, :cond_0

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    if-eqz v2, :cond_3

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_3
    throw v0
.end method

.method protected onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6570\u636e\u5e93\u521b\u5efa"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected onTableCreated(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
