.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;
.super Ljava/lang/Object;
.source "AppDao.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;->b:Ljava/util/List;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    return-object v0
.end method


# virtual methods
.method public final excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getAppEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;->b:Ljava/util/List;

    invoke-direct {v1, p0, v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;Ljava/util/List;Lcom/j256/ormlite/dao/Dao;)V

    .line 303
    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 304
    const/4 v0, 0x0

    return-object v0
.end method
