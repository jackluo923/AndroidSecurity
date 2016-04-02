.class public Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/apmobilesecuritysdk/http/IUpload;


# static fields
.field private static c:Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;

.field private static d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/android/phone/mrpc/core/RpcClient;

.field mAppListCmdService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

.field mBugTrackMessageService:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

.field mDeviceFingerPrintService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->c:Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->b:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mBugTrackMessageService:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mDeviceFingerPrintService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mAppListCmdService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->a:Landroid/content/Context;

    :try_start_0
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-direct {v1}, Lcom/alipay/android/phone/mrpc/core/RpcParams;-><init>()V

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/constant/ConfigConstant;->DATA_POST_RPC_ADDRESS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->setGwUrl(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->b:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->b:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/RpcClient;->getRpcProxy(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mBugTrackMessageService:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->b:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/RpcClient;->getRpcProxy(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mDeviceFingerPrintService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->b:Lcom/alipay/android/phone/mrpc/core/RpcClient;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/RpcClient;->getRpcProxy(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mAppListCmdService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p1, v0}, Lcom/alipay/apmobilesecuritysdk/log/LOG;->logException(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 0

    sput-object p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->c:Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->c:Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;

    :cond_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->c:Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAppList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;

    invoke-direct {v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;-><init>()V

    iput-object p1, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->os:Ljava/lang/String;

    iput-object p4, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->apdid:Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->userId:Ljava/lang/String;

    iput-object p3, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mAppListCmdService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;

    invoke-interface {v2, v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/AppListCmdService;->getAppListCmd(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListCmdResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public logCollect(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mBugTrackMessageService:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mBugTrackMessageService:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->textCompress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;->logCollect(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "success"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_2
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/alipay/apmobilesecuritysdk/log/LOG;->logException(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public updateStaticData(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->mDeviceFingerPrintService:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload$1;-><init>(Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x493e0

    :goto_1
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    if-nez v1, :cond_1

    if-ltz v0, :cond_1

    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x32

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/log/LOG;->logException(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/http/RPCUpload;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    goto :goto_0
.end method
