.class public Lcom/ali/user/mobile/db/LoginHistoryDBHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "LoginHistoryDBHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "aliuser"

.field public static final DATABASE_VERSION:I = 0x3

.field public static final TABLE_NAME:Ljava/lang/String; = "loginHistory"

.field private static b:Lcom/ali/user/mobile/db/LoginHistoryDBHelper;


# instance fields
.field private a:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/ali/user/mobile/login/LoginHistory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 28
    const-string/jumbo v0, "aliuser"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    return-void
.end method

.method public static declared-synchronized getLoginHistoryDBHelper(Landroid/content/Context;)Lcom/ali/user/mobile/db/LoginHistoryDBHelper;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->b:Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->b:Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

    .line 35
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->b:Lcom/ali/user/mobile/db/LoginHistoryDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 85
    sput-object v0, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->b:Lcom/ali/user/mobile/db/LoginHistoryDBHelper;

    .line 86
    iput-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->a:Lcom/j256/ormlite/dao/Dao;

    .line 87
    return-void
.end method

.method public getLoginHistoryDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/ali/user/mobile/login/LoginHistory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->a:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 77
    const-class v0, Lcom/ali/user/mobile/login/LoginHistory;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->a:Lcom/j256/ormlite/dao/Dao;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/db/LoginHistoryDBHelper;->a:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method protected onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "LoginHistoryDBHelper"

    const-string/jumbo v1, "onConfigure"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 3

    .prologue
    .line 40
    const-string/jumbo v0, "LoginHistoryDBHelper"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :try_start_0
    const-class v0, Lcom/ali/user/mobile/login/LoginHistory;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string/jumbo v1, "LoginHistoryDBHelper"

    const-string/jumbo v2, "\u521b\u5efa\u6570\u636e\u5e93\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, "LoginHistoryDBHelper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 51
    const-string/jumbo v0, "LoginHistoryDBHelper"

    const-string/jumbo v1, "onUpgrade, oldVersion:%s, newVersion:%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    if-ge p3, v5, :cond_0

    .line 54
    :try_start_0
    const-string/jumbo v0, "ALTER TABLE loginHistory ADD COLUMN loginPortraitUrl varchar(64)"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    const/4 v0, 0x3

    if-ge p3, v0, :cond_1

    .line 61
    :try_start_1
    const-string/jumbo v0, "ALTER TABLE loginHistory ADD COLUMN userId varchar(64)"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "ALTER TABLE loginHistory ADD COLUMN faceAuth Boolean"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "ALTER TABLE loginHistory ADD COLUMN faceAuthFailCount Integer"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :cond_1
    :goto_1
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string/jumbo v1, "LoginHistoryDBHelper"

    const-string/jumbo v2, "\u66f4\u65b0\u6570\u636e\u5e93\u6570\u636e\u5e93\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 65
    const-string/jumbo v1, "LoginHistoryDBHelper"

    const-string/jumbo v2, "\u66f4\u65b0\u6570\u636e\u5e93\u6570\u636e\u5e93\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
