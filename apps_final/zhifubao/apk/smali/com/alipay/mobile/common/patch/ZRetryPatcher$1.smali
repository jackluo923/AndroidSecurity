.class Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;
.super Ljava/lang/Object;
.source "ZRetryPatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    const/4 v0, 0x1

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->verifyPatchBeforeApply()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->delPatcherFile()V

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$000(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$100(Lcom/alipay/mobile/common/patch/ZRetryPatcher;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 81
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string/jumbo v1, "ZRetryPatcher"

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogStart(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mOldFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v2, v2, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v3, v3, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFilePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/dodola/patcher/utils/AppUtils;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 67
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->delPatcherFile()V

    .line 68
    if-nez v0, :cond_2

    .line 69
    const-string/jumbo v0, "ZRetryPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogSuccess(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$200(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string/jumbo v0, "ZRetryPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Success(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "ZRetryPatcher"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 74
    :cond_1
    const-string/jumbo v0, "ZRetryPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Fail(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;
    invoke-static {v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$000(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$100(Lcom/alipay/mobile/common/patch/ZRetryPatcher;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    goto :goto_0

    .line 78
    :cond_2
    const-string/jumbo v0, "ZRetryPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogFail(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    # getter for: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;
    invoke-static {v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$000(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->access$100(Lcom/alipay/mobile/common/patch/ZRetryPatcher;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    goto :goto_0
.end method
