.class public Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->a:Z

    iput-boolean v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->f:Z

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->e:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->success:Z

    iput-boolean v2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->a:Z

    iget-object v2, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->token:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->appListVer:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->g:Ljava/lang/String;

    const-string/jumbo v2, "1"

    iget-object v3, p1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->bugTrackSwitch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->f:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppListVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->f:Z

    return v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->a:Z

    return v0
.end method

.method public isTrueSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ResponseModel;->a:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
