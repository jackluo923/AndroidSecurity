.class final Lcom/alipay/android/phone/messageboxstatic/biz/b;
.super Ljava/lang/Object;
.source "GlobalSearchBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxstatic/biz/a;

.field private final synthetic b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxstatic/biz/a;Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->a:Lcom/alipay/android/phone/messageboxstatic/biz/a;

    iput-object p2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    iput-object p3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->c:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 42
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 43
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    if-nez v1, :cond_0

    .line 44
    const-string/jumbo v1, "message_box"

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "select * from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getKeyField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " in ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") and userId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->a:Lcom/alipay/android/phone/messageboxstatic/biz/a;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxstatic/biz/a;->a(Lcom/alipay/android/phone/messageboxstatic/biz/a;)Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;

    move-result-object v3

    # getter for: Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->userId:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;->access$0(Lcom/alipay/android/phone/messageboxstatic/biz/GlobalSearchBiz;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string/jumbo v3, "search"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "messageBox qurey : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getHelperInstance()Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/messageboxstatic/biz/db/MessageboxDBHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 55
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 79
    :cond_1
    if-eqz v2, :cond_2

    .line 80
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_2
    :goto_2
    const-string/jumbo v1, "message_box"

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_3
    :try_start_1
    new-instance v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 58
    const-string/jumbo v4, "title"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    iget-object v5, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const-string/jumbo v7, "#00AAFF"

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    .line 60
    const-string/jumbo v4, "iconLink"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    .line 61
    const-string/jumbo v4, "msgId"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    .line 62
    const-string/jumbo v4, "action"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "alipays://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "&sourceId=globalsearch"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 68
    :goto_3
    const-string/jumbo v4, "content"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    .line 69
    const-string/jumbo v4, "WALLET-SEARCH|MessageBoxCell"

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    .line 70
    iget-object v4, p0, Lcom/alipay/android/phone/messageboxstatic/biz/b;->c:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->queryWord:Ljava/lang/String;

    .line 71
    const-string/jumbo v4, "gmtCreate"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 72
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->timestamp:Ljava/lang/String;

    .line 73
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 76
    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    if-eqz v2, :cond_2

    .line 80
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 66
    :cond_4
    :try_start_3
    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    if-eqz v2, :cond_5

    .line 80
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_5
    throw v0
.end method
