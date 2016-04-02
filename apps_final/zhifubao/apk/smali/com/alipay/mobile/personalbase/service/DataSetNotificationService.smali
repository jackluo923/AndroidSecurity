.class public abstract Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "DataSetNotificationService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 17
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "DataSetNotificationService onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "DataSetNotificationService onDestroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V
.end method

.method public abstract unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V
.end method
