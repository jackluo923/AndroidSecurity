.class final Lcom/alipay/android/launcher/a;
.super Ljava/lang/Object;
.source "StartupRuler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/a;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Pipeline"

    const-string/jumbo v2, "PIPELINE_IDLE  : start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/android/launcher/a;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "com.alipay.mobile.PORTAL_IDLE"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 97
    const/4 v0, 0x0

    return v0
.end method
