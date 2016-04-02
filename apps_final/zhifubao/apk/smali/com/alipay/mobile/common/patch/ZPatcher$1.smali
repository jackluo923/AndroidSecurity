.class Lcom/alipay/mobile/common/patch/ZPatcher$1;
.super Ljava/lang/Object;
.source "ZPatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/patch/ZPatcher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/patch/ZPatcher;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x1

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->verifyPatchBeforeApply()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->delPatcherFile()V

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 74
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string/jumbo v1, "ZPatcher"

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogStart(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/ZPatcher;->mOldFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    iget-object v2, v2, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    iget-object v3, v3, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFilePath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/dodola/patcher/utils/AppUtils;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->delPatcherFile()V

    .line 67
    if-nez v0, :cond_1

    .line 68
    const-string/jumbo v0, "ZPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogSuccess(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->access$000(Lcom/alipay/mobile/common/patch/ZPatcher;)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "ZPatcher"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 71
    :cond_1
    const-string/jumbo v0, "ZPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogFail(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher$1;->this$0:Lcom/alipay/mobile/common/patch/ZPatcher;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    goto :goto_0
.end method
