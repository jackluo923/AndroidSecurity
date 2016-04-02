.class public Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;
.super Ljava/lang/Object;
.source "OldMessageCopyHelper.java"


# static fields
.field public static final ARTICLES:Ljava/lang/String; = "articles"

.field private static final LOGTAG:Ljava/lang/String;

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    const-class v1, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->LOGTAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChatMessage(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 78
    if-nez p0, :cond_0

    .line 127
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-direct {v1}, Lcom/alipay/mobile/chatsdk/api/ChatMessage;-><init>()V

    .line 82
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 85
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 87
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 88
    iput-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->localTime:Ljava/util/Date;

    .line 89
    iput-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    .line 95
    const-string/jumbo v3, "image-text"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    sget-object v1, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->LOGTAG:Ljava/lang/String;

    .line 97
    const-string/jumbo v2, "update old message error: messageType is not image-text"

    .line 96
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 100
    :cond_1
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    if-nez v2, :cond_2

    .line 102
    sget-object v1, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->LOGTAG:Ljava/lang/String;

    .line 103
    const-string/jumbo v2, "update old message error: msgData decrypt is null"

    .line 102
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    iput-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    .line 108
    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->getSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :goto_2
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    .line 114
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mFrom:Ljava/lang/String;

    .line 116
    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    .line 117
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update old message : publicId ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "bMsgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v0, "y"

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isP:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, "20000042"

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "y"

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, "success"

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "r"

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    move-object v0, v1

    .line 127
    goto/16 :goto_0

    .line 109
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object p0

    .line 135
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/chatsdk/db/mgr/SecurityUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 144
    :try_start_0
    const-string/jumbo v0, "drop table if exists pub_svc_message "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "articles"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->getTitle(Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTitle(Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 161
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 174
    :cond_1
    :goto_0
    return-object v0

    .line 164
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 165
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 169
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static queryChatMessageAndDrop(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 34
    const-string/jumbo v0, " select msgId,time,msgType,msgData,section,modifyTime,thirdAccountId,publicId,userId from pub_svc_message order by time desc"

    .line 41
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 42
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 58
    if-eqz v1, :cond_1

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_1
    :goto_1
    :try_start_3
    invoke-static {p0}, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dropTable"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 68
    :goto_2
    return-object v3

    .line 44
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "old msg move to next "

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    :try_start_5
    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->createChatMessage(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v5, "create message item faild"

    invoke-interface {v2, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 55
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v5, "queryChatMessage Exception "

    invoke-interface {v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v2

    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 58
    :goto_4
    if-eqz v1, :cond_3

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_3
    throw v0

    .line 65
    :catch_2
    move-exception v0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/db/mgr/OldMessageCopyHelper;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, " dropTable old table exception"

    invoke-interface {v1, v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 57
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 54
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v3, v2

    goto :goto_1
.end method
