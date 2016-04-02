.class public Lcom/alipay/mobile/common/logging/render/ExceptionRender;
.super Lcom/alipay/mobile/common/logging/render/BaseRender;
.source "ExceptionRender.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/render/BaseRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string/jumbo v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v1, "4"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, "exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "appID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {v0, p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "refViewID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "viewID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "actionID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "actionToken"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {v0, p3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
