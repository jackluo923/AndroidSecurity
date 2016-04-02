.class Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;
.super Ljava/lang/Object;
.source "SplashGetter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/splash/SplashGetter;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/quinox/splash/SplashGetter;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;->this$0:Lcom/alipay/mobile/quinox/splash/SplashGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/splash/SplashGetter;Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;-><init>(Lcom/alipay/mobile/quinox/splash/SplashGetter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/quinox/splash/SplashSqlDbHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/splash/SplashSqlDbHelper;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;->this$0:Lcom/alipay/mobile/quinox/splash/SplashGetter;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;->this$0:Lcom/alipay/mobile/quinox/splash/SplashGetter;

    # getter for: Lcom/alipay/mobile/quinox/splash/SplashGetter;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->access$0(Lcom/alipay/mobile/quinox/splash/SplashGetter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/splash/SplashSqlDbHelper;->findSpaceObjectInfoBySql(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->access$1(Lcom/alipay/mobile/quinox/splash/SplashGetter;Ljava/util/List;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/SplashGetter$SyncDbTask;->this$0:Lcom/alipay/mobile/quinox/splash/SplashGetter;

    # getter for: Lcom/alipay/mobile/quinox/splash/SplashGetter;->dbList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->access$2(Lcom/alipay/mobile/quinox/splash/SplashGetter;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method
