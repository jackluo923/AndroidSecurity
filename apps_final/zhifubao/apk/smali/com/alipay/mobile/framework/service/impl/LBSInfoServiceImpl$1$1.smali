.class Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userLocateService:Lcom/alipay/mobilelbs/rpc/locate/LocateService;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$9(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/locate/LocateService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userIpLocateRequest:Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$8(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobilelbs/rpc/locate/LocateService;->ipLocate(Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;)Lcom/alipay/mobilelbs/rpc/locate/resp/IpLocateResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$2()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onGetLBSInfoFailed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
