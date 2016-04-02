.class public Lcom/alipay/mobile/framework/service/common/impl/FilePatcherServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/FilePatcherService;
.source "FilePatcherServiceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/FilePatcherService;-><init>()V

    return-void
.end method


# virtual methods
.method public doPatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V
    .locals 8

    .prologue
    .line 28
    new-instance v0, Lcom/alipay/mobile/common/patch/ZPatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/patch/ZPatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V

    .line 30
    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->startPatch()V

    .line 31
    return-void
.end method

.method public doPatch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V
    .locals 9

    .prologue
    .line 49
    new-instance v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V

    .line 51
    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->startPatch()V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 66
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/mobile/common/patch/BasePatcher;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
