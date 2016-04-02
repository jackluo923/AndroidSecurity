.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "alipayclient_nfdservice.db"

.field private static final DATABASE_VERSION:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mShopIconDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSsidDao:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

.field private mWifiBlackMacDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiLocationDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiSsidDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiSsidMacDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiSyncMacDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "alipayclient_nfdservice.db"

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSsidDao:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSsidMacDao:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiBlackMacDao:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiLocationDao:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mShopIconDao:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSyncMacDao:Lcom/j256/ormlite/dao/Dao;

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "WifiRouterDataBaseHelper construct"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mSsidDao:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSsidDao:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSsidMacDao:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiLocationDao:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mShopIconDao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

.method public getShopIconDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mShopIconDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mShopIconDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mShopIconDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getWifiBlackMacDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiBlackMacDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiBlackMacDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiBlackMacDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getWifiLocationDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiLocationDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiLocationDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiLocationDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSsidDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSsidDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSsidDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSsidMacDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSsidMacDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSsidMacDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getWifiSyncMacDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSyncMacDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSyncMacDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mWifiSyncMacDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method protected onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "nfdbiz wifi db onCreate"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u6570\u636e\u5e93\u521b\u5efa\u51fa\u9519\uff01"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 5

    const/4 v4, 0x7

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onUpgrade oldVersion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";newVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    if-gt p3, v1, :cond_0

    if-lt p4, v4, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    const/4 v0, 0x1

    :cond_0
    if-ne p3, v4, :cond_1

    const/16 v1, 0x8

    if-lt p4, v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mSsidDao:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mSsidDao:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    const-string/jumbo v2, "3"

    const-string/jumbo v3, "4"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->updateSsidMatchType(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi_update_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "prefs_nfd_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "database upgrade failed"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
