.class public Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;
.super Ljava/lang/Object;
.source "PushMergeTable.java"

# interfaces
.implements Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "push_mergemsg"

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 63
    :try_start_0
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `push_mergemsg` ( `noticeId` VARCHAR , `msgId` VARCHAR , `localTime` BIGINT , `title` VARCHAR , `content` VARCHAR , `mTemId` BIGINT , `mTxt` VARCHAR, `mUri` VARCHAR, `msgStatus` VARCHAR, `reserv1` VARCHAR, `id` INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "excuteCreateTable:[ SQLException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 66
    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "push_mergemsg"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "push_mergemsg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
