.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;
.source "FastLoginAppDao.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MyAppDao"

.field private static instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;-><init>()V

    .line 17
    return-void
.end method

.method public static getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    .line 22
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    return-object v0
.end method


# virtual methods
.method public addToFastLogin(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->addToFastLogin(Ljava/util/List;)V

    .line 138
    :cond_0
    return-void
.end method

.method public addToFastLogin(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/s;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/s;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;Ljava/util/List;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAllFastLoginApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .line 32
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/o;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 31
    return-object v0
.end method

.method public getAllFastLoginIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/p;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/p;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public isAddedToFastLogin(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removeAllApps()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/r;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/r;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public removeFastLoginById(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/q;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/q;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 85
    return-void
.end method
