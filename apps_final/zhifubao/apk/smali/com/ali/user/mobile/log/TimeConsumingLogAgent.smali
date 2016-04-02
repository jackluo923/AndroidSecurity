.class public Lcom/ali/user/mobile/log/TimeConsumingLogAgent;
.super Ljava/lang/Object;
.source "TimeConsumingLogAgent.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->a:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 20
    iput-object p3, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->c:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->e:J

    .line 37
    iget-wide v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->e:J

    iget-wide v2, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->d:J

    sub-long/2addr v0, v2

    .line 38
    iget-object v2, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    if-nez v2, :cond_0

    .line 39
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliuserTimeConsumingLogAgent"

    const-string/jumbo v2, "behaviour==null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 44
    iget-object v3, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getSdkId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppVersion(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatus(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatusMsg(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v3, "c"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLogPro(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v3, "timespan"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "biz"

    invoke-virtual {v2, v0, p5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "token"

    invoke-virtual {v2, v0, p6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->b:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    invoke-virtual {v1}, Lcom/ali/user/mobile/log/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_0
.end method

.method public logStart()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/mobile/log/TimeConsumingLogAgent;->d:J

    .line 25
    return-void
.end method
