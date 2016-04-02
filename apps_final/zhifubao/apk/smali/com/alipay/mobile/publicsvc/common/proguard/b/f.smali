.class public final Lcom/alipay/mobile/publicsvc/common/proguard/b/f;
.super Lcom/alipay/mobile/publicsvc/common/proguard/b/e;
.source "PubSvcThirdAccountTable.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/e;-><init>()V

    .line 23
    const-string/jumbo v0, "pub_svc_third_account"

    iput-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 32
    const-string/jumbo v0, "publicId"

    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mPublicId:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "userId"

    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "agreementId"

    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mAgreementId:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "displayName"

    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mDisplayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "realName"

    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mRealName:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "remarkName"

    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mRemarkName:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, ""

    .line 39
    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mMenuContent:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 40
    iget-object v0, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mMenuContent:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_0
    const-string/jumbo v4, "menuContent"

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "thirdAccountId"

    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mThirdAccountId:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 49
    :goto_0
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v0, v2

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    .line 63
    const-string/jumbo v0, " select agreementId,displayName,realName,menuContent,thirdAccountId,remarkName from pub_svc_third_account where publicId=? and userId=?"

    .line 67
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p3, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 69
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 92
    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 96
    :cond_1
    :goto_1
    return-object v0

    .line 70
    :cond_2
    :try_start_2
    new-instance v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;

    invoke-direct {v3}, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;-><init>()V

    .line 71
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mAgreementId:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mDisplayName:Ljava/lang/String;

    .line 73
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mRealName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mMenuContent:Ljava/util/List;

    .line 83
    :goto_2
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mThirdAccountId:Ljava/lang/String;

    .line 84
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mRemarkName:Ljava/lang/String;

    .line 85
    iput-object p1, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mPublicId:Ljava/lang/String;

    .line 86
    iput-object p2, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mUserId:Ljava/lang/String;

    .line 87
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 90
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    if-eqz v2, :cond_1

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 79
    :cond_3
    :try_start_4
    new-instance v4, Lcom/alipay/mobile/publicsvc/common/proguard/b/g;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/g;-><init>(Lcom/alipay/mobile/publicsvc/common/proguard/b/f;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/alibaba/fastjson/parser/Feature;

    .line 78
    invoke-static {v0, v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    iput-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mMenuContent:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    if-eqz v2, :cond_4

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_4
    throw v0

    .line 89
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;",
            ">;",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z

    .line 55
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 58
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;

    .line 56
    invoke-direct {p0, v0, p4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "delete from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 117
    const-string/jumbo v3, " where publicId=? and userId=? and thirdAccountId=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {p4, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_0
    monitor-exit p0

    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 123
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "delete from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    const-string/jumbo v3, " where publicId=? and userId=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
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

    .line 109
    :goto_0
    monitor-exit p0

    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 109
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
