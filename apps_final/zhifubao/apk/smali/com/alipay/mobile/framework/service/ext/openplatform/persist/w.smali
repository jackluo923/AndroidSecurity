.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;
.super Ljava/lang/Object;
.source "OpenplatformQueryListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;

.field private final synthetic b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->c:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 91
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    if-nez v1, :cond_0

    .line 94
    const-string/jumbo v1, "app"

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->c:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "select * from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    const-string/jumbo v3, " where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getKeyField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " in ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;

    invoke-static {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    move-result-object v4

    # getter for: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->db:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    invoke-static {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 105
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 140
    :cond_2
    if-eqz v2, :cond_3

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_3
    :goto_2
    const-string/jumbo v1, "app"

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->c:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v3, v1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v0, "search_app"

    const-string/jumbo v1, "application search over"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_4
    :try_start_1
    const-string/jumbo v1, "extra"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 106
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    const-string/jumbo v1, "status"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 108
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;

    invoke-static {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    move-result-object v5

    # invokes: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->checkOnLineStatus(Ljava/lang/String;)Z
    invoke-static {v5, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$1(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->checkCanSearch(Ljava/lang/String;)Z
    invoke-static {v1, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$2(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    new-instance v5, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 115
    const-string/jumbo v1, "name"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 114
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->c:Ljava/lang/String;

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const-string/jumbo v8, "#00AAFF"

    .line 117
    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    iput-object v1, v5, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    .line 120
    const-string/jumbo v1, "iconUrl"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 119
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "appId"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 121
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    # getter for: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$3()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 125
    # getter for: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->securityMap:Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$3()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "alipays://platformapi/startapp?appId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    iget-object v6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;

    invoke-static {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    move-result-object v6

    # invokes: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->addSchemaPramas(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$4(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "&sourceId=globalsearch"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    iput-object v1, v5, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 131
    const-string/jumbo v1, "appId"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 130
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    .line 132
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 135
    :catch_0
    move-exception v1

    .line 136
    :try_start_2
    const-string/jumbo v4, "search_app"

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "application search error"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    if-eqz v2, :cond_3

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    if-eqz v2, :cond_6

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_6
    throw v0
.end method
