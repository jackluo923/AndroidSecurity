.class public interface abstract Lcom/alipay/aggrbillinfo/biz/dataservice/job/TaskOperationService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract completeAction(Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionCompleteInfo;)Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.job.completeAction"
    .end annotation
.end method

.method public abstract findTaskStatus(Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.job.findTaskStatus"
    .end annotation
.end method

.method public abstract refreshCaptcha(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/CaptchaResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.job.refreshCaptcha"
    .end annotation
.end method
