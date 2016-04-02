.class public Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ChatLoadPipeline;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 790
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u7a7a\u4f1a\u8bdd\u542f\u52a8pipeline"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-static {}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a()Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    invoke-static {}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a()Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->loadEmptyChatApp()V

    .line 794
    :cond_0
    return-void
.end method
