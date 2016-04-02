.class public Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$SdkLoadPipeline;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 780
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "sdk\u542f\u52a8pipeline"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-static {}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a()Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    invoke-static {}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a()Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    .line 784
    :cond_0
    return-void
.end method
