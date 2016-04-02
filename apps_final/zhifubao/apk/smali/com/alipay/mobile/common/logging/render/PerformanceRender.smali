.class public Lcom/alipay/mobile/common/logging/render/PerformanceRender;
.super Lcom/alipay/mobile/common/logging/render/BaseRender;
.source "PerformanceRender.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/render/BaseRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string/jumbo v1, "D-MM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "actionID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "actionToken"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    const-string/jumbo v2, "actionDesc"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {v0, p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v0, p3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v0, p4}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {v0, p5}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {v0, p6}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v1, "android"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a()Lcom/alipay/mobile/common/logging/ContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
