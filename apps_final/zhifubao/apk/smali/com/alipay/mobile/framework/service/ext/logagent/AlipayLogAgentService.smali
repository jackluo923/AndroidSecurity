.class public abstract Lcom/alipay/mobile/framework/service/ext/logagent/AlipayLogAgentService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "AlipayLogAgentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method public abstract writeLog(Lcom/alipay/mobile/framework/service/ext/logagent/AgentLogInfo;)V
.end method
