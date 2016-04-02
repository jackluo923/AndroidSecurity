.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;


# static fields
.field private static final LOC_DEFAULT_VAL:I = -0x1

.field private static final MAX_LOCAL_MAC_RECORDS:J = 0x1770L

.field private static final MAX_SYNC_MAC_RECORDS:J = 0x64L

.field private static final SHOP_ICON_KEEP_TIME:J = 0x1cf7c5800L

.field private static final TAG:Ljava/lang/String; = "WifiSsidDaoImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataBaseHelper:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->mDataBaseHelper:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->mDataBaseHelper:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;-><init>(Landroid/content/Context;Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->mDataBaseHelper:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->mDataBaseHelper:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    return-object v0
.end method


# virtual methods
.method public checkSsidTableSize()V
    .locals 7

    const/4 v6, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v2

    const-wide/16 v0, 0x1770

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiLocationDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "nextWifiTime"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->getLocationX()I

    move-result v5

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->getLocationY()I

    move-result v5

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "locationx"

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->getLocationX()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "locationy"

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->getLocationY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiSsidDaoImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checkSsidTableSize count="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";removedCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiSsidDaoImpl"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public cleanWifiSynMacs()V
    .locals 5

    const-wide/16 v3, 0x64

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSyncMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSyncMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSyncMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "mac"

    invoke-virtual {v0, v3, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "cleanWifiSynMacs success"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiSsidDaoImpl"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public deletExpireBlackMac()V
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiBlackMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "expiretime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "deletExpireBlackMac success"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deletExpireOrOfflineMac(ZZ)V
    .locals 8

    const-wide/16 v6, 0x1770

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "expiretime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "status"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "status"

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "deletExpireOrOfflineMac success"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string/jumbo v4, "expiretime"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    sub-long/2addr v0, v6

    const-wide/16 v4, 0x64

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "mac"

    invoke-virtual {v0, v3, v1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deletExpireOrOfflineMac removeCache removedCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "expiretime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto/16 :goto_1

    :cond_5
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "status"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "status"

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto/16 :goto_1

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public deletOfflineSsid()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "status"

    const-string/jumbo v3, "-1"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "deletOfflineSsid success"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deletSsidMacByMacs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "mac"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "deletSsidMacByMacs success"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deletSsidMacBySsidId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "ssidid"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "deletSsidMacBySsidId success"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteOutDateShopIcon()I
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getShopIconDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0x1cf7c5800L

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->le(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteOutDateShopIcon removedCount "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "deleteOutDateShopIcon android SQLException"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "deleteOutDateShopIcon SQLException"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public deleteSsidWifiMac(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "mac"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "deleteSsidWifiMac success"

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiSsidDaoImpl"

    invoke-static {v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public insertNeedSynMacs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "insertNeedSynMacs macs:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSyncMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointOffline"

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertNeedSynMacs success"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "insertNeedSynMacs fail3"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSyncMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSsidDaoImpl"

    const-string/jumbo v4, "insertNeedSynMacs fail1"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_2
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertNeedSynMacs fail2"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public insertShopIconList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "insertShopIconList shopIconList:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getShopIconDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointOffline"

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertShopIconList success"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getShopIconDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "insertShopIconList insert fail\uff01"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getShopIconDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSsidDaoImpl"

    const-string/jumbo v4, "insertShopIconList fail\uff01"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_2
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getShopIconDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertShopIconList rollback fail\uff01"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getShopIconDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public insertWifiBlackMacList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "insertWifiBlackMacList blackList:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "WifiSsidDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insertWifiBlackMacList blackList size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiBlackMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointOffline"

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertWifiBlackMacList success"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiBlackMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "insertWifiBlackMacList fail3"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiBlackMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSsidDaoImpl"

    const-string/jumbo v4, "insertWifiBlackMacList fail1"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_2
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiBlackMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_7
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertWifiBlackMacList fail2"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiBlackMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public insertWifiLocationList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "insertWifiLocationList wifiLocationList:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "WifiSsidDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insertWifiLocationList wifiLocationList size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiLocationDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointOffline"

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertWifiLocationList success"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiLocationDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "insertWifiLocationList fail3"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiLocationDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSsidDaoImpl"

    const-string/jumbo v4, "insertWifiLocationList fail1"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_2
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiLocationDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertWifiLocationList fail2"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiLocationDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public insertWifiMacList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "insertWifiMacList wifiSsidMacList:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "WifiSsidDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insertWifiMacList wifiSsidMacList size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointOffline"

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertWifiMacList success"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "insertWifiMacList fail3"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSsidDaoImpl"

    const-string/jumbo v4, "insertWifiMacList fail1"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_2
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertWifiMacList fail2"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public insertWifiSsidList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "insertWifiSsidList wifiSsidList:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "WifiSsidDaoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insertWifiSsidList wifiSsidList size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointOffline"

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->queryWifiSsidBySsidIdList(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v2, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v1, "insertWifiSsidList success"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "insertWifiSsidList fail3"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getSsidId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v4, "insertWifiSsidList fail1"

    invoke-static {v1, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-interface {v2, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_3
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :cond_6
    :try_start_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getSsidId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setTimeStamp(J)V

    :cond_7
    const-string/jumbo v1, "WifiSsidDaoImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[insertWifiSsidList]"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_2
    move-exception v0

    :try_start_9
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertWifiSsidList fail2"

    invoke-static {v1, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3
.end method

.method public queryNeedSynMacs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSyncMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryNeedSynMacs list size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryOfflineWifiByKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiSsidDaoImpl"

    invoke-static {v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public queryOfflineWifiSsid()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "status"

    const-string/jumbo v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[queryOfflineWifiSsid]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryShopIconByShopIdList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ShopIcon;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getShopIconDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "shopid"

    invoke-virtual {v0, v2, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "WifiSsidDaoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "queryShopIconBySignList success shopIconList size "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiSsidDaoImpl"

    invoke-static {v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public queryWifiBlackMacByMacList(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiBlackMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v3, "mac"

    invoke-virtual {v1, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "WifiSsidDaoImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "queryWifiBlackMacByMacList success list size "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_2

    move-object v1, v0

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiSsidDaoImpl"

    invoke-static {v3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public queryWifiLocation(II)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiLocationDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "locationx"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "locationy"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "SQLException in queryWifiLocation"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public queryWifiSsidBySsidIdList(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "ssidid"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiSsidDaoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryWifiSsidBySsidIdList success\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_3
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiSsidDaoImpl"

    invoke-static {v3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getSsidId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public queryWifiSsidBySsidList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v2, "queryWifiSsidBySsidList success"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v2, "queryWifiSsidBySsidList wifiSsidList:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v4}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string/jumbo v6, "ssid"

    invoke-virtual {v5, v6, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string/jumbo v6, "status"

    const-string/jumbo v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v5

    invoke-virtual {v4, v0}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "SQLException in queryWifiSsidBySsidList"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public queryWifiSsidMacByMac(Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "mac"

    invoke-virtual {v0, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiSsidDaoImpl"

    invoke-static {v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public queryWifiSsidMacByMacList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "mac"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "queryWifiSsidMacByMacList wifiSsidMacList:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "SQLException in queryWifiSsidMacByMacList"

    invoke-static {v2, v3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public updateSsidMacExpireTime(Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointTime"

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v3, "updateSsidMacExpireTime success"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "updateSsidMacExpireTime fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string/jumbo v0, "expiretime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v7, "ssidid"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSsidDaoImpl"

    const-string/jumbo v4, "updateSsidMacExpireTime fail"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_2
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "updateSsidMacExpireTime fail"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidMacDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public updateSsidMatchType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointMatchType"

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    const-string/jumbo v3, "matchtype"

    invoke-virtual {v0, v3, p2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "matchtype"

    invoke-virtual {v3, v4, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v3, "updateSsidMatchType success"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiSsidDaoImpl"

    const-string/jumbo v4, "updateSsidMatchType fail"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    :try_start_5
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "updateSsidMatchType fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "insertWifiMacList fail"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
.end method

.method public updateSsidTimeStamp(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointTime"

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v3, "updateSsidTimeStamp success"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "updateSsidTimeStamp fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;

    iget-wide v5, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->timestamp:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    const-string/jumbo v5, "timestamp"

    iget-wide v6, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string/jumbo v6, "ssidid"

    iget-wide v7, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "WifiSsidDaoImpl"

    const-string/jumbo v4, "updateSsidTimeStamp fail"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :try_start_5
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :goto_2
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "updateSsidTimeStamp fail"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public updateSsidTimeStampBySsidIdList(Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointTime"

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiSsidDaoImpl"

    const-string/jumbo v3, "updateSsidTimeStampBySsidIdList success"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidDaoImpl"

    const-string/jumbo v2, "updateSsidTimeStampBySsidIdList fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string/jumbo v0, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v7, "ssidid"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSsidDaoImpl"

    const-string/jumbo v4, "updateSsidTimeStampBySsidIdList fail"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_2
    :try_start_6
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "WifiSsidDaoImpl"

    const-string/jumbo v3, "updateSsidTimeStampBySsidIdList fail"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/WifiRouterDataBaseHelper;->getWifiSsidDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method
