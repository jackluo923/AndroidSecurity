.class public Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;
.super Ljava/lang/Object;
.source "ChatMsgTable.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "chat_message"

.field public static final TABLE_NAME_NEWS_IDS:Ljava/lang/String; = "news_ids"

.field private static final newsIdSqlIndex1:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS `news_ids_bMsgId_index` ON `news_ids` ( `bMsgId` )"

.field private static final newsIdSqlIndex2:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS `news_ids_userId_index` ON `news_ids` ( `userId` )"

.field private static final newsIdSqlIndex3:Ljava/lang/String; = "CREATE UNIQUE INDEX IF NOT EXISTS `news_ids_unique_userId_bMsgId` ON `news_ids` ( `userId`, `bMsgId`)"

.field private static final newsIdTableCreate:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS `news_ids` ( `userId` VARCHAR , `bMsgId` VARCHAR , `mId` INTEGER PRIMARY KEY AUTOINCREMENT );"

.field private static final sqlCreate:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS `chat_message` ( `userId` VARCHAR , `appId` VARCHAR , `mk` VARCHAR , `mct` BIGINT ,  `localTime` BIGINT , `isRead` VARCHAR , `mData` VARCHAR , `msgDirection` VARCHAR , `msgStatus` VARCHAR , `mSum` VARCHAR , `bTime` BIGINT , `mType` VARCHAR , `mExt` VARCHAR , `toId` VARCHAR ,  `isExt` VARCHAR , `isSc` VARCHAR , `bMsgId` VARCHAR , `ext` VARCHAR , `reserv1` VARCHAR , `reserv2` VARCHAR , `mBox` VARCHAR, `shopId` VARCHAR, `mId` INTEGER PRIMARY KEY AUTOINCREMENT );"

.field private static final sqlIndex1:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS `chat_message_appId_idx` ON `chat_message` ( `appId` )"

.field private static final sqlIndex2:Ljava/lang/String; = "CREATE UNIQUE INDEX IF NOT EXISTS `chat_message_userId_mk_idx` ON `chat_message` ( `userId`, `mk`)"


# instance fields
.field private volatile db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 5

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->initWriteDataBase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ChatMsgTable:[ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 121
    :try_start_0
    const-string/jumbo v0, "drop table if exists chat_message"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "dropTable:[ SQLException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static excuteCreateNewsIdTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 109
    :try_start_0
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `news_ids` ( `userId` VARCHAR , `bMsgId` VARCHAR , `mId` INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS `news_ids_bMsgId_index` ON `news_ids` ( `bMsgId` )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS `news_ids_userId_index` ON `news_ids` ( `userId` )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "CREATE UNIQUE INDEX IF NOT EXISTS `news_ids_unique_userId_bMsgId` ON `news_ids` ( `userId`, `bMsgId`)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "excuteCreateNewsIdTable:[ SQLException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static excuteCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 97
    :try_start_0
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS `chat_message` ( `userId` VARCHAR , `appId` VARCHAR , `mk` VARCHAR , `mct` BIGINT ,  `localTime` BIGINT , `isRead` VARCHAR , `mData` VARCHAR , `msgDirection` VARCHAR , `msgStatus` VARCHAR , `mSum` VARCHAR , `bTime` BIGINT , `mType` VARCHAR , `mExt` VARCHAR , `toId` VARCHAR ,  `isExt` VARCHAR , `isSc` VARCHAR , `bMsgId` VARCHAR , `ext` VARCHAR , `reserv1` VARCHAR , `reserv2` VARCHAR , `mBox` VARCHAR, `shopId` VARCHAR, `mId` INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS `chat_message_appId_idx` ON `chat_message` ( `appId` )"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "CREATE UNIQUE INDEX IF NOT EXISTS `chat_message_userId_mk_idx` ON `chat_message` ( `userId`, `mk`)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "excuteCreateTable:[ SQLException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initWriteDataBase()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 212
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_1
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->initWriteDataBase()V

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "chat_message"

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "delete:[ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized execSQL(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->initWriteDataBase()V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    monitor-exit p0

    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "execSQL:[ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string/jumbo v0, "chat_message"

    return-object v0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 7

    .prologue
    .line 130
    const-wide/16 v0, -0x1

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->initWriteDataBase()V

    .line 133
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "chat_message"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 137
    :goto_0
    return-wide v0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "insert:[ Exception="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertNewsIds(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .prologue
    .line 141
    const-wide/16 v0, -0x1

    .line 143
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 144
    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v3, "bMsgId"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->initWriteDataBase()V

    .line 148
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "news_ids"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 152
    :goto_0
    return-wide v0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "insertNewsIds:[ Exception="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 180
    const/4 v8, 0x0

    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->initWriteDataBase()V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "chat_message"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "query:[ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->initWriteDataBase()V

    .line 194
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rawQuery:[ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->initWriteDataBase()V

    .line 170
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "chat_message"

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "delete:[ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
