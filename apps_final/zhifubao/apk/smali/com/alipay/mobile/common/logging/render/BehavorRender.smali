.class public Lcom/alipay/mobile/common/logging/render/BehavorRender;
.super Lcom/alipay/mobile/common/logging/render/BaseRender;
.source "BehavorRender.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/render/BaseRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string/jumbo v1, "D-VM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :goto_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getStatusMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getAppID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :goto_1
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getViewID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getRefViewID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getSeedID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getBehaviourPro()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLogPro()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getParam1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getParam2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getParam3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLegacyParam()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLegacyParam()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "pageSerial"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getUserCaseID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "refViewID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "viewID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getTrackId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :goto_3
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getTrackToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getTrackToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_4
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getTrackDesc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 144
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getTrackDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_5
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 157
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    const-string/jumbo v1, "event"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "appID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 104
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getExtParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "actionID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 139
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "actionToken"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 146
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "actionDesc"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method
