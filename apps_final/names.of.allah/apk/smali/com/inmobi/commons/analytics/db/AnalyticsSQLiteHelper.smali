.class public Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final ATTEMPT_DATA_BEGIN_TIME:Ljava/lang/String; = "begintime"

.field public static final ATTEMPT_DATA_LEVEL_ID:Ljava/lang/String; = "levelid"

.field public static final ATTEMPT_DATA_TOTAL_COUNT:Ljava/lang/String; = "totalcount"

.field public static final ATTEMPT_DATA_TOTAL_TIME:Ljava/lang/String; = "totaltime"

.field public static final CUSTOM_EVENT_EVENT_NAME:Ljava/lang/String; = "eventname"

.field public static final DATABASE_NAME:Ljava/lang/String; = "ltvp.db"

.field public static final EVENT_LIST_AM:Ljava/lang/String; = "am"

.field public static final EVENT_LIST_EVENT_ID:Ljava/lang/String; = "eventid"

.field public static final EVENT_LIST_SID:Ljava/lang/String; = "sid"

.field public static final EVENT_LIST_SSTS:Ljava/lang/String; = "ssts"

.field public static final EVENT_LIST_TS:Ljava/lang/String; = "ts"

.field public static final EVENT_LIST_TYPE:Ljava/lang/String; = "type"

.field public static final GENERAL_ID:Ljava/lang/String; = "_id"

.field public static final LEVEL_BEGIN_LEVEL_ID:Ljava/lang/String; = "levelid"

.field public static final LEVEL_BEGIN_LEVEL_NAME:Ljava/lang/String; = "levelname"

.field public static final LEVEL_END_ATTEMPT_COUNT:Ljava/lang/String; = "attemptcount"

.field public static final LEVEL_END_ATTEMPT_TIME:Ljava/lang/String; = "attempttime"

.field public static final LEVEL_END_LEVEL_ID:Ljava/lang/String; = "levelid"

.field public static final LEVEL_END_LEVEL_NAME:Ljava/lang/String; = "levelname"

.field public static final LEVEL_END_LEVEL_STATUS:Ljava/lang/String; = "levelstatus"

.field public static final LEVEL_END_TIME_TAKEN:Ljava/lang/String; = "timetaken"

.field public static final OLD_DATABASE_NAME:Ljava/lang/String; = "appengage.db"

.field public static final TABLE_ATTEMPT_DATA:Ljava/lang/String; = "attemptdata"

.field public static final TABLE_CUSTOM_EVENT:Ljava/lang/String; = "customevent"

.field public static final TABLE_EVENT_LIST:Ljava/lang/String; = "eventlist"

.field public static final TABLE_LEVEL_BEGIN:Ljava/lang/String; = "levelbegin"

.field public static final TABLE_LEVEL_END:Ljava/lang/String; = "levelend"

.field public static final TABLE_SESSION_LIST:Ljava/lang/String; = "sessionlist"

.field public static final TABLE_TRANSACTION:Ljava/lang/String; = "transactiondetail"

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transactionId"

.field public static final TRANSACTION_ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field public static final TRANSACTION_ITEM_CURRENCY_CODE:Ljava/lang/String; = "currencyCode"

.field public static final TRANSACTION_ITEM_DESCRIPTION:Ljava/lang/String; = "itemDescription"

.field public static final TRANSACTION_ITEM_ITEM_PRICE:Ljava/lang/String; = "itemPrice"

.field public static final TRANSACTION_ITEM_NAME:Ljava/lang/String; = "itemName"

.field public static final TRANSACTION_ITEM_TYPE:Ljava/lang/String; = "itemType"

.field public static final TRANSACTION_PRODUCT_ID:Ljava/lang/String; = "productId"

.field public static final TRANSACTION_STATUS:Ljava/lang/String; = "transactionStatus"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ltvp.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS eventlist (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, eventid INTEGER NOT NULL, type VARCHAR NOT NULL, sid VARCHAR NOT NULL, ts VARCHAR NOT NULL, ssts VARCHAR NOT NULL, am VARCHAR)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS sessionlist (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, start INTEGER NOT NULL, end INTEGER NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS levelbegin (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, levelid VARCHAR, levelname VARCHAR)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS levelend (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, levelid VARCHAR, levelname VARCHAR, levelstatus VARCHAR, timetaken VARCHAR, attemptcount VARCHAR, attempttime VARCHAR)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS transactiondetail (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, itemName VARCHAR, itemType INTEGER, itemCount INTEGER, itemDescription VARCHAR, itemPrice REAL, currencyCode VARCHAR, productId VARCHAR, transactionId VARCHAR, transactionStatus INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS customevent (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, eventname VARCHAR)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS attemptdata (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, levelid VARCHAR, begintime VARCHAR NOT NULL, totalcount VARCHAR NOT NULL, totaltime VARCHAR NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-class v0, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS eventlist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS sessionlist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS levelbegin"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS levelend"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS transactiondetail"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS customevent"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS attemptdata"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
