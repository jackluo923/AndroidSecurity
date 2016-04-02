.class public Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;
.super Ljava/lang/Object;
.source "BehavorloggerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;


# instance fields
.field private a:Lcom/alipay/mobile/common/logging/LogContextImpl;

.field private b:Lcom/alipay/mobile/common/logging/render/BehavorRender;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 30
    new-instance v0, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 31
    return-void
.end method


# virtual methods
.method public autoClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 7

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "autouserbehavor"

    const-class v3, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    const-string/jumbo v6, "auto_click"

    invoke-virtual {v5, v6, p1}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 78
    return-void
.end method

.method public autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 7

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "autouserbehavor"

    const-class v3, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    const-string/jumbo v6, "auto_openPage"

    invoke-virtual {v5, v6, p1}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 70
    return-void
.end method

.method public click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 7

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "userbehavor"

    const-class v3, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    const-string/jumbo v6, "clicked"

    invoke-virtual {v5, v6, p1}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 39
    return-void
.end method

.method public event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "userbehavor"

    const-class v3, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-virtual {v5, p1, p2}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 87
    return-void
.end method

.method public longClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "longClicked"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 52
    return-void
.end method

.method public openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 7

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "userbehavor"

    const-class v3, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    const-string/jumbo v6, "openPage"

    invoke-virtual {v5, v6, p1}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 47
    return-void
.end method

.method public slide(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "slided"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 62
    return-void
.end method

.method public submit(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "submited"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 57
    return-void
.end method
