.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/m;
.super Ljava/lang/Object;
.source "AppDbHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

.field private final synthetic b:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/m;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/m;->b:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 243
    :try_start_0
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "openPlatfrom start index !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-wide/16 v0, 0x1770

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/m;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/m;->b:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;I)V

    .line 246
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 247
    const-string/jumbo v1, "open_platform_apps.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/m;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    # getter for: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->access$1(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v1

    const-string/jumbo v2, "open_platform_apps.db"

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/m;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    # getter for: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mDbConnection:I
    invoke-static {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->access$2(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 250
    const-string/jumbo v0, "name"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    const-string/jumbo v0, "desc"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/m;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    # getter for: Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->access$1(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    const-string/jumbo v1, "app"

    const-string/jumbo v2, "open_platform_apps.db"

    const-string/jumbo v3, "AppEntity"

    const-string/jumbo v4, "appId"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    goto :goto_0
.end method
