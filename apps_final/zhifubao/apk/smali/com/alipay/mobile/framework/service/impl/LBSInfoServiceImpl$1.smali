.class Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    return-object v0
.end method


# virtual methods
.method public onGetLBSInfoFailed(I)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    const-class v2, Lcom/alipay/mobilelbs/rpc/locate/LocateService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/rpc/locate/LocateService;

    invoke-static {v1, v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$6(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobilelbs/rpc/locate/LocateService;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    new-instance v1, Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;

    invoke-direct {v1}, Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$7(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userIpLocateRequest:Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$8(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;

    move-result-object v0

    const-string/jumbo v1, "Android-locate"

    iput-object v1, v0, Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;->appKey:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1$1;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onLBSInfoChanged(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    # invokes: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->uploadLocation(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V
    invoke-static {v0, p1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$5(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V

    return-void
.end method
