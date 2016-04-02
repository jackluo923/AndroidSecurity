.class public Lcom/alipay/mobile/splash/WelcomeDataHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "WelcomeDataHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "AdSpace.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static mDataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 26
    const-string/jumbo v0, "AdSpace.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/splash/WelcomeDataHelper;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/alipay/mobile/splash/WelcomeDataHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/splash/WelcomeDataHelper;->mDataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alipay/mobile/splash/WelcomeDataHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/splash/WelcomeDataHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/splash/WelcomeDataHelper;->mDataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    .line 33
    :cond_0
    sget-object v0, Lcom/alipay/mobile/splash/WelcomeDataHelper;->mDataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/splash/WelcomeDataHelper;->mDataHelper:Lcom/alipay/mobile/splash/WelcomeDataHelper;

    .line 39
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 40
    return-void
.end method

.method public getSpaceObjectModelDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/splash/SpaceObjectInfoModel;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    const-class v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/splash/WelcomeDataHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/splash/WelcomeDataHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 2

    .prologue
    .line 64
    if-eq p4, p3, :cond_0

    .line 66
    :try_start_0
    const-class v0, Lcom/alipay/mobile/splash/SpaceObjectInfoModel;

    .line 67
    const/4 v1, 0x1

    .line 66
    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/splash/WelcomeDataHelper;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
