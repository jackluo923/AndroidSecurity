.class final Lcom/taobao/hotpatch/patch/a;
.super Ljava/lang/Object;
.source "PatchCallback.java"


# instance fields
.field private final a:Lcom/taobao/hotpatch/patch/IPatch;


# direct methods
.method protected constructor <init>(Lcom/taobao/hotpatch/patch/IPatch;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/taobao/hotpatch/patch/a;->a:Lcom/taobao/hotpatch/patch/IPatch;

    .line 19
    return-void
.end method

.method protected static final a(Lcom/taobao/hotpatch/patch/PatchParam;)Lcom/taobao/hotpatch/patch/PatchResult;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 22
    move v5, v3

    move-object v2, v0

    move-object v1, v0

    move v4, v6

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/taobao/hotpatch/patch/PatchParam;->callbacks:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v5, v0, :cond_1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/taobao/hotpatch/patch/PatchParam;->callbacks:[Ljava/lang/Object;

    aget-object v0, v0, v5

    check-cast v0, Lcom/taobao/hotpatch/patch/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    iget-object v2, v0, Lcom/taobao/hotpatch/patch/a;->a:Lcom/taobao/hotpatch/patch/IPatch;

    invoke-interface {v2, p0}, Lcom/taobao/hotpatch/patch/IPatch;->handlePatch(Lcom/taobao/hotpatch/patch/PatchParam;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 25
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    move-object v2, v0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 31
    :goto_2
    if-nez v1, :cond_0

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v0

    .line 34
    :cond_0
    iget-object v0, v2, Lcom/taobao/hotpatch/patch/a;->a:Lcom/taobao/hotpatch/patch/IPatch;

    check-cast v0, Lcom/alipay/mobile/hotpatch/IAlipayPatch;

    invoke-interface {v0}, Lcom/alipay/mobile/hotpatch/IAlipayPatch;->className()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    const-string/jumbo v0, "PatchCallback"

    invoke-static {v0, v7}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    move v2, v4

    goto :goto_1

    .line 38
    :cond_1
    if-eqz v4, :cond_2

    .line 39
    invoke-static {v4, p0, v1}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logLoadPatchCallback(ZLcom/taobao/hotpatch/patch/PatchParam;Ljava/util/List;)V

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PatchCallback"

    const-string/jumbo v2, "All patch classes excute failed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v1, Lcom/taobao/hotpatch/patch/PatchResult;->ALL_PATCH_FAILED:I

    const-string/jumbo v2, "All patch classes excute failed"

    invoke-direct {v0, v6, v1, v2}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    .line 43
    :goto_3
    return-object v0

    :cond_2
    new-instance v0, Lcom/taobao/hotpatch/patch/PatchResult;

    sget v1, Lcom/taobao/hotpatch/patch/PatchResult;->NO_ERROR:I

    const-string/jumbo v2, ""

    invoke-direct {v0, v6, v1, v2}, Lcom/taobao/hotpatch/patch/PatchResult;-><init>(ZILjava/lang/String;)V

    goto :goto_3

    .line 30
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    goto :goto_2
.end method
