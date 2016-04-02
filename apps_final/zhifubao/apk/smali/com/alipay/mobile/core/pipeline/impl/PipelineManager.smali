.class public Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;
.super Ljava/lang/Object;
.source "PipelineManager.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/pipeline/Pipeline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public addValve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;I)V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 43
    invoke-interface {v0, p3, p2, p4}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/Pipeline;

    .line 31
    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    new-instance v1, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-direct {v1, p1}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;-><init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;)V

    .line 33
    invoke-static {}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 34
    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-object v0
.end method
