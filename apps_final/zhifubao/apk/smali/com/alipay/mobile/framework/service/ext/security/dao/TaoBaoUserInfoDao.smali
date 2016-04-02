.class public Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "userInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/security/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setTaoBaoUserId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "userInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/security/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setUserId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addTaoBaoUserInfo(Lcom/j256/ormlite/dao/Dao;Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "userInfo"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setTaoBaoUserId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "userInfo"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setUserId(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    return-void
.end method

.method public deleteTaobaoUserInfo(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "taoBaoUserId"

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "userInfo"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public deleteTaobaoUserInfoByUserId(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "userId"

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "userInfo"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findTaobaoUserInfo(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "taoBaoUserId"

    const-string/jumbo v3, "userInfo"

    invoke-static {p2, v3}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->queryForFieldValuesArgs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V

    return-object v0
.end method

.method public queryTaobaoUserList(Lcom/j256/ormlite/dao/Dao;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "loginTime"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/ext/security/dao/TaoBaoUserInfoDao;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V

    goto :goto_0
.end method
