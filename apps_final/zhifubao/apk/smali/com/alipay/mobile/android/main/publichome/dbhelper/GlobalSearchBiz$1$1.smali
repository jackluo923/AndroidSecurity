.class Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;
.super Ljava/lang/Object;
.source "GlobalSearchBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

.field private final synthetic b:Ljava/lang/String;

.field final synthetic this$1:Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->this$1:Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    iput-object p3, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->b:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 53
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    if-nez v1, :cond_0

    .line 56
    const-string/jumbo v1, "publicplatform"

    .line 57
    iget-object v3, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "select * from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    const-string/jumbo v3, " where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getKeyField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " in ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    iget-object v3, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") and userId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64
    iget-object v3, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->this$1:Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;

    # getter for: Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;->this$0:Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;
    invoke-static {v3}, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;->access$0(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;)Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;

    move-result-object v3

    # getter for: Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->userId:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->access$0(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " and (pluginType IS  NULL OR pluginType <> \'sina_news\' )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    const-string/jumbo v4, "search"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "publicservice excute sql :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getInstance()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 71
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 91
    :cond_1
    if-eqz v2, :cond_2

    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_2
    :goto_2
    const-string/jumbo v1, "publicplatform"

    iget-object v2, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->b:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v3, v1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_3
    :try_start_1
    new-instance v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 73
    const-string/jumbo v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    iget-object v5, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->b:Ljava/lang/String;

    .line 76
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const-string/jumbo v7, "#00AAFF"

    .line 75
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    .line 79
    const-string/jumbo v4, "avatar"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 78
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    .line 81
    const-string/jumbo v4, "followObjectId"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 80
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    # getter for: Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->ParamPrefix:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->access$1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    iput-object v5, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 84
    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->b:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->queryWord:Ljava/lang/String;

    .line 86
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 88
    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-eqz v2, :cond_2

    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    if-eqz v2, :cond_4

    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_4
    throw v0
.end method
