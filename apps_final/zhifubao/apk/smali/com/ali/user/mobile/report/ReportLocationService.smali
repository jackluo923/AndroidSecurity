.class public Lcom/ali/user/mobile/report/ReportLocationService;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "ReportLocationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/alideviceinfo/facade/DeviceLocationFacade;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/ali/user/mobile/report/ReportLocationService;


# instance fields
.field private b:Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

.field protected mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getMobileGW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/rpc/RpcManager;->getRpcFactory2(Landroid/content/Context;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/IRpcFactory;

    move-result-object v0

    const-class v1, Lcom/alipay/alideviceinfo/facade/DeviceLocationFacade;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/rpc/IRpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/alideviceinfo/facade/DeviceLocationFacade;

    iput-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService;->mRpcInterface:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/report/ReportLocationService;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/report/ReportLocationService$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/report/ReportLocationService$2;-><init>(Lcom/ali/user/mobile/report/ReportLocationService;Ljava/lang/String;)V

    const-string/jumbo v2, "aliuser.reportLocation"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/report/ReportLocationService;Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ali/user/mobile/report/ReportLocationService;->b:Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    return-void
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/report/ReportLocationService;)Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService;->b:Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/report/ReportLocationService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService;->mRpcInterface:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportLocationService;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/ali/user/mobile/report/ReportLocationService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/report/ReportLocationService;->a:Lcom/ali/user/mobile/report/ReportLocationService;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/ali/user/mobile/report/ReportLocationService;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/report/ReportLocationService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/report/ReportLocationService;->a:Lcom/ali/user/mobile/report/ReportLocationService;

    .line 51
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/report/ReportLocationService;->a:Lcom/ali/user/mobile/report/ReportLocationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLocation()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService;->b:Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    return-object v0
.end method

.method public reportLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/report/ReportLocationService;->wait4Location(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public wait4Location(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/ali/user/mobile/report/ReportLocationService$1;

    invoke-direct {v3, p0, p1}, Lcom/ali/user/mobile/report/ReportLocationService$1;-><init>(Lcom/ali/user/mobile/report/ReportLocationService;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;ZLcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 83
    return-void
.end method
