.class public Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;
.super Ljava/lang/Object;
.source "MessageBoxDaoImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDao;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private messageInfoDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private messageboxDBHelper:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

.field private readMessageInfoDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->mLock:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDataHelper()Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->messageboxDBHelper:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getHelperInstance()Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->messageboxDBHelper:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->messageboxDBHelper:Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    return-object v0
.end method

.method private getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;
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
    .line 52
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->messageInfoDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getDataHelper()Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->messageInfoDao:Lcom/j256/ormlite/dao/Dao;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->messageInfoDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method private getReadMessageInfoDao()Lcom/j256/ormlite/dao/Dao;
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
    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->readMessageInfoDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getDataHelper()Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getReadMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->readMessageInfoDao:Lcom/j256/ormlite/dao/Dao;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->readMessageInfoDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method private rollback(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    .locals 3

    .prologue
    .line 201
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 203
    :try_start_0
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteByMsgId(Ljava/util/List;Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getDataHelper()Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v3

    .line 113
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    .line 114
    const-string/jumbo v0, "savePointMessageInfo"

    .line 115
    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object v4

    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-interface {v3, v4}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v5, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "deleteByMsgId : success , msgList  =  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    .line 135
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    .line 119
    :cond_0
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v6

    .line 121
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const-string/jumbo v8, "msgId"

    invoke-virtual {v7, v8, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    const-string/jumbo v8, "userId"

    invoke-virtual {v7, v8, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 122
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v6

    .line 123
    add-int/2addr v1, v6

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    sget-object v8, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "deleteByMsgId : messageId = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, " , count = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-interface {v7, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    invoke-direct {p0, v3, v4}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->rollback(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    :try_start_5
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 132
    :catchall_1
    move-exception v0

    .line 133
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    .line 134
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public deleteMsgByType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "msgType"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 75
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteByMsgType: msgType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteOverdueMsginfo(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 243
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "gmtValid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 245
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteOverdueMsginfo: count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteOverdueReadmsg(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getReadMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "gmtValid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 260
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    .line 261
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteOverdueReadmsg: count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteReadMsgById(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 319
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getReadMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "msgId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 321
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    .line 322
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteByMsgType: msgId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertMessageInfo(Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;)V
    .locals 4

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 309
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "insertMessageInfo messageInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public insertReadMsg(Lcom/alipay/android/phone/messageboxstatic/biz/db/ReadMessageInfo;)I
    .locals 5

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getReadMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v0

    .line 233
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "insertReadMsg count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return v0
.end method

.method public queryMsgByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "msgType"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 288
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method public queryMsgByTypeAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "msgType"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 276
    const-string/jumbo v1, "msgState"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 277
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryMsgByTypeAndStatus\u6570\u636e\uff1acacheList =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-object v0
.end method

.method public queryMsginfo(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readByMsgId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "msgId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 218
    const-string/jumbo v2, "msgState"

    const-string/jumbo v3, "INIT"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 219
    const-string/jumbo v1, "msgState"

    const-string/jumbo v2, "READ"

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 220
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    move-result v0

    .line 221
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "readByMsgId : messageId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return v0
.end method

.method public readByMsgIdList(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    sget-object v1, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getDataHelper()Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2

    .line 147
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    .line 148
    const-string/jumbo v0, "savePointMessageInfo"

    .line 149
    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object v3

    .line 150
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-interface {v2, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v4, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateAlipassOffline success"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    .line 145
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 152
    :cond_0
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v5

    .line 154
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string/jumbo v7, "msgId"

    invoke-virtual {v6, v7, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    .line 155
    const-string/jumbo v7, "msgState"

    const-string/jumbo v8, "INIT"

    invoke-virtual {v6, v7, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 156
    const-string/jumbo v6, "msgState"

    const-string/jumbo v7, "READ"

    invoke-virtual {v5, v6, v7}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 157
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    move-result v5

    .line 158
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "readByMsgId : messageId = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, " , count = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-interface {v6, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "StackTrace"

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    invoke-direct {p0, v2, v3}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->rollback(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    :try_start_5
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 166
    :catchall_1
    move-exception v0

    .line 167
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    .line 168
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public readMsgByType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->getMessageInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "msgType"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 92
    const-string/jumbo v2, "msgState"

    const-string/jumbo v3, "INIT"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 93
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 94
    const-string/jumbo v1, "msgState"

    const-string/jumbo v2, "READ"

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 95
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    move-result v0

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "readByMsgType: msgType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/messageboxstatic/biz/dao/MessageBoxDaoImpl;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method
