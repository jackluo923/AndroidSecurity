.class public interface abstract Lcom/alipay/mobile/command/api/CmdCenterFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getConfig(Ljava/lang/String;)Lcom/alipay/mobile/command/api/model/ConfigInfoRes;
    .annotation runtime Lcom/alipay/mobile/command/rpc/proxy/OperationType;
        value = "alipay.client.mobilecmdcenter.getConfig"
    .end annotation
.end method

.method public abstract getRCCommand(Lcom/alipay/mobile/command/api/model/GetRCCommandReq;)Lcom/alipay/mobile/command/api/model/GetRCCommandRes;
    .annotation runtime Lcom/alipay/mobile/command/rpc/proxy/OperationType;
        value = "alipay.client.mobilecmdcenter.getRCCommand"
    .end annotation
.end method

.method public abstract getRCTask(Lcom/alipay/mobile/command/api/model/GetRCTaskReq;)Lcom/alipay/mobile/command/api/model/GetRCTaskRes;
    .annotation runtime Lcom/alipay/mobile/command/rpc/proxy/OperationType;
        value = "alipay.client.mobilecmdcenter.getRCTask"
    .end annotation
.end method

.method public abstract reportStatus(Lcom/alipay/mobile/command/api/model/ReportStatusReq;)V
    .annotation runtime Lcom/alipay/mobile/command/rpc/proxy/OperationType;
        value = "alipay.client.mobilecmdcenter.reportStatus"
    .end annotation
.end method

.method public abstract setLog(Ljava/util/List;)V
    .annotation runtime Lcom/alipay/mobile/command/rpc/proxy/OperationType;
        value = "alipay.client.mobilecmdcenter.setLog"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract syncCommand(Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;)Lcom/alipay/mobile/command/api/model/SyncCommandMetaRes;
    .annotation runtime Lcom/alipay/mobile/command/rpc/proxy/OperationType;
        value = "alipay.client.mobilecmdcenter.syncCommand"
    .end annotation
.end method

.method public abstract syncTask(Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;)Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;
    .annotation runtime Lcom/alipay/mobile/command/rpc/proxy/OperationType;
        value = "alipay.client.mobilecmdcenter.syncTask"
    .end annotation
.end method
