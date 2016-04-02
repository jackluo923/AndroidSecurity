.class public Lcom/alipay/android/app/template/TemplateSyncBridge;
.super Ljava/lang/Object;
.source "TemplateSyncBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 12
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/template/TemplateSync;->a()Lcom/alipay/android/app/template/TemplateSync;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "public-template"

    const-string/jumbo v2, "pipe line excuted"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/alipay/android/app/template/TemplateSync;->a()Lcom/alipay/android/app/template/TemplateSync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateSync;->b()V

    .line 14
    return-void
.end method
