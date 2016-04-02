.class public final Lcom/alipay/mobile/publicsvc/common/proguard/b/b;
.super Lcom/alipay/mobile/publicsvc/common/proguard/b/e;
.source "PubSvcAccountTable.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/e;-><init>()V

    .line 30
    const-string/jumbo v0, "pub_svc_account"

    iput-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method protected static a(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "select publicId from pub_svc_account where userId=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 41
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 48
    :cond_0
    if-eqz v1, :cond_1

    .line 49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_1
    :goto_1
    return-object v2

    .line 42
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    if-eqz v1, :cond_1

    .line 49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    if-eqz v1, :cond_3

    .line 49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_3
    throw v0
.end method

.method protected static a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 93
    const-string/jumbo v0, ""

    .line 94
    if-eqz p0, :cond_0

    .line 96
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v1, "update pub_svc_account set pubSvcSetBean=? where publicId=? and userId=?"

    .line 103
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 104
    aput-object p1, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    .line 103
    invoke-virtual {p3, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_1
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/publiccore/core/model/account/LayoutModel;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "select publicId from pub_svc_account where publicId=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' and userId=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 185
    const-string/jumbo v4, "update pub_svc_account set layoutModel = ? where publicId=? and userId=?"

    .line 187
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    .line 188
    aput-object p2, v5, v3

    .line 186
    invoke-virtual {p3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-eqz v2, :cond_0

    .line 196
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    if-eqz v2, :cond_1

    .line 196
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move v0, v1

    .line 199
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    if-eqz v2, :cond_2

    .line 196
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_2
    throw v0

    .line 195
    :cond_3
    if-eqz v2, :cond_1

    .line 196
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "select publicId from pub_svc_account where publicId=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' and userId=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p4, v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 246
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 247
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 248
    const-string/jumbo v3, "update pub_svc_account set h5preloadTime = ? where publicId=? and userId=?"

    .line 251
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 252
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    .line 249
    invoke-virtual {p4, v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    if-eqz v2, :cond_0

    .line 260
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    if-eqz v2, :cond_1

    .line 260
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move v0, v1

    .line 263
    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    if-eqz v2, :cond_2

    .line 260
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_2
    throw v0

    .line 259
    :cond_3
    if-eqz v2, :cond_1

    .line 260
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected static c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 270
    .line 273
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "select h5preloadTime,pubSvcSetBean from pub_svc_account where publicId=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' and userId=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 276
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 277
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 278
    new-instance v1, Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;

    invoke-direct {v1}, Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 280
    iput-wide v3, v1, Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;->h5preloadTime:J

    .line 281
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;->needPreLoadSet:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 292
    :goto_0
    if-eqz v2, :cond_0

    .line 293
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 296
    :cond_1
    :goto_1
    return-object v0

    .line 285
    :cond_2
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v1, Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;->needPreLoadSet:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 290
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 292
    if-eqz v2, :cond_1

    .line 293
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 291
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 292
    :goto_3
    if-eqz v2, :cond_3

    .line 293
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_3
    throw v0

    .line 292
    :cond_4
    if-eqz v2, :cond_1

    .line 293
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 291
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 289
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 59
    .line 62
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "select pubSvcSetBean from pub_svc_account where publicId=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' and userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 65
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 66
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v3, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;-><init>(Lcom/alipay/mobile/publicsvc/common/proguard/b/b;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :goto_0
    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_0
    :goto_1
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 73
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    if-eqz v2, :cond_2

    .line 76
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 75
    :goto_3
    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_1
    throw v0

    .line 74
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 72
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0, p2, p3, p4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    iget-object v1, v1, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->pushSwitch:Ljava/lang/String;

    .line 123
    invoke-static {v1, p1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    iput-object p1, v1, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->pushSwitch:Ljava/lang/String;

    .line 128
    invoke-static {v0, p2, p3, p4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method protected final a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 154
    .line 156
    :try_start_0
    iget-object v1, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mPublicId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mAccountLayoutInfo:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    invoke-static {v1, v2, p2, p3}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Ljava/lang/String;Lcom/alipay/publiccore/core/model/account/LayoutModel;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    if-nez v1, :cond_1

    .line 159
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 160
    const-string/jumbo v3, "publicId"

    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mPublicId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v3, "layoutModel"

    .line 163
    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mAccountLayoutInfo:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .line 165
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 205
    .line 208
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "select layoutModel from pub_svc_account where publicId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' and userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 211
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 212
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    new-instance v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;

    invoke-direct {v3}, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 214
    :try_start_2
    iput-object p1, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mPublicId:Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v2, Lcom/alipay/mobile/publicsvc/common/proguard/b/d;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/d;-><init>(Lcom/alipay/mobile/publicsvc/common/proguard/b/b;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/Feature;

    .line 216
    invoke-static {v0, v2, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/core/model/account/LayoutModel;

    iput-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mAccountLayoutInfo:Lcom/alipay/publiccore/core/model/account/LayoutModel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v3

    .line 223
    :goto_0
    if-eqz v1, :cond_0

    .line 224
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_0
    :goto_1
    return-object v0

    .line 220
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 221
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    if-eqz v2, :cond_0

    .line 224
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    :goto_3
    if-eqz v2, :cond_1

    .line 224
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_1
    throw v0

    .line 222
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 220
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0, p2, p3, p4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    iget-object v1, v1, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->uploadGisSwitch:Ljava/lang/String;

    .line 144
    invoke-static {v1, p1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    iput-object p1, v1, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->uploadGisSwitch:Ljava/lang/String;

    .line 149
    invoke-static {v0, p2, p3, p4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method protected final declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "delete from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    const-string/jumbo v3, " where publicId=? and userId=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p3, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :goto_0
    monitor-exit p0

    return v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 310
    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
