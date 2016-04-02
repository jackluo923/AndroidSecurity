.class Lcom/alipay/mobile/hotpatch/Hotpatch$HotpatchBundleObserver;
.super Ljava/lang/Object;
.source "Hotpatch.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/hotpatch/Hotpatch$1;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/alipay/mobile/hotpatch/Hotpatch$HotpatchBundleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onBundleLoad(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 182
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBundleLoad: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    # getter for: Lcom/alipay/mobile/hotpatch/Hotpatch;->a:Landroid/app/Application;
    invoke-static {}, Lcom/alipay/mobile/hotpatch/Hotpatch;->access$100()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/taobao/hotpatch/patch/PatchMain;->loadBundlePatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v0

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Hotpatch"

    const-string/jumbo v3, "Bundle:%s\u52a0\u8f7dpatch\u7ed3\u679c, ret:%s, code:%s, info:%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrocode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrorInfo()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onBundleUnload(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBundleUnload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method
