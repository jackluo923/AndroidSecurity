.class Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$1;
.super Ljava/lang/Object;
.source "StandardPipeline.java"

# interfaces
.implements Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$1;->this$0:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scheduleNext()V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "StandardPipeline"

    const-string/jumbo v1, "StandardPipeline.scheduleNext()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$1;->this$0:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->mIsStart:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$1;->this$0:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;

    # invokes: Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;->access$000(Lcom/alipay/mobile/common/task/pipeline/StandardPipeline;)V

    .line 49
    :cond_0
    return-void
.end method
