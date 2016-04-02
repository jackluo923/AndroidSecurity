.class public Lcom/alipay/mobile/android/main/publichome/dao/impl/SearchDaoImpl;
.super Ljava/lang/Object;
.source "SearchDaoImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/publicplatform/common/api/SearchDao;


# instance fields
.field private a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/SearchDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getInstance()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/SearchDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/SearchDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    return-object v0
.end method

.method public searchFromLocal(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 38
    const-class v2, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 39
    if-nez v0, :cond_1

    move-object v0, v1

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    const-string/jumbo v2, "publicplatform"

    invoke-virtual {v0, v2, p1, v3, p2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 45
    goto :goto_0

    .line 48
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/SearchDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 54
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "select * from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    const-string/jumbo v4, " where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getKeyField()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ") and userId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " and ( pluginType IS  NULL OR pluginType <> \'sina_news\' )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 60
    if-nez v1, :cond_4

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 64
    :cond_4
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 90
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 66
    :cond_5
    :try_start_2
    new-instance v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;

    invoke-direct {v2}, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;-><init>()V

    .line 68
    const-string/jumbo v3, "avatar"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 67
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    const-string/jumbo v4, "name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    const-string/jumbo v5, "followObjectId"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "alipays://platformapi/startapp?appId=20000042&publicId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&publicName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 73
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&actionType=TARGET_LIST&sourceId=publicStoreLocalSearch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    iput-object v3, v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->iconPath:Ljava/lang/String;

    .line 77
    iput-object v4, v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->title:Ljava/lang/String;

    .line 78
    const-string/jumbo v3, "alipay"

    iput-object v3, v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->actionType:Ljava/lang/String;

    .line 79
    iput-object v6, v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->actionParams:Ljava/lang/String;

    .line 80
    const-string/jumbo v3, "imageText"

    iput-object v3, v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->showType:Ljava/lang/String;

    .line 81
    const-string/jumbo v3, "publicsearch"

    iput-object v3, v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->bizType:Ljava/lang/String;

    .line 82
    iput-object v5, v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->bizNo:Ljava/lang/String;

    .line 83
    iput-object p3, v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->userId:Ljava/lang/String;

    .line 85
    const-string/jumbo v3, "publicsearch"

    iput-object v3, v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->categrayCode:Ljava/lang/String;

    .line 86
    const-string/jumbo v3, "\u5df2\u6dfb\u52a0"

    iput-object v3, v2, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->categrayName:Ljava/lang/String;

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_6
    throw v0
.end method
