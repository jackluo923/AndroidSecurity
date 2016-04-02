.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;
.source "AppDao.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "AppDao"

.field private static instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;


# instance fields
.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;-><init>()V

    .line 17
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->userId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    .line 25
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    return-object v0
.end method


# virtual methods
.method public getAllApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .line 39
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/a;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 38
    return-object v0
.end method

.method public getApkAppPackages()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/c;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
    .locals 1

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/d;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/d;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    goto :goto_0
.end method

.method public getAppListByAppRanks(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    :goto_0
    return-object v0

    .line 100
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/e;

    invoke-direct {v0, p0, v1, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/e;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 101
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 103
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getAppListByIds(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/f;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/f;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;ZLjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 397
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/b;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 405
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeAppEntityById(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 394
    return-void
.end method

.method public saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/g;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/g;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public saveOrUpdateAppEntitys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Ljava/util/List;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 308
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->userId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public updatePreinstallApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/j;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/j;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Ljava/util/List;)V

    .line 371
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 372
    return-void
.end method
