.class public Lcom/alipay/mobile/publicsvc/common/proguard/b/a;
.super Ljava/lang/Object;
.source "PPChatDaoImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/publicplatform/common/api/PPChatDao;


# instance fields
.field private a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private b:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

.field private c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

.field private d:Lcom/alipay/mobile/publicsvc/common/proguard/b/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 44
    new-instance v0, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    invoke-direct {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    .line 46
    new-instance v0, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;

    invoke-direct {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->d:Lcom/alipay/mobile/publicsvc/common/proguard/b/f;

    .line 31
    return-void
.end method

.method private a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->b:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->b:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getInstance()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->b:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->b:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    monitor-enter v1

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->b:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    iget-object v2, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 73
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearAllData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->d:Lcom/alipay/mobile/publicsvc/common/proguard/b/f;

    invoke-virtual {v1, p1, p2, v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    invoke-virtual {v1, p1, p2, v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->d(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z

    .line 96
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "LAST_OPERATE_THIRD_ACCOUNT_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteThirdAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->d:Lcom/alipay/mobile/publicsvc/common/proguard/b/f;

    .line 132
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 131
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method public getPreLoadFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;

    move-result-object v0

    return-object v0
.end method

.method public insertPubSvcAccount(Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    invoke-virtual {v1, p1, p2, v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->d:Lcom/alipay/mobile/publicsvc/common/proguard/b/f;

    iget-object v2, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mPublicId:Ljava/lang/String;

    .line 110
    iget-object v3, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mThirdPartyAccount:Ljava/util/List;

    .line 109
    invoke-virtual {v1, v2, p2, v3, v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public queryAllPublicIds(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryLastOperate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    .line 152
    const-string/jumbo v1, "LAST_OPERATE_THIRD_ACCOUNT_KEY"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method public queryPubSvcAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    .line 118
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 117
    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->d:Lcom/alipay/mobile/publicsvc/common/proguard/b/f;

    .line 121
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    .line 120
    iput-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mThirdPartyAccount:Ljava/util/List;

    .line 123
    :cond_0
    return-object v0
.end method

.method public queryPubSvcSetBean(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    .line 248
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 247
    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;

    move-result-object v0

    return-object v0
.end method

.method public savtAccountInfo(Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;
    .locals 7

    .prologue
    .line 286
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->resultCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->bizCode:I

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->layoutModel:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    if-nez v0, :cond_1

    .line 288
    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    .line 292
    :cond_1
    new-instance v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;

    invoke-direct {v2}, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;-><init>()V

    .line 293
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->layoutModel:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    iput-object v0, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mAccountLayoutInfo:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    .line 294
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->thirdAccountMenus:Ljava/util/Map;

    iput-object v0, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mThirdAccountMenus:Ljava/util/Map;

    .line 295
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->isFollow:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->isFlowed:Ljava/lang/String;

    .line 296
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->isLimitAddThird:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->isLimitAddThird:Ljava/lang/String;

    .line 297
    iget v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->bizCode:I

    iput v0, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->bizCode:I

    .line 298
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->h5LaunchStyleParams:Ljava/util/Map;

    iput-object v0, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->h5LaunchStyleParams:Ljava/util/Map;

    .line 300
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->thirdPartyAccounts:Ljava/util/List;

    .line 301
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 302
    if-eqz v0, :cond_3

    .line 303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 322
    :cond_3
    iput-object v3, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mThirdPartyAccount:Ljava/util/List;

    .line 323
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->layoutModel:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    iget-object v0, v0, Lcom/alipay/publiccore/core/model/account/LayoutModel;->publicId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mPublicId:Ljava/lang/String;

    .line 325
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->userId:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->insertPubSvcAccount(Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;Ljava/lang/String;)V

    move-object v0, v2

    .line 327
    goto :goto_0

    .line 303
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;

    .line 304
    if-eqz v1, :cond_2

    .line 305
    new-instance v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;

    invoke-direct {v5}, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;-><init>()V

    .line 308
    iget-object v0, v1, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->agreementId:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mAgreementId:Ljava/lang/String;

    .line 309
    iget-object v0, v1, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->displayName:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mDisplayName:Ljava/lang/String;

    .line 310
    iget-object v0, v1, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->realName:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mRealName:Ljava/lang/String;

    .line 311
    iget-object v0, v1, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->thirdAccountId:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mThirdAccountId:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->layoutModel:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    iget-object v0, v0, Lcom/alipay/publiccore/core/model/account/LayoutModel;->publicId:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mPublicId:Ljava/lang/String;

    .line 313
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->userId:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mUserId:Ljava/lang/String;

    .line 314
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->layoutModel:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    iget-object v0, v0, Lcom/alipay/publiccore/core/model/account/LayoutModel;->instId:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mInstId:Ljava/lang/String;

    .line 315
    iget-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mThirdAccountId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mThirdAccountMenus:Ljava/util/Map;

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mThirdAccountMenus:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mThirdAccountMenus:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/core/model/account/ButtonObjectList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/publiccore/core/model/account/ButtonObjectList;->getButtonObjects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    :goto_2
    iput-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mMenuContent:Ljava/util/List;

    .line 317
    iget-object v0, v1, Lcom/alipay/publiccore/core/model/ThirdPartyAccount;->memoName:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mRemarkName:Ljava/lang/String;

    .line 318
    iget-object v0, p1, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->layoutModel:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    iget-boolean v0, v0, Lcom/alipay/publiccore/core/model/account/LayoutModel;->proxy:Z

    iput-boolean v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->canAgented:Z

    .line 319
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 315
    :cond_5
    iget-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mMenuContent:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mMenuContent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, v5, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mMenuContent:Ljava/util/List;

    goto :goto_2

    :cond_6
    iget-object v0, v2, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mAccountLayoutInfo:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    iget-object v0, v0, Lcom/alipay/publiccore/core/model/account/LayoutModel;->button:Ljava/util/List;

    goto :goto_2
.end method

.method public updateH5PreloadTime(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    .line 281
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 280
    invoke-static {p1, p2, p3, p4, v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method public updateLastOperate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "LAST_OPERATE_THIRD_ACCOUNT_KEY"

    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/common/utils/CacheSet;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public updatePubSvcSetBean(Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    .line 255
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 254
    invoke-static {p1, p2, p3, v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 256
    return-void
.end method

.method public updatePubSvcSetPushSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    .line 262
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 261
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 263
    return-void
.end method

.method public updatePubSvcUpGisSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->c:Lcom/alipay/mobile/publicsvc/common/proguard/b/b;

    .line 269
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 268
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/publicsvc/common/proguard/b/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 270
    return-void
.end method
