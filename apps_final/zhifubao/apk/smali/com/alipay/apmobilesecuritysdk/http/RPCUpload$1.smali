.class Lcom/alipay/apmobilesecuritysdk/http/RPCUpload$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;

.field final synthetic val$data:Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload$1;->this$0:Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload$1;->val$data:Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload$1;->this$0:Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mDeviceFingerPrintService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload$1;->val$data:Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-interface {v0, v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;->reportStaticData(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v0

    # setter for: Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->access$002(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    invoke-direct {v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;-><init>()V

    # setter for: Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->access$002(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    # getter for: Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->access$000()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->success:Z

    # getter for: Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->access$000()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "static data rpc upload error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/log/LOG;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    goto :goto_0
.end method
