.class Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;
.super Ljava/lang/Object;
.source "PipelineManager.java"

# interfaces
.implements Lcom/alipay/mobile/framework/pipeline/Pipeline;


# instance fields
.field mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

.field final synthetic this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    .line 52
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public next()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->next()V

    .line 72
    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 56
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->start()V

    .line 68
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->stop()V

    .line 76
    return-void
.end method
