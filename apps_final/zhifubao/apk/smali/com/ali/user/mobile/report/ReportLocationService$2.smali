.class Lcom/ali/user/mobile/report/ReportLocationService$2;
.super Ljava/lang/Object;
.source "ReportLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/report/ReportLocationService;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/report/ReportLocationService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iput-object p2, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->a:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v0, v0, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportConfig;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportConfig;

    move-result-object v0

    const-string/jumbo v1, ".LocationCfg"

    const-string/jumbo v2, "unifylogin$"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/report/ReportConfig;->checkReportConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string/jumbo v0, "ReportLocationService"

    const-string/jumbo v1, "\u7981\u6b62\u62a5\u6d3b\u65f6\u95f4\uff0c\u505c\u6b62\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v1, v1, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getInstance(Landroid/content/Context;)Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getLastKnownLBSInfo()Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/report/ReportLocationService;->access$1(Lcom/ali/user/mobile/report/ReportLocationService;Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;)V

    .line 108
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    # getter for: Lcom/ali/user/mobile/report/ReportLocationService;->b:Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$2(Lcom/ali/user/mobile/report/ReportLocationService;)Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    # getter for: Lcom/ali/user/mobile/report/ReportLocationService;->b:Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$2(Lcom/ali/user/mobile/report/ReportLocationService;)Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    # getter for: Lcom/ali/user/mobile/report/ReportLocationService;->b:Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$2(Lcom/ali/user/mobile/report/ReportLocationService;)Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    const-string/jumbo v1, "viewId"

    iget-object v2, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Lcom/alipay/alideviceinfo/vo/DeviceLocationVO;

    invoke-direct {v1}, Lcom/alipay/alideviceinfo/vo/DeviceLocationVO;-><init>()V

    .line 113
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceLocationVO;->apdId:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    # getter for: Lcom/ali/user/mobile/report/ReportLocationService;->b:Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$2(Lcom/ali/user/mobile/report/ReportLocationService;)Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceLocationVO;->lbsInfo:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    # getter for: Lcom/ali/user/mobile/report/ReportLocationService;->mRpcInterface:Ljava/lang/Object;
    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->access$3(Lcom/ali/user/mobile/report/ReportLocationService;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/alideviceinfo/facade/DeviceLocationFacade;

    invoke-interface {v0, v1}, Lcom/alipay/alideviceinfo/facade/DeviceLocationFacade;->reportDeviceLocation(Lcom/alipay/alideviceinfo/vo/DeviceLocationVO;)Lcom/alipay/alideviceinfo/vo/DeviceLocationRes;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportLocationService$2;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v1, v1, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/report/ReportConfig;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportConfig;

    move-result-object v1

    const-string/jumbo v2, ".LocationCfg"

    const-string/jumbo v3, "unifylogin$"

    iget-object v0, v0, Lcom/alipay/alideviceinfo/vo/DeviceLocationRes;->clientReportConfig:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/ali/user/mobile/report/ReportConfig;->setReportConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string/jumbo v1, "ReportLocationService"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
