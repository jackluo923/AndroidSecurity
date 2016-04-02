.class public Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;
.super Ljava/lang/Object;
.source "SyncTable.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "sync_dispatch"

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 64
    :try_start_0
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `sync_dispatch` ( `userId` VARCHAR NOT NULL, `biz` VARCHAR NOT NULL, `sKey` VARCHAR NOT NULL, `pf` VARCHAR , `hm` VARCHAR , `md` VARCHAR NOT NULL, `sendNum` INTEGER ,  `localTime` BIGINT , `reserv1` VARCHAR, `reserv2` VARCHAR, `id` INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "CREATE UNIQUE INDEX IF NOT EXISTS `sync_dispatch_idx` ON `sync_dispatch` ( `userId`, `biz`, `sKey`)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "excuteCreateTable:[ SQLException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sync_dispatch"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sync_dispatch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
