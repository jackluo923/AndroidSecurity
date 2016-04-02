.class public Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "MessageboxDBHelper.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "messagebox.db"

.field private static final DB_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static messageboxDBHelper:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "messagebox.db"

    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->startIndex(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static declared-synchronized getHelperInstance()Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->messageboxDBHelper:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    invoke-direct {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->messageboxDBHelper:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    .line 44
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->messageboxDBHelper:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 180
    :try_start_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    .line 185
    :catch_1
    move-exception v1

    .line 186
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    :catch_2
    move-exception v1

    .line 189
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startHook(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 167
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 165
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "messagebox.db"

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->hookDB(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 169
    return-void
.end method

.method private startIndex(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 7

    .prologue
    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "publicplatform start index"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 156
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 157
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "messagebox.db"

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 159
    const-string/jumbo v1, "title"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string/jumbo v1, "message_box"

    const-string/jumbo v2, "messagebox.db"

    const-string/jumbo v3, "messageinfo"

    .line 161
    const-string/jumbo v4, "msgId"

    const/4 v6, 0x0

    .line 160
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private stopHook()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 174
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 172
    const-string/jumbo v1, "messagebox.db"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->closeDbHook(Ljava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->stopHook()V

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "AlipassDataBase close"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 102
    return-void
.end method

.method public getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReadMessageInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    .line 107
    const-class v1, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    .line 106
    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    .line 109
    const-class v1, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;

    .line 108
    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 51
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "AlipassDataBase opened"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 77
    new-instance v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper$1;-><init>(Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->startHook(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 92
    return-void
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 2

    .prologue
    .line 61
    if-eq p4, p3, :cond_0

    .line 63
    :try_start_0
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 64
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;

    .line 65
    const/4 v1, 0x1

    .line 64
    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
