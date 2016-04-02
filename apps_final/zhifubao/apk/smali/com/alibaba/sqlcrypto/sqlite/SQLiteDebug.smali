.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

.field public static final DEBUG_LOCK_TIME_TRACKING:Z

.field public static final DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

.field public static final DEBUG_SQL_CACHE:Z

.field public static final DEBUG_SQL_STATEMENTS:Z

.field public static final DEBUG_SQL_TIME:Z

.field private static sNumActiveCursorsFinalized:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string/jumbo v0, "SQLiteStatements"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    const-string/jumbo v0, "SQLiteTime"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    const-string/jumbo v0, "SQLiteCompiledSql"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    const-string/jumbo v0, "SQLiteCursorClosing"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    const-string/jumbo v0, "SQLiteLockTime"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    const-string/jumbo v0, "SQLiteLockStackTrace"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    const/4 v0, 0x0

    sput v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDatabaseInfo()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;
    .locals 2

    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;

    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;-><init>()V

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->getPagerStats(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;)V

    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getDbStats()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static native getHeapAllocatedSize()J
.end method

.method public static native getHeapDirtyPages([I)V
.end method

.method public static native getHeapFreeSize()J
.end method

.method public static native getHeapSize()J
.end method

.method public static getNumActiveCursorsFinalized()I
    .locals 1

    sget v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I

    return v0
.end method

.method public static native getPagerStats(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$PagerStats;)V
.end method

.method static declared-synchronized notifyActiveCursorFinalized()V
    .locals 2

    const-class v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->sNumActiveCursorsFinalized:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
