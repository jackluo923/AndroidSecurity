.class public Lcom/alipay/mobile/framework/service/ext/security/dao/DeviceInfoSecurityDao;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDeviceInfo(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    return-void
.end method

.method public findDeviceInfoSecurity(Lcom/j256/ormlite/dao/Dao;)Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;

    :cond_0
    return-object v0
.end method
