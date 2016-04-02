.class public abstract Lcom/alipay/mobile/personalbase/service/PinyinSearchService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "PinyinSearchService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPinyinStringArray(C)[Ljava/lang/String;
.end method

.method public abstract loadPinyinLib()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 15
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "PinyinSearchService onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "PinyinSearchService onDestroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public abstract releasePinyinLib()V
.end method
