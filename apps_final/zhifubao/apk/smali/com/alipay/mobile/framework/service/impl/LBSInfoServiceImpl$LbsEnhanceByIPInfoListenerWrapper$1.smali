.class Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    new-instance v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-direct {v1}, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v3, Lcom/alipay/mobilelbs/rpc/locate/LocateService;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/rpc/locate/LocateService;

    new-instance v3, Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;

    invoke-direct {v3}, Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    iget-object v4, v4, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->appKeyString:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;->appKey:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/alipay/mobilelbs/rpc/locate/LocateService;->ipLocate(Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;)Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->success:Z

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->cityName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->city:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->cityAdCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->adCode:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->provinceName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->province:Ljava/lang/String;

    iget-wide v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->latitude:D

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    iget-wide v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->longitude:D

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    iget-wide v2, v0, Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;->accuracy:D

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    move-result-object v0

    # invokes: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildGSMInfo()Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$1(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->gsmInfos:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    move-result-object v0

    # invokes: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildCDMAInfo()Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$3(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->cdmaInfos:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    move-result-object v0

    # invokes: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildWifiInfo()Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$4(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->wifiInfos:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1$1;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilelbs/rpc/user/UserService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/rpc/user/UserService;

    new-instance v2, Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;

    invoke-direct {v2}, Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    iget-object v3, v3, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->appKeyString:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;->appKey:Ljava/lang/String;

    iput-object v8, v2, Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;->startTime:Ljava/util/Date;

    iput-object v8, v2, Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;->endTime:Ljava/util/Date;

    invoke-interface {v0, v2}, Lcom/alipay/mobilelbs/rpc/user/UserService;->getUserResidentPoints(Lcom/alipay/mobilelbs/rpc/user/req/UserResidentPointRequest;)Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->success:Z

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;

    iget-object v0, v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;->cityName:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->city:Ljava/lang/String;

    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;

    iget-object v0, v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;->cityAdCode:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->adCode:Ljava/lang/String;

    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;

    iget-object v0, v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;->provinceName:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->province:Ljava/lang/String;

    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;

    iget-wide v3, v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;->latitude:D

    iput-wide v3, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    iget-object v0, v2, Lcom/alipay/mobilelbs/rpc/user/resp/UserResidentPointResponse;->userResidentPoints:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;

    iget-wide v2, v0, Lcom/alipay/mobilelbs/core/model/user/UserResidentPoint;->longitude:D

    iput-wide v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    goto/16 :goto_0

    :cond_1
    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    iput-wide v5, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D

    goto/16 :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "buildGSMInfo error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v0

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "buildCDMAInfo error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_2
    move-exception v0

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "buildWifiInfo error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
